import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/ui/component/app_account_text_field.dart';
import 'package:supabase_hackthon_app/ui/component/app_elevated_button.dart';
import 'package:supabase_hackthon_app/ui/component/app_icon.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/screen/authentication/new_account_view_model.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class NewAccountScreen extends ConsumerWidget {
  const NewAccountScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = ref.watch(loadingProvider);
    final controller = ref.watch(newAccountViewModelProvider().notifier);
    final state = ref.watch(newAccountViewModelProvider());
    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage:
                        AssetImage('assets/icon/icon${state.number}.png'),
                    radius: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Choose Your Icon',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Wrap(
                    children: List.generate(
                      6,
                      (index) {
                        return AppIcon(
                          onTap: () => ref
                              .read(newAccountViewModelProvider().notifier)
                              .selectIcon(index),
                          number: index,
                        );
                      },
                    ),
                  ),
                  AppNameTextField(
                    title: 'name',
                    controller: controller.nameTextController,
                  ),
                  AppUserNameTextField(
                    controller: controller.userNameTextController,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: AppElevatedButton(
                      onPressed: () {
                        ref
                            .read(newAccountViewModelProvider().notifier)
                            .setUsers()
                            .then((value) {
                          if (value) {
                            context.pushReplacementNamed(RouterPath.tab);
                          }
                        });
                      },
                      title: 'Create Your Account',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      state.loginStatus,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppLoading(loading: loading),
          ],
        ),
      ),
    );
  }
}
