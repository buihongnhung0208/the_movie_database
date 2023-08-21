import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/presentation/scenes/home/bloc/home_cubit.dart';

class ListMovieScreen extends StatelessWidget {
  final void Function(BuildContext, String) navigateToDetail;
  const ListMovieScreen({super.key, required this.navigateToDetail});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: _ListMovieScreenBody(navigateToDetail: navigateToDetail),
    );
  }
}

class _ListMovieScreenBody extends StatefulWidget {
  final void Function(BuildContext, String) navigateToDetail;

  const _ListMovieScreenBody({required this.navigateToDetail});

  @override
  State<_ListMovieScreenBody> createState() => _ListMovieScreenBodyState();
}

class _ListMovieScreenBodyState extends State<_ListMovieScreenBody> {
  final _pagingController = PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      toolbar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.ff042541,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          CoreResources.strings.popular,
          style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.ff042541,
          // width: ,
          child: Container(
            color: AppColors.ff042541,
            child: PagedListView(
              pagingController: _pagingController,
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              builderDelegate: PagedChildBuilderDelegate(
                animateTransitions: true,
                firstPageProgressIndicatorBuilder: (context) => Container(),
                newPageErrorIndicatorBuilder: (context) => Container(),
                newPageProgressIndicatorBuilder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
                noItemsFoundIndicatorBuilder: (context) => Container(),
                itemBuilder: (context, item, index) =>
                    CardItem(navigateToDetail: widget.navigateToDetail),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
