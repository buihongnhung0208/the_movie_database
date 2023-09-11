import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/di/assembler.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/common/snack_bar.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'bloc/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToList;
  final void Function(BuildContext, String) navigateToDetail;

  const HomeScreen({
    super.key,
    this.navigateToList,
    required this.navigateToDetail,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        assembler.get(),
      )..getData(),
      child: Builder(
        builder: (context) => BlocListener<HomeCubit, HomeState>(
          listener: (context, state) {
            if (state.error.isNotEmpty) {
              showTopSnackBar(
                Overlay.of(context),
                CustomSnackBar.error(
                  icon: Icon(
                    CupertinoIcons.xmark_circle,
                    size: Dimens.size_24.r,
                    color: AppColors.ff042541,
                  ),
                  message: Text(
                    state.error,
                    style: CoreResources.textStyles.inter.mediumTextRegular.copyWith(
                      color: AppColors.ff042541,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              );
            }
          },
          child: _NewHomeScreenBody(
            navigateToList: navigateToList,
            navigateToDetail: navigateToDetail,
          ),
        ),
      ),
    );
  }
}

class _NewHomeScreenBody extends StatefulWidget {
  const _NewHomeScreenBody({
    this.navigateToList,
    required this.navigateToDetail,
  });

  final void Function(BuildContext, String)? navigateToList;
  final void Function(BuildContext, String) navigateToDetail;

  @override
  State<_NewHomeScreenBody> createState() => _NewHomeScreenBodyState();
}

class _NewHomeScreenBodyState extends State<_NewHomeScreenBody> {
  void _getHomeData() {}

  @override
  void initState() {
    super.initState();
    _getHomeData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BaseScaffold(
          toolbar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.ff042541,
            title: Text(
              CoreResources.strings.home,
              style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          body: SafeArea(
            child: Container(
              color: AppColors.ff042541,
              // width: ,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _listMovie(
                      CoreResources.strings.popular,
                      state.listPopular,
                      state.isLoading,
                    ),
                    Dimens.size_16.verticalSpace,
                    _listMovie(
                      CoreResources.strings.top_rated,
                      state.listTopRated,
                      state.isLoadingTopRated,
                    ),
                    Dimens.size_16.verticalSpace,
                    _listMovie(
                      CoreResources.strings.upcoming,
                      state.listUpcoming,
                      state.isLoadingUpcoming,
                    ),
                    Dimens.size_16.verticalSpace
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _listMovie(String title, List<MovieResponseObject> list, bool isLoading) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : ListHomeView(
            title: Text(
              title,
              style: CoreResources.textStyles.inter.largeTextMedium.copyWith(
                color: Colors.white,
              ),
            ),
            button: GestureDetector(
              onTap: () {
                widget.navigateToList?.call(context, title);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    CoreResources.strings.all,
                    style: CoreResources.textStyles.inter.smallTextMedium.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Dimens.size_4.horizontalSpace,
                ],
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Dimens.size_16.horizontalSpace,
                  ...list.map(
                    (item) => CardItem(navigateToDetail: widget.navigateToDetail, item: item),
                  ),
                  Dimens.size_8.verticalSpace,
                ],
              ),
            ),
          );
  }
}
