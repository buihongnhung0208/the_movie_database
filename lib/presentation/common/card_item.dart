import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/model/movie_response_object/movie_response_object.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/utils/utils.dart';

class CardItem extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetail;
  final MovieResponseObject item;

  const CardItem({
    super.key,
    this.navigateToDetail,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToDetail?.call(
          context,
          item.id.toString(),
        );
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
                  imageUrl: Utils.generateImageUrl(item.posterPath),
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => const Icon(
                    Icons.error,
                  ),
                ),
              ),
              Dimens.size_8.verticalSpace,
              Text(
                item.title,
                style: CoreResources.textStyles.inter.extraSmallTextMedium.copyWith(
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Dimens.size_8.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
