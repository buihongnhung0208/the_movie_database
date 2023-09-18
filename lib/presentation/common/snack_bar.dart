import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:the_movie_database/presentation/resources/dimens.dart';

class CustomSnackBar extends StatefulWidget {
  const CustomSnackBar.success({
    super.key,
    required this.message,
    required this.icon,
    this.messagePadding,
    this.padding,
    this.backgroundColor = Colors.white,
    this.boxShadow,
    this.borderRadius,
  });

  const CustomSnackBar.info({
    super.key,
    required this.message,
    required this.icon,
    this.messagePadding,
    this.padding,
    this.backgroundColor =  Colors.white,
    this.boxShadow,
    this.borderRadius,
  });

  const CustomSnackBar.error({
    Key? key,
    required this.message,
    required this.icon,
    this.messagePadding,
    this.padding,
    this.backgroundColor =  Colors.white,
    this.boxShadow,
    this.borderRadius,
  }) : super(key: key);

  final Widget message;
  final Widget icon;
  final Color backgroundColor;
  final List<BoxShadow>? boxShadow;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? messagePadding;
  final EdgeInsetsGeometry? padding;

  @override
  State<CustomSnackBar> createState() => CustomSnackBarState();
}

class CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      padding: widget.padding ??
          EdgeInsets.symmetric(
            horizontal: Dimens.size_12.w,
            vertical: Dimens.size_12.h,
          ),
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius:
        widget.borderRadius ??  BorderRadius.circular(Dimens.size_12.r),
        boxShadow: widget.boxShadow ??
            [
              BoxShadow(
                color: Colors.black26,
                offset: const Offset(0, 8),
                spreadRadius: 1,
                blurRadius: Dimens.size_30.r,
              ),
            ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.icon,
          Expanded(
            child: Padding(
              padding: widget.messagePadding ??
                  const EdgeInsets.symmetric(horizontal: Dimens.size_12).w,
              child: widget.message,
            ),
          ),
        ],
      ),
    );
  }
}
