// import 'package:dynamic_widget/dynamic_widget.dart';
// import 'package:dynamic_widget/dynamic_widget/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class SvgParser extends WidgetParser {
//   @override
//   String get widgetName => 'SvgPicture';
//
//   @override
//   Widget parse(Map<String, dynamic> map, BuildContext buildContext, ClickListener? listener) {
//     Key? key = map['key'] as Key?;
//     String assetName = map['assetName'];
//     bool matchTextDirection = map['matchTextDirection'] ?? false;
//     AssetBundle? bundle = map['bundle'];
//     final String? package = map['package'] ?? 'mconnect_core';
//     double? width = map['width']?.toDouble();
//     double? height = map['height']?.toDouble();
//     BoxFit fit = parseBoxFit(map['fit']) ?? BoxFit.contain;
//     AlignmentGeometry alignment = parseAlignment(map['alignment']) ?? Alignment.center;
//     bool allowDrawingOutsideViewBox = map['allowDrawingOutsideViewBox'] ?? false;
//     WidgetBuilder? placeholderBuilder = map['placeholderBuilder'];
//     String? semanticsLabel = map['semanticsLabel'];
//     bool excludeFromSemantics = map['excludeFromSemantics'] ?? false;
//     SvgTheme theme = map['theme'] ?? const SvgTheme();
//     ColorFilter? colorFilter = map['colorFilter'];
//
//     String? clickEvent = map.containsKey("click_event") ? map['click_event'] : '';
//
//     final widget = SvgPicture.asset(
//       assetName,
//       key: key,
//       matchTextDirection: matchTextDirection,
//       bundle: bundle,
//       package: package,
//       width: width,
//       height: height,
//       fit: fit,
//       alignment: alignment,
//       allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
//       placeholderBuilder: placeholderBuilder,
//       semanticsLabel: semanticsLabel,
//       excludeFromSemantics: excludeFromSemantics,
//       theme: theme,
//       colorFilter: colorFilter,
//     );
//
//     if (listener != null && (clickEvent != null && clickEvent.isNotEmpty)) {
//       return GestureDetector(
//         onTap: () {
//           listener.onClicked(clickEvent);
//         },
//         child: widget,
//       );
//     }
//
//     return widget;
//   }
//
//   @override
//   Type get widgetType => SvgPicture;
//
//   @override
//   Map<String, dynamic>? export(Widget? widget, BuildContext? buildContext) {
//     if (widget is SvgPicture) {
//       final loader = widget.bytesLoader as SvgAssetLoader;
//       return <String, dynamic>{
//         'type': widgetName,
//         'assetName': loader.assetName,
//         'key': widget.key,
//         'matchTextDirection': widget.matchTextDirection,
//         'bundle': loader.assetBundle,
//         'package': loader.packageName,
//         'width': widget.width,
//         'height': widget.height,
//         'fit': exportBoxFit(widget.fit),
//         'alignment': exportAlignment(widget.alignment as Alignment?),
//         'allowDrawingOutsideViewBox': widget.allowDrawingOutsideViewBox,
//         'placeholderBuilder': widget.placeholderBuilder,
//         'semanticsLabel': widget.semanticsLabel,
//         'excludeFromSemantics': widget.excludeFromSemantics,
//         'colorFilter': widget.colorFilter,
//       };
//     } else {
//       return null;
//     }
//   }
// }
