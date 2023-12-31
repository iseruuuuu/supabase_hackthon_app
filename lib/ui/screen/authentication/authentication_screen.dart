import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_hackthon_app/main.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/ui/component/app_elevated_button.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/component/app_post_text_field.dart';
import 'package:supabase_hackthon_app/ui/screen/authentication/authentication_view_model.dart';
import 'package:supabase_hackthon_app/utils/mixin/account_exist_mixin.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class AuthenticationScreen extends ConsumerStatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  AuthenticationScreenState createState() => AuthenticationScreenState();
}

class AuthenticationScreenState extends ConsumerState<AuthenticationScreen>
    with AccountExistMixin {
  @override
  void initState() {
    init(context);
    super.initState();
  }

  @override
  void dispose() {
    authStateSubscription.cancel();
    super.dispose();
  }

  late StreamSubscription<AuthState> authStateSubscription;
  bool _redirecting = false;

  void init(BuildContext context) {
    authStateSubscription = supabase.auth.onAuthStateChange.listen((data) {
      if (!mounted || _redirecting) {
        return;
      }
      final session = data.session;
      if (session != null) {
        _redirecting = true;
        redirect(context);
      }
    });
  }

  Future<void> redirect(BuildContext context) async {
    if (!await doesAccountExist()) {
      if (!mounted) {
        return;
      }
      context.pushReplacementNamed(RouterPath.newAccount);
    } else {
      if (!mounted) {
        return;
      }
      context.pushReplacementNamed(RouterPath.tab);
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(authenticationViewModelProvider());
    final loading = ref.watch(loadingProvider);
    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: !loading ? Colors.white : Colors.transparent,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/image/icon.png',
                        width: 55,
                        height: 55,
                      ),
                      SizedBox(width: 10),
                      const Text(
                        'Gadget Gram',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: AppPostTextField(
                      controller: ref
                          .watch(authenticationViewModelProvider().notifier)
                          .emailTextField,
                      hintText: 'Email',
                      maxLines: 1,
                    ),
                  ),
                  AppElevatedButton(
                    onPressed: ref
                        .read(authenticationViewModelProvider().notifier)
                        .login,
                    title: 'Resister  /  Login',
                  ),
                  SizedBox(height: 40),
                  Text(
                    state.loginStatus,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            AppLoading(
              loading: loading,
              status: '',
            ),
          ],
        ),
      ),
    );
  }
}
