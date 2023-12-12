import 'dart:async';

import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/service/auth_service.dart';
import 'package:supabase_hackthon_app/ui/screen/authentication/authentication_state.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

part 'authentication_view_model.g.dart';

@riverpod
class AuthenticationViewModel extends _$AuthenticationViewModel {
  @override
  AuthenticationState build({
    AuthenticationState initState = const AuthenticationState(),
  }) {
    ref.onDispose(emailTextField.dispose);
    return initState;
  }

  final emailTextField = TextEditingController();

  Loading get loading => ref.read(loadingProvider.notifier);

  Future<void> login() async {
    loading.state = true;
    primaryFocus?.unfocus();
    if (emailTextField.text.isNotEmpty) {
      final result =
          await ref.read(authServiceProvider).logIn(emailTextField.text.trim());
      await result.when(
        success: (_) async {
          await Future.delayed(Duration(seconds: 2));
          state = state.copyWith(
            loginStatus: 'Please authenticate with your email application.',
          );
        },
        failure: (error) {
          state = state.copyWith(loginStatus: 'Error has occurred.');
        },
      );
    } else {
      state = state.copyWith(loginStatus: 'Email is Empty');
    }
    loading.state = false;
  }
}
