import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/ui/component/app_account_text_field.dart';
import 'package:supabase_hackthon_app/ui/component/app_icon.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/screen/edit/edit_view_model.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class EditScreen extends ConsumerWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.watch(editViewModelProvider().notifier);
    final state = ref.watch(editViewModelProvider());
    final loading = ref.watch(loadingProvider);
    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            TextButton(
              onPressed: loading
                  ? null
                  : () => ref
                          .read(editViewModelProvider().notifier)
                          .update()
                          .then((value) {
                        if (value) {
                          context.pop(true);
                        }
                      }),
              child: Text(
                'Update',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: loading ? Colors.grey : Colors.blueAccent,
                ),
              ),
            ),
          ],
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
                      'change icon',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Wrap(
                    children: List.generate(
                      4,
                      (index) {
                        return AppIcon(
                          onTap: () => ref
                              .read(editViewModelProvider().notifier)
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
                    controller: controller.useNameTextController,
                  ),
                  AppSelfIntroductionTextField(
                    controller: controller.selfIntroduceTextController,
                  ),
                  Text(state.status),
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