import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/di/assembler.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';

import 'bloc/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToList;
  final void Function(BuildContext, String) navigateToDetail;
  final void Function(BuildContext) navigateToSearch;

  const HomeScreen({
    super.key,
    this.navigateToList,
    required this.navigateToDetail,
    required this.navigateToSearch,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(
        assembler.get(),
      )..getData(),
      child: _NewHomeScreenBody(
        navigateToList: navigateToList,
        navigateToDetail: navigateToDetail,
        navigateToSearch: navigateToSearch,
      ),
    );
  }
}

class _NewHomeScreenBody extends StatefulWidget {
  const _NewHomeScreenBody({
    this.navigateToList,
    required this.navigateToDetail,
    required this.navigateToSearch,
  });

  final void Function(BuildContext, String)? navigateToList;
  final void Function(BuildContext, String) navigateToDetail;
  final void Function(BuildContext) navigateToSearch;

  @override
  State<_NewHomeScreenBody> createState() => _NewHomeScreenBodyState();
}

class _NewHomeScreenBodyState extends State<_NewHomeScreenBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return BaseScaffold(
          scaffoldBackgroundColor: AppColors.ff042541,
          toolbar: AppBar(
            centerTitle: true,
            backgroundColor: AppColors.ff042541,
            title: Text(
              CoreResources.strings.home,
              style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
                color: Colors.white,
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: CoreResources.strings.search,
                onPressed: () {
                  widget.navigateToSearch.call(context);
                },
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: Dimens.size_12.w),
              ),
            ],
          ),
          body: SafeArea(
            child: Container(
              color: AppColors.ff042541,
              // width: ,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    _listMovies(
                      CoreResources.strings.popular,
                      state.listPopular,
                      state.isLoading,
                    ),
                    Dimens.size_16.verticalSpace,
                    _listMovies(
                      CoreResources.strings.top_rated,
                      state.listTopRated,
                      state.isLoadingTopRated,
                    ),
                    Dimens.size_16.verticalSpace,
                    _listMovies(
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

  Widget _listMovies(String title, List<MovieResponseObject> list, bool isLoading) {
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
                    (item) => Container(
                        margin: const EdgeInsets.all(Dimens.size_4),
                        child: CardItem(navigateToDetail: widget.navigateToDetail, item: item)),
                  ),
                  Dimens.size_8.verticalSpace,
                ],
              ),
            ),
          );
  }
}
