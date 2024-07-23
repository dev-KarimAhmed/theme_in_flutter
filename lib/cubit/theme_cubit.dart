import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  bool isDark = false;

  void changeTheme(bool value) {
    isDark = value;
    log(isDark.toString());
    emit(ThemeChanged());
  }
}
