import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/constants.dart';
import 'package:habitist/app/models/view/new_habit_screen/new_habit_screen.model.dart';
import 'package:habitist/app/screens/home.screen.dart';
import 'package:habitist/app/viewmodels/new_habit_screen.viewmodel.dart';
import 'package:habitist/app/widgets/segmented_control.widget.dart';

class NewHabitScreen extends ConsumerWidget {
  final newHabitScreenProvider =
      StateNotifierProvider<NewHabitScreenViewModel, NewHabitScreenModel>(
          (ref) => NewHabitScreenViewModel());
  NewHabitScreen({Key? key}) : super(key: key);

  Future<void> createHabit(BuildContext context, WidgetRef ref) async {
    ref.read(newHabitScreenProvider.notifier).createHabit().then((value) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            actions: [
              MaterialButton(
                height: 20.0,
                onPressed: ref.watch(newHabitScreenProvider).habit.validate
                    ? () => createHabit(context, ref)
                    : null,
                child: const Text('Save'),
              )
            ],
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
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changeName,
                  controller:
                      ref.read(newHabitScreenProvider.notifier).nameController,
                  textInputType: TextInputType.name,
                ),
                const SizedBox(height: 12.0),
                SegmentedControlWithLabel(
                  label: 'Wanna',
                  labels: const ['Gain', 'Lose'],
                  selected: ref.watch(newHabitScreenProvider).habit.type.index,
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changeType,
                  caption:
                      'Choose the type of habit tracking based on whether you are trying to develop a new habit or get rid a bad one',
                ),
                const SizedBox(height: 12.0),
                SegmentedControlWithLabel(
                  label: 'Period',
                  labels: const ['Day', 'Week', 'Month', 'Year'],
                  selected:
                      ref.watch(newHabitScreenProvider).habit.period.index,
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changePeriod,
                  caption: 'Choose the frequency you wanna track the habit by',
                ),
                const SizedBox(height: 12.0),
                ColorPickerWithLabel(
                  label: 'Choose',
                  colors: colorPalettes,
                  selected: ref.watch(newHabitScreenProvider).selectedColor,
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changeColor,
                  caption:
                      'Choose a color you would like to represent the habit with',
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                  label: 'Total Count',
                  hintText: '3000',
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changeCount,
                  caption:
                      'Total quantity you wanna keep track off. like 3000ml of water',
                  controller: ref
                      .read(newHabitScreenProvider.notifier)
                      .totalCountController,
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                  label: 'Incremental Count',
                  hintText: '1000',
                  onChange: ref
                      .read(newHabitScreenProvider.notifier)
                      .changeIncrementalCount,
                  caption:
                      'Quantity to increase by for each increment, eg by 1000ml of water for every increment',
                  controller: ref
                      .read(newHabitScreenProvider.notifier)
                      .incrementalController,
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                  label: 'Unit',
                  hintText: 'l, km, cups, etc',
                  onChange:
                      ref.read(newHabitScreenProvider.notifier).changeUnit,
                  controller:
                      ref.read(newHabitScreenProvider.notifier).unitController,
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 12.0),
                TextFieldWithLabel(
                  label: 'Description',
                  hintText: 'To get better and healthy',
                  onChange: ref
                      .read(newHabitScreenProvider.notifier)
                      .changeDescription,
                  controller: ref
                      .read(newHabitScreenProvider.notifier)
                      .descriptionController,
                  textInputType: TextInputType.text,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ColorPickerWithLabel extends StatelessWidget {
  final String? caption;
  final String label;
  final int selected;
  final List<Color> colors;
  final void Function(int)? onChange;
  const ColorPickerWithLabel({
    super.key,
    this.onChange,
    this.caption,
    required this.label,
    required this.selected,
    required this.colors,
  });

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
        CustomColorPicker(
          onChange: onChange,
          selected: selected,
          colors: colors,
        ),
        caption != null
            ? Column(
                children: [
                  const SizedBox(height: 4),
                  Text(caption!, style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: 8)
                ],
              )
            : const SizedBox()
      ],
    );
  }
}

class CustomColorPicker extends StatelessWidget {
  final int selected;
  final List<Color> colors;
  final void Function(int)? onChange;
  const CustomColorPicker({
    super.key,
    this.onChange,
    required this.colors,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: colors
          .asMap()
          .keys
          .map((i) => Padding(
                padding: const EdgeInsets.only(right: 8.0, top: 2),
                child: GestureDetector(
                  onTap: () => onChange?.call(i),
                  child: ColorPick(
                      color: colorPalettes[i], isSelected: selected == i),
                ),
              ))
          .toList(),
    );
  }
}

class ColorPick extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorPick({super.key, required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border:
              isSelected ? Border.all(width: 4.0, color: Colors.black) : null),
      child: CircleAvatar(
        maxRadius: 14,
        backgroundColor: color,
      ),
    );
  }
}

class SegmentedControlWithLabel extends StatelessWidget {
  final String label;
  final List<String> labels;
  final void Function(int)? onChange;
  final String? caption;
  final int selected;
  const SegmentedControlWithLabel({
    super.key,
    this.onChange,
    this.caption,
    required this.label,
    required this.labels,
    required this.selected,
  });

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
        SegmentedControl(
            labels: labels, onChange: onChange, selected: selected),
        caption != null
            ? Column(
                children: [
                  const SizedBox(height: 4),
                  Text(caption!, style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: 8)
                ],
              )
            : const SizedBox()
      ],
    );
  }
}

class TextFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String hintText;
  final void Function(String) onChange;
  final String? caption;
  final TextInputType? textInputType;

  const TextFieldWithLabel(
      {super.key,
      this.controller,
      this.caption,
      this.textInputType,
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
          keyboardType: textInputType,
          controller: controller,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(height: 1.0),
          onChanged: onChange,
          decoration: InputDecoration(
            filled: true,
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                ),
            fillColor: Colors.grey.shade300,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            isDense: true,
          ),
          cursorColor: Colors.black,
          cursorRadius: const Radius.circular(8.0),
        ),
        caption != null
            ? Column(
                children: [
                  const SizedBox(height: 4),
                  Text(caption!, style: Theme.of(context).textTheme.caption),
                  const SizedBox(height: 8)
                ],
              )
            : const SizedBox()
      ],
    );
  }
}
