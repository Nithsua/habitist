import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:habitist/app/models/view/home_screen/home_screen.model.dart';
import 'package:habitist/app/viewmodels/home_screen.viewmodel.dart';

final homeScreenProvider =
    StateNotifierProvider<HomeScreenViewModel, AsyncValue<HomeScreenModel>>(
        (_) => HomeScreenViewModel());
