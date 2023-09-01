import 'package:flutter/material.dart';

extension ColorExtension on Color {
  Map<String, int> toJson() => {
        'red': red,
        'blue': blue,
        'green': green,
        'alpha': alpha,
      };

  static Color fromJson(Map<String, dynamic> json) => Color.fromARGB(
      json['alpha']!, json['red']!, json['green']!, json['blue']!);
}
