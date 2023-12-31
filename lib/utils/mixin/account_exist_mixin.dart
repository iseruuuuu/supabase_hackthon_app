import 'dart:async';

import 'package:supabase_hackthon_app/main.dart';

mixin AccountExistMixin {
  Future<bool> doesAccountExist() async {
    final user = supabase.auth.currentUser;
    if (user == null) {
      return false;
    }
    final response =
        await supabase.from('users').select().eq('user_id', user.id).execute();
    if (response.data != null && response.data.isNotEmpty) {
      return true;
    }
    return false;
  }
}
