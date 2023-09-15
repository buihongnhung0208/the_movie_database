import 'package:base_scaffold/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/di/assembler.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';

import 'bloc/list_movie_cubit.dart';

class ListMovieScreen extends StatelessWidget {
  String? title;
  final void Function(BuildContext, String) navigateToDetail;

  ListMovieScreen({
    super.key,
    required this.navigateToDetail,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListMovieCubit(
        assembler.get(),
      )..getData(title ?? ""),
      child: _ListMovieScreenBody(
        navigateToDetail: navigateToDetail,
        title: title,
      ),
    );
  }
}

class _ListMovieScreenBody extends StatefulWidget {
  final void Function(BuildContext, String) navigateToDetail;
  String? title;

  _ListMovieScreenBody({
    required this.navigateToDetail,
    this.title,
  });

  @override
  State<_ListMovieScreenBody> createState() => _ListMovieScreenBodyState();
}

class _ListMovieScreenBodyState extends State<_ListMovieScreenBody> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      if (scrollController.position.extentAfter < Dimens.size_50) {
        context.read<ListMovieCubit>().setLoadMore(widget.title);
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
          widget.title ?? "",
          style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: AppColors.ff042541,
          child: BlocBuilder<ListMovieCubit, ListMovieState>(
            builder: (context, state) {
              return Column(
                children: [
                  Dimens.size_8.verticalSpace,
                  Expanded(
                    child: RefreshIndicator(
                      color: Colors.white,
                      onRefresh: () async {
                        context.read<ListMovieCubit>().refreshList(widget.title);
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
