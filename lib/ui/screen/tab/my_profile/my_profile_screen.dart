import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/service/post_stream.dart';
import 'package:supabase_hackthon_app/ui/component/app_app_bar.dart';
import 'package:supabase_hackthon_app/ui/component/app_error_widget.dart';
import 'package:supabase_hackthon_app/ui/component/app_floating_button.dart';
import 'package:supabase_hackthon_app/ui/component/app_header.dart';
import 'package:supabase_hackthon_app/ui/component/app_list_view.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/component/app_profile_button.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/my_profile/my_profile_view_model.dart';

class MyProfileScreen extends ConsumerWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(myPostStreamProvider);
    final users = ref.watch(myProfileViewModelProvider());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppAppBar(),
      body: users.when(
        data: (name, userName, selfIntroduce, image, length) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppHeader(
              image: image,
              length: length,
              name: name,
              userName: userName,
              selfIntroduce: selfIntroduce,
            ),
            AppMyProfileButton(
              onTapEdit: () {
                context.pushNamed(RouterPath.edit).then((value) {
                  if (value != null) {
                    ref.read(myProfileViewModelProvider().notifier).getData();
                  }
                });
              },
              onTapShare: () {
                Share.share(
                  'Hey I post my gadgets in GadgetGram\n'
                  'Check post when you download!!\n'
                  '#gadgetGram #supabasehackthon',
                );
              },
            ),
            const SizedBox(height: 10),
            state.when(
              data: (data) {
                return Expanded(
                  child: AppListView(
                    data: data,
                    routerPath: RouterPath.myProfileDeitailPost,
                    refresh: () => ref.refresh(myPostStreamProvider),
                  ),
                );
              },
              error: (_, __) {
                return AppErrorWidget(
                  onTap: () {
                    ref.refresh(myPostStreamProvider);
                    ref.read(myProfileViewModelProvider().notifier).getData();
                  },
                );
              },
              loading: () {
                return AppLoading(
                  loading: true,
                  status: '',
                );
              },
            ),
          ],
        ),
        loading: () => AppLoading(
          loading: true,
          status: '',
        ),
        error: () => AppErrorWidget(
          onTap: () => ref.refresh(myPostStreamProvider),
        ),
      ),
      floatingActionButton: AppFloatingButton(
        onTap: () {
          context.pushNamed(RouterPath.myProfilePost).then((value) {
            if (value != null) {
              ref.refresh(myPostStreamProvider);
              ref.read(myProfileViewModelProvider().notifier).getData();
            }
          });
        },
      ),
    );
  }
}
