import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_hackthon_app/main.dart';

part 'auth_state.g.dart';

@riverpod
Stream<AuthState> authState(AuthStateRef ref) {
  return supabase.auth.onAuthStateChange;
}
