import 'package:base_scaffold/base_scaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/scenes/home/bloc/home_cubit.dart';
import 'package:the_movie_database/resources/colors.dart';
import 'package:the_movie_database/resources/dimens.dart';
import 'package:the_movie_database/resources/resources.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailMovieScreen extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetail;
  final void Function(BuildContext, String)? navigateToDetailCast;
  final void Function(BuildContext context, String id, String url, String? title)?
      navigateToWebView;

  const DetailMovieScreen({
    super.key,
    this.navigateToDetail,
    this.navigateToDetailCast,
    this.navigateToWebView,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: _DetailMovieScreenBody(
        navigateToDetail: navigateToDetail,
        navigateToDetailCast: navigateToDetailCast,
        navigateToWebView: navigateToWebView,
      ),
    );
  }
}

class _DetailMovieScreenBody extends StatefulWidget {
  final void Function(BuildContext, String)? navigateToDetail;
  final void Function(BuildContext, String)? navigateToDetailCast;
  final void Function(BuildContext context, String id, String url, String? title)?
      navigateToWebView;

  const _DetailMovieScreenBody({
    this.navigateToDetail,
    this.navigateToDetailCast,
    this.navigateToWebView,
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
        backgroundColor: AppColors.f042541,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.f042541,
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(Dimens.size_8.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter và Hòn Đá Phù Thủy",
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
                      Dimens.size_10.horizontalSpace,
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "2001, GB, US, Adventure, Fantasy",
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
                                        color: AppColors.f21D07A,
                                        width: Dimens.size_2.w,
                                      )),
                                  child: Center(
                                    child: Text(
                                    "7.9",
                                      style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
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
                                    color: AppColors.f21D07A,
                                    width: Dimens.size_2.w,
                                  )),
                                  child: Center(
                                    child: Text(
                                      "EN",
                                      style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Dimens.size_10.verticalSpace,
                            Text(
                              "Status",
                              style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Released",
                              style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                color: AppColors.f21D07A,
                              ),
                            ),
                            Dimens.size_10.verticalSpace,
                            Text(
                              "Revenue",
                              style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "683,241,751.00",
                              style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                                color: AppColors.f21D07A,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Original Title",
                    style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Harry Potter and the Philosopher's Stone",
                    style: CoreResources.textStyles.inter.smallTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Dimens.size_10.verticalSpace,
                  Text(
                    "Overview",
                    style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Harry Potter và Hòn Đá Phù Thủy là bộ phim đầu tiên trong series phim “Harry Potter” được xây dựng dựa trên tiểu thuyết của nhà văn J.K.Rowling. Nhân vật chính của phim, Harry Potter - một cậu bé 11 tuổi sau khi mồ côi cha mẹ đã bị gửi đến nhà dì dượng của mình, gia đình Dursley. Cùng với trí thông minh và lòng dũng cảm, cậu bé đã cùng những người bạn của mình khám phá những điều bí mật nguy hiểm về thế giới của phép thuật...",
                    style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Dimens.size_10.verticalSpace,
                  Text(
                    "Trailers",
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
                  Dimens.size_10.verticalSpace,
                  _topBilledCast(),
                  Dimens.size_10.verticalSpace,
                  _recommendations(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _topBilledCast() {
    return ListHomeView(
      padding: Dimens.size_0,
      title: Text(
        "Top Billed Cast",
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

  Widget _recommendations() {
    return ListHomeView(
      padding: 0,
      title: Text(
        "Recommendations",
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
            CardItem(navigateToDetail: widget.navigateToDetail),
            CardItem(navigateToDetail: widget.navigateToDetail),
            CardItem(navigateToDetail: widget.navigateToDetail),
            CardItem(navigateToDetail: widget.navigateToDetail),
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
