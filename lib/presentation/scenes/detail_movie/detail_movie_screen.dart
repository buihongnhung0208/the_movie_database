import 'package:base_scaffold/base_scaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/di/assembler.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/utils/utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'bloc/detail_movie_cubit.dart';

class DetailMovieScreen extends StatelessWidget {
  final String id;
  final void Function(BuildContext, String)? navigateToDetail;
  final void Function(BuildContext, String)? navigateToDetailCast;

  const DetailMovieScreen({
    super.key,
    required this.id,
    this.navigateToDetail,
    this.navigateToDetailCast,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => DetailMovieCubit(
        assembler.get(),
        assembler.get(),
      )..getData(id),
      child: _DetailMovieScreenBody(
        id: id,
        navigateToDetail: navigateToDetail,
        navigateToDetailCast: navigateToDetailCast,
      ),
    );
  }
}

class _DetailMovieScreenBody extends StatefulWidget {
  final String id;
  final void Function(BuildContext, String)? navigateToDetail;
  final void Function(BuildContext, String)? navigateToDetailCast;

  const _DetailMovieScreenBody({
    required this.id,
    this.navigateToDetail,
    this.navigateToDetailCast,
  });

  @override
  State<_DetailMovieScreenBody> createState() => _DetailMovieScreenBodyState();
}

class _DetailMovieScreenBodyState extends State<_DetailMovieScreenBody> {
  late YoutubePlayerController _youtubePlayerController;

  @override
  void initState() {
    SystemChrome.setPreferredOrientations(DeviceOrientation.values);
    final videoId = YoutubePlayer.convertUrlToId("https://youtu.be/VyHV0BRtdxo");
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: videoId ?? '',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        disableDragSeek: true,
        loop: false,
        enableCaption: false,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      toolbar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.ff042541,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: BlocBuilder<DetailMovieCubit, DetailMovieState>(
            builder: (context, state) {
              return Container(
                color: AppColors.ff042541,
                width: double.infinity,
                // height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.all(Dimens.size_8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        state.detailMovie.title,
                        style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Dimens.size_20.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(Dimens.size_20.r),
                            child: CachedNetworkImage(
                              width: Dimens.size_150.w,
                              height: Dimens.size_230.h,
                              imageUrl: Utils.generateImageUrl(state.detailMovie.posterPath),
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                              ),
                            ),
                          ),
                          Dimens.size_10.horizontalSpace,
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.detailMovie.genres.map((e) => e.name).join(", "),
                                  style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Dimens.size_10.verticalSpace,
                                Row(
                                  children: [
                                    Container(
                                      width: Dimens.size_40.w,
                                      height: Dimens.size_40.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: AppColors.ff21d07a,
                                            width: Dimens.size_2.w,
                                          )),
                                      child: Center(
                                        child: Text(
                                          state.detailMovie.voteAverage
                                              .toStringAsFixed(1)
                                              .toString(),
                                          style: CoreResources.textStyles.inter.mediumTextBold
                                              .copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Dimens.size_10.horizontalSpace,
                                    Container(
                                      width: Dimens.size_35.w,
                                      height: Dimens.size_35.w,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: AppColors.ff21d07a,
                                        width: Dimens.size_2.w,
                                      )),
                                      child: Center(
                                        child: Text(
                                          state.detailMovie.originalLanguage.toUpperCase(),
                                          style: CoreResources.textStyles.inter.mediumTextBold
                                              .copyWith(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Dimens.size_10.verticalSpace,
                                Text(
                                  CoreResources.strings.status,
                                  style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  state.detailMovie.status,
                                  style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                    color: AppColors.ff21d07a,
                                  ),
                                ),
                                Dimens.size_10.verticalSpace,
                                Text(
                                  CoreResources.strings.revenue,
                                  style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  state.detailMovie.revenue.toString(),
                                  style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                    color: AppColors.ff21d07a,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        CoreResources.strings.originalTitle,
                        style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        state.detailMovie.originalTitle,
                        style: CoreResources.textStyles.inter.smallTextBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Dimens.size_10.verticalSpace,
                      Text(
                        CoreResources.strings.overview,
                        style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        state.detailMovie.overview,
                        style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      state.detailMovie.video
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Dimens.size_10.verticalSpace,
                                Text(
                                  CoreResources.strings.trailers,
                                  style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                                    color: Colors.white,
                                  ),
                                ),
                                Dimens.size_5.verticalSpace,
                                YoutubePlayer(
                                  controller: _youtubePlayerController,
                                  showVideoProgressIndicator: true,
                                  progressIndicatorColor: Colors.blueAccent,
                                  topActions: <Widget>[
                                    const SizedBox(width: 8.0),
                                    Expanded(
                                      child: Text(
                                        _youtubePlayerController.metadata.title,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          : Container(),
                      Dimens.size_10.verticalSpace,
                      _topBilledCast(),
                      Dimens.size_10.verticalSpace,
                      _recommendations(state.listRecommendations),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _topBilledCast() {
    return ListHomeView(
      padding: Dimens.size_0,
      title: Text(
        CoreResources.strings.topBilledCast,
        style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
          color: Colors.white,
        ),
      ),
      button: Container(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: EdgeInsets.only(top: Dimens.size_5.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Dimens.size_8.horizontalSpace,
              castItem(),
              Dimens.size_8.horizontalSpace,
              castItem(),
              Dimens.size_8.horizontalSpace,
              castItem(),
              Dimens.size_8.horizontalSpace,
              castItem(),
            ],
          ),
        ),
      ),
    );
  }

  Widget castItem() {
    return GestureDetector(
      onTap: () {
        widget.navigateToDetailCast?.call(context, "1");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(Dimens.size_10.r),
                topLeft: Radius.circular(Dimens.size_10.r),
              ),
              child: CachedNetworkImage(
                width: Dimens.size_120.w,
                // height: Dimens.size_180.h,
                imageUrl:
                    'https://www.themoviedb.org/t/p/w188_and_h282_bestv2/9Mi8yPrkA0EefbVyE0CHs8tajsg.jpg',
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              ),
            ),
            Dimens.size_5.verticalSpace,
            Text(
              "Daniel Radcliffe",
              style: CoreResources.textStyles.inter.extraSmallTextMedium.copyWith(
                color: Colors.black,
              ),
            ),
            Text(
              "Harry Potter",
              style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                color: Colors.grey,
              ),
            ),
            Dimens.size_5.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _recommendations(list) {
    return ListHomeView(
      padding: 0,
      title: Text(
        CoreResources.strings.recommendations,
        style: CoreResources.textStyles.inter.largeTextMedium.copyWith(
          color: Colors.white,
        ),
      ),
      button: Container(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Dimens.size_8.horizontalSpace,
            ...list.map(
              (item) => CardItem(navigateToDetail: widget.navigateToDetail, item: item),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void deactivate() {
    _youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }
}
