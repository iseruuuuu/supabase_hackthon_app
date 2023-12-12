import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/my_profile/my_profile_screen.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/setting/setting_screen.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/tab_state.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/time_line/time_line_screen.dart';

part 'tab_view_model.g.dart';

@riverpod
class TabViewModel extends _$TabViewModel {
  @override
  TabState build({
    TabState initState = const TabState(),
  }) {
    return initState;
  }

  List<Widget> pageList = [
    const TimeLineScreen(),
    const MyProfileScreen(),
    const SettingScreen(),
  ];

  void onTap(int index) {
    state = TabState(selectedIndex: index);
  }
}
