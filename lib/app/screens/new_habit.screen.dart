import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/widgets/segmented_control.widget.dart';

class NewHabitScreen extends ConsumerWidget {
  const NewHabitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            pinned: true,
          )
        ],
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFieldWithLabel(
                    label: 'Name Your Habit',
                    hintText: 'Coffee, Tea, Running',
                    onChange: (_) {}),
                const SizedBox(height: 12.0),
                SegmentedControlWithLabel(
                  label: 'Wanna',
                  labels: const ['Gain', 'Lose'],
                  onChange: (_) {},
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                  label: 'Description',
                  hintText: 'To get better and healthy',
                  onChange: (_) {},
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                    label: 'Unit', hintText: 'l, g, km, etc', onChange: (_) {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SegmentedControlWithLabel extends StatelessWidget {
  final String label;
  final List<String> labels;
  final void Function(int)? onChange;
  const SegmentedControlWithLabel(
      {super.key, required this.label, required this.labels, this.onChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        SegmentedControl(labels: labels, onChange: onChange, selected: 0),
      ],
    );
  }
}

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String hintText;
  final void Function(String) onChange;
  const TextFieldWithLabel(
      {super.key,
      this.controller,
      required this.label,
      required this.hintText,
      required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8.0),
        TextField(
          controller: controller,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.0),
          onChanged: onChange,
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            fillColor: Colors.grey.shade300,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            isDense: true,
          ),
          cursorColor: Colors.black,
          cursorHeight: 15,
          cursorRadius: const Radius.circular(8.0),
        ),
      ],
    );
  }
}
