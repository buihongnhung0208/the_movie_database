import 'package:base_scaffold/base_scaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/di/assembler.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/generated/colors.gen.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/utils/utils.dart';

import 'bloc/detail_cast_cubit.dart';

class DetailCastScreen extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetail;
  final PersonResponseObject person;

  const DetailCastScreen({
    super.key,
    this.navigateToDetail,
    required this.person,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailCastCubit(
        assembler.get(),
      )..getData(person.id.toString()),
      child: _DetailCastScreenBody(
        navigateToDetail: navigateToDetail,
        person: person,
      ),
    );
  }
}

class _DetailCastScreenBody extends StatefulWidget {
  final void Function(BuildContext, String)? navigateToDetail;
  final PersonResponseObject person;

  const _DetailCastScreenBody({this.navigateToDetail, required this.person});

  @override
  State<_DetailCastScreenBody> createState() => _DetailCastScreenBodyState();
}

class _DetailCastScreenBodyState extends State<_DetailCastScreenBody> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailCastCubit, DetailCastState>(
      builder: (context, state) {
        final List<String> banners = [Utils.generateImageUrl(widget.person.profilePath)];
        return BaseScaffold(
          scaffoldBackgroundColor: AppColors.ff042541,
          toolbar: AppBar(
            title: Text(
              widget.person.name,
              style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: AppColors.ff042541,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Container(
                color: AppColors.ff042541,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(Dimens.size_8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                            autoPlay: banners.length != 1,
                            autoPlayInterval: const Duration(seconds: 2),
                            enlargeCenterPage: true,
                            // aspectRatio: 16 / 9,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {}),
                        disableGesture: true,
                        itemCount: banners.length,
                        itemBuilder: (context, index, realIndex) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(Dimens.size_8).r,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(Dimens.size_8).r,
                                child: CachedNetworkImage(
                                  imageUrl: banners[index],
                                  width: double.infinity,
                                  // height: Dimens.size_166.w,
                                  fit: BoxFit.contain,
                                  // maxHeightDiskCache: Dimens.size_498.w.toInt(),
                                  // maxWidthDiskCache: 1074.w.toInt(),
                                  // memCacheHeight: Dimens.size_498.w.toInt(),
                                  // memCacheWidth: 1074.w.toInt(),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      Dimens.size_10.verticalSpace,
                      if (state.detailCast.biography.isNotEmpty)
                        Text(
                          CoreResources.strings.biography,
                          style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      Text(
                        state.detailCast.biography,
                        style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                          color: Colors.white,
                        ),
                      ),
                      Dimens.size_10.verticalSpace,
                      _knownFor(widget.person.knownFor),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _knownFor(List<MovieResponseObject> list) {
    return ListHomeView(
      padding: 0,
      title: Text(
        CoreResources.strings.known_for,
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
}
