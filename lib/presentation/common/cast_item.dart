import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/model/person_response_object/person_response_object.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';
import 'package:the_movie_database/presentation/resources/resources.dart';
import 'package:the_movie_database/utils/utils.dart';

import 'cached_network_image_wrapper.dart';

class CastItem extends StatelessWidget {
  final void Function(BuildContext, String)? navigateToDetailCast;
  final PersonResponseObject item;

  const CastItem({
    super.key,
    this.navigateToDetailCast,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToDetailCast?.call(context, "1");
      },
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular( Dimens.size_10.r),
            child: Container(
              constraints: BoxConstraints(
                minHeight: Dimens.size_173.h,
              ),
              child: CachedNetworkImageWrapper(
                width: Dimens.size_120.w,
                // height: Dimens.size_180.h,
                imageUrl: Utils.generateImageUrl(item.profilePath),
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              ),
            ),
          ),
          Dimens.size_5.verticalSpace,
          Text(
            item.name,
            style: CoreResources.textStyles.inter.extraSmallTextMedium.copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            item.originalName,
            style: CoreResources.textStyles.inter.smallTextRegular.copyWith(
              color: Colors.grey,
            ),
          ),
          Dimens.size_5.verticalSpace,
        ],
      ),
    );
  }
}
