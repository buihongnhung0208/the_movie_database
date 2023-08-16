import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'dimens.dart';

class TextStyles {
  TextStyles();

  InterTextStyles get inter => const InterTextStyles();
}

class InterTextStyles {
  const InterTextStyles();

  TextStyle get heading1 => TextStyle(
        fontSize: Dimens.size_48.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get heading2 => TextStyle(
        fontSize: Dimens.size_40.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get heading3 => TextStyle(
        fontSize: Dimens.size_36.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get heading4 => TextStyle(
        fontSize: Dimens.size_32.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get heading5 => TextStyle(
        fontSize: Dimens.size_28.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get heading6 => TextStyle(
        fontSize: Dimens.size_24.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.2,
      );

  TextStyle get extraLargeTextBold => TextStyle(
        fontSize: Dimens.size_20.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.bold,
        height: 1.4,
      );

  TextStyle get extraLargeTextMedium => TextStyle(
        fontSize: Dimens.size_20.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.4,
      );

  TextStyle get extraLargeTextRegular => TextStyle(
        fontSize: Dimens.size_20.sp,
        // fontFamily: Fonts.inter,
        height: 1.4,
      );

  TextStyle get largeTextBold => TextStyle(
        fontSize: Dimens.size_18.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.bold,
        height: 1.4,
      );

  TextStyle get largeTextMedium => TextStyle(
        fontSize: Dimens.size_18.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.4,
      );

  TextStyle get largeTextRegular => TextStyle(
        fontSize: Dimens.size_18.sp,
        // fontFamily: Fonts.inter,
        height: 1.4,
      );

  TextStyle get largeTextSemiRegular => TextStyle(
        fontSize: Dimens.size_18.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );

  TextStyle get mediumTextBold => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.bold,
        height: 1.5,
      );

  TextStyle get mediumTextSemiBold => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w600,
        height: 1.5,
      );

  TextStyle get mediumTextMedium => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.5,
      );

  TextStyle get mediumTextRegular => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        height: 1.5,
      );

  TextStyle get mediumTextSemiRegular => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );

  TextStyle get mediumTextLight => TextStyle(
        fontSize: Dimens.size_16.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w300,
        height: 1.5,
      );

  TextStyle get smallTextBold => TextStyle(
        fontSize: Dimens.size_14.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.bold,
        height: 1.5,
      );

  TextStyle get smallTextMedium => TextStyle(
        fontSize: Dimens.size_14.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.5,
      );

  TextStyle get smallTextRegular => TextStyle(
        fontSize: Dimens.size_14.sp,
        // fontFamily: Fonts.inter,
        height: 1.5,
      );

  TextStyle get smallTextSemiRegular => TextStyle(
        fontSize: Dimens.size_14.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );

  TextStyle get smallTextLight => TextStyle(
        fontSize: Dimens.size_14.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w300,
        height: 1.5,
      );

  TextStyle get extraSmallTextBold => TextStyle(
        fontSize: Dimens.size_12.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.bold,
        height: 1.6,
      );

  TextStyle get extraSmallTextSemibold => TextStyle(
    fontSize: Dimens.size_12.sp,
    // fontFamily: Fonts.inter,
    fontWeight: FontWeight.w600,
    height: 1.6,
  );

  TextStyle get extraSmallTextMedium => TextStyle(
        fontSize: Dimens.size_12.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.6,
      );

  TextStyle get extraSmallTextRegular => TextStyle(
        fontSize: Dimens.size_12.sp,
        // fontFamily: Fonts.inter,
        height: 1.6,
      );

  TextStyle get extraSmallTextSemiRegular => TextStyle(
        fontSize: Dimens.size_12.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w400,
        height: 1.4,
      );

  TextStyle get extraSmallTextLight => TextStyle(
        fontSize: Dimens.size_12.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w300,
        height: 1.6,
      );

  TextStyle get extraLagerTextMedium => TextStyle(
        fontSize: Dimens.size_22.sp,
        // fontFamily: Fonts.inter,
        fontWeight: FontWeight.w500,
        height: 1.6,
      );

  TextStyle get display1 => TextStyle(
        fontSize: Dimens.size_36.sp,
        // fontFamily: Fonts.inter,
        height: 1.6,
      );

  TextStyle get display2 => TextStyle(
        fontSize: Dimens.size_32.sp,
        // fontFamily: Fonts.inter,
        height: 1.6,
      );

  TextStyle get display3 => TextStyle(
        fontSize: Dimens.size_28.sp,
        // fontFamily: Fonts.inter,
        height: 1.6,
      );
}
