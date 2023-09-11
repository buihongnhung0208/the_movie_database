import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';


class Utils {
  static int getLineOfParagraph(double maxWidth, String text, TextStyle style) {
    final span = TextSpan(text: text, style: style);
    final tp = TextPainter(text: span, textDirection: ui.TextDirection.ltr);
    tp.layout(maxWidth: maxWidth);
    return tp.computeLineMetrics().length;
  }
  static String generateImageUrl(String url) {
    return '${FlutterConfig.get('IMAGE_URL')}$url';
  }
}


enum MovieType {
  popular('POPULAR', 'movie/popular'),
  topRated('TOP_RATED', 'movie/top_rated'),
  upcoming('UPCOMING', 'movie/upcoming');

  const MovieType(this.code, this.url);

  final String code, url;

  @override
  String toString() => '$code: $url';
}



