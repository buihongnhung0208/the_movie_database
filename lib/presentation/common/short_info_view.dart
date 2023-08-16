import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/resources/colors.dart';
import 'package:the_movie_database/resources/dimens.dart';

class ListHomeView extends StatelessWidget {
  const ListHomeView({
    super.key,
    required this.title,
    required this.button,
    this.padding = Dimens.size_16,
    this.backgroundColor = AppColors.f042541,
    required this.child,
  });

  final Widget title;
  final Widget button;
  final double padding;
  final Color backgroundColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: padding.h,
              left: padding.w,
              right: padding.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [title, button],
            ),
          ),
          // Dimens.size_.verticalSpace,
          child,
        ],
      ),
    );
  }
}
