import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/resources/colors.dart';
import 'package:the_movie_database/resources/dimens.dart';
import 'package:the_movie_database/resources/resources.dart';

import 'bloc/home_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const _NewHomeScreenBody(),
    );
  }
}

class _NewHomeScreenBody extends StatefulWidget {
  const _NewHomeScreenBody();

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
    return BaseScaffold(
      toolbar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.f042541,
        title: Text(
          "Home",
          style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.f042541,
          // width: ,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                _listMovie(
                  'Popular',
                  [0, 1, 2, 3, 4, 5],
                ),
                Dimens.size_16.verticalSpace,
                _listMovie(
                  'Top rated',
                  [0, 1, 2, 3, 4, 5],
                ),
                Dimens.size_16.verticalSpace,
                _listMovie(
                  'Upcoming',
                  [0, 1, 2, 3, 4, 5],
                ),
                Dimens.size_16.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _listMovie(String title, List<dynamic> list) {
    return ListHomeView(
      title: Text(
        title,
        style: CoreResources.textStyles.inter.largeTextMedium.copyWith(
          color: Colors.white,
        ),
      ),
      button: GestureDetector(
        onTap: () {
          context.go('/popular');
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "All",
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
            Dimens.size_8.horizontalSpace,
            ...list.map(
              (item) => const CardItem(),
            ),
          ],
        ),
      ),
    );
  }
}
