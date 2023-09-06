import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/input_field.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';

import 'bloc/search_cubit.dart';

class SearchScreen extends StatelessWidget {
  final void Function(BuildContext, String) navigateToDetail;

  SearchScreen({
    super.key,
    required this.navigateToDetail,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: _SearchScreenBody(
        navigateToDetail: navigateToDetail,
      ),
    );
  }
}

class _SearchScreenBody extends StatefulWidget {
  final void Function(BuildContext, String) navigateToDetail;

  _SearchScreenBody({
    required this.navigateToDetail,
  });

  @override
  State<_SearchScreenBody> createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<_SearchScreenBody> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.extentAfter < Dimens.size_50) {
        context.read<SearchCubit>().setLoadMore();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      toolbar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.ff042541,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          CoreResources.strings.search,
          style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.ff042541,
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: Dimens.size_4.h, horizontal: Dimens.size_16.w),
                    child: InputField(
                      hint: 'Nhập từ khóa để tìm kiếm',
                      prefixIcon: const Icon(Icons.search),
                      isErrorBoxShown: false,
                      onChanged: (text) {
                        // context.read<VideoListingCubit>().searchVideos(text);
                      },
                    ),
                  ),
                  Dimens.size_8.verticalSpace,
                  Expanded(
                    child: RefreshIndicator(
                      color: Colors.white,
                      onRefresh: () async {
                        context.read<SearchCubit>().refreshList();
                      },
                      child: GridView.builder(
                        physics: const AlwaysScrollableScrollPhysics(),
                        controller: scrollController,
                        itemCount: state.listMovies.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.8,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return CardItem(
                            navigateToDetail: widget.navigateToDetail,
                            item: state.listMovies[index],
                          );
                        },
                      ),
                    ),
                  ),
                  Dimens.size_8.verticalSpace,
                  state.isLoading ? const Center(child: CircularProgressIndicator()) : Container(),
                  Dimens.size_16.verticalSpace,
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
