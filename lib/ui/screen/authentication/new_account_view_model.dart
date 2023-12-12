import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/service/database_service.dart';
import 'package:supabase_hackthon_app/ui/screen/authentication/new_account_state.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

part 'new_account_view_model.g.dart';

@riverpod
class NewAccountViewModel extends _$NewAccountViewModel {
  @override
  NewAccountState build({
    NewAccountState initState = const NewAccountState(),
  }) {
    ref.onDispose(() {
      nameTextController.dispose();
      userNameTextController.dispose();
    });
    return initState;
  }

  Loading get loading => ref.read(loadingProvider.notifier);

  final nameTextController = TextEditingController();
  final userNameTextController = TextEditingController();

  void selectIcon(int number) {
    state = state.copyWith(number: number);
  }

  Future<bool> setUsers() async {
    state = state.copyWith(loginStatus: '');
    primaryFocus?.unfocus();
    loading.state = true;
    if (nameTextController.text.isNotEmpty &&
        userNameTextController.text.isNotEmpty) {
      final result = await ref.read(databaseServiceProvider).setUsers(
            name: nameTextController.text.trim(),
            userName: userNameTextController.text.trim(),
            image: state.number,
          );
      result.when(
        success: (_) {
          state = state.copyWith(
            loginStatus: 'User created successfully!!',
            isSuccess: true,
          );
        },
        failure: (_) {
          state = state.copyWith(
            loginStatus: 'Error has occurred.',
            isSuccess: false,
          );
        },
      );
      loading.state = false;
      return state.isSuccess;
    } else {
      loading.state = false;
      state = state.copyWith(loginStatus: 'Your Information is Empty');
      return false;
    }
  }
}
