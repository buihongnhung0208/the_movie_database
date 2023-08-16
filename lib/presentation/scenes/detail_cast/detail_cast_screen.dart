import 'package:base_scaffold/base_scaffold.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/common/card_item.dart';
import 'package:the_movie_database/presentation/common/short_info_view.dart';
import 'package:the_movie_database/presentation/scenes/home/bloc/home_cubit.dart';
import 'package:the_movie_database/resources/colors.dart';
import 'package:the_movie_database/resources/dimens.dart';
import 'package:the_movie_database/resources/resources.dart';

class DetailCastScreen extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetail;

  const DetailCastScreen({super.key, this.navigateToDetail});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: _DetailCastScreenBody(navigateToDetail: navigateToDetail),
    );
  }
}

class _DetailCastScreenBody extends StatefulWidget {
  final void Function(BuildContext, String)? navigateToDetail;

  const _DetailCastScreenBody({this.navigateToDetail});

  @override
  State<_DetailCastScreenBody> createState() => _DetailCastScreenBodyState();
}

class _DetailCastScreenBodyState extends State<_DetailCastScreenBody> {
  late List<String> banners =["https://www.themoviedb.org/t/p/original/tvPPRGzAzdQFhlKzLbMO1EpuTJI.jpg","https://www.themoviedb.org/t/p/original/dMbd2Rx9ZD5Gl9VXAkGcIKGrAxJ.jpg"];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      toolbar: AppBar(
        title: Text(
          "Emma Watson",
          style: CoreResources.textStyles.inter.extraLargeTextBold.copyWith(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.f042541,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: AppColors.f042541,
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
                        aspectRatio: 16 / 9,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                        }),
                    disableGesture: true,
                    itemCount: banners.length,
                    itemBuilder: (context, index, realIndex) {
                      return GestureDetector(
                        onTap: () {

                        },
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(Dimens.size_8).r,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(Dimens.size_8).r,
                            child: CachedNetworkImage(
                              imageUrl: banners[index],
                              width: Dimens.size_358.w,
                              height: Dimens.size_166.w,
                              fit: BoxFit.cover,
                              maxHeightDiskCache: Dimens.size_498.w.toInt(),
                              maxWidthDiskCache: 1074.w.toInt(),
                              memCacheHeight: Dimens.size_498.w.toInt(),
                              memCacheWidth: 1074.w.toInt(),

                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Dimens.size_10.verticalSpace,
                  Text(
                    "Biography",
                    style: CoreResources.textStyles.inter.mediumTextBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Emma Charlotte Duerre Watson (born 15 April 1990) is an English actress and activist. She has gained recognition for her roles in both blockbusters and independent films, as well as her women's rights work. Watson has been ranked among the world's highest-paid actresses by Forbes and Vanity Fair, and was named one of the 100 most influential people in the world by Time magazine in 2015",
                    style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Dimens.size_10.verticalSpace,
                  _knownFor(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _knownFor() {
    return ListHomeView(
      padding: 0,
      title: Text(
        "Known For",
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
}
