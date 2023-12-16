import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/utils/mixin/account_exist_mixin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> with AccountExistMixin {
  @override
  void initState() {
    redirect(context);
    super.initState();
  }

  Future<void> redirect(BuildContext context) async {
    await Future.delayed(Duration.zero);
    if (!await doesAccountExist()) {
      context.pushReplacementNamed(RouterPath.newAccount);
    } else {
      context.pushReplacementNamed(RouterPath.tab);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AppLoading(
          loading: true,
          status: '',
        ),
      ),
    );
  }
}
