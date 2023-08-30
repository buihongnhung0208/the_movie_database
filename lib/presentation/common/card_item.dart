import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';


class CardItem extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetail;

  const CardItem({
    super.key,
    this.navigateToDetail,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToDetail?.call(context, "1");
      },
      child: SizedBox(
        width: Dimens.size_120.w,
        child: Padding(
          padding: EdgeInsets.all(Dimens.size_2.w),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Dimens.size_15.r),
                child: CachedNetworkImage(
                  width: Dimens.size_120.w,
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
              Text(
                "Harry Potter và Hòn Đá Phù Thủy",
                style: CoreResources.textStyles.inter.extraSmallTextMedium.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
