import 'package:flutter/material.dart';
import 'package:habitist/app/widgets/outlined_icon_button.widget.dart';

class Activity extends StatelessWidget {
  static const double _height = 71.0;
  final Color fillColor;
  final double fill;
  const Activity({super.key, required this.fill, required this.fillColor})
      : assert(fill <= 1.0 && fill >= 0.0);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Stack(
        children: [
          Container(
            height: _height,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Container(
            height: _height,
            width: constraints.maxWidth * fill,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: BorderRadius.circular(12.0),
            ),
          ),
          Container(
            height: _height,
            width: constraints.maxWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Water',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        '0/3600 ML',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                  OutlinedIconButton(
                    icon: Icons.keyboard_arrow_right,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    });
  }
}