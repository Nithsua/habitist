import 'package:flutter/material.dart';

class SegmentedControl extends StatelessWidget {
  final List<String> labels;
  final void Function(int)? onChange;
  final int selected;
  const SegmentedControl({
    super.key,
    this.onChange,
    required this.labels,
    required this.selected,
  }) : assert(labels.length >= 2 && selected < labels.length);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: labels
            .asMap()
            .keys
            .map((i) => Expanded(
                  child: InkWell(
                    onTap: () => onChange?.call(i),
                    child: SegmentWidget(
                      isSelected: i == selected,
                      label: labels[i],
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}

class SegmentWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  const SegmentWidget(
      {super.key, required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      elevation: isSelected ? null : 0.0,
      color: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Center(
            child: Text(label,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.apply(color: isSelected ? Colors.white : Colors.black))),
      ),
    );
  }
}
