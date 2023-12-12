import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/router/router.dart';
import 'package:supabase_hackthon_app/service/post_stream.dart';
import 'package:supabase_hackthon_app/ui/component/app_app_bar.dart';
import 'package:supabase_hackthon_app/ui/component/app_error_widget.dart';
import 'package:supabase_hackthon_app/ui/component/app_floating_button.dart';
import 'package:supabase_hackthon_app/ui/component/app_list_view.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';

class TimeLineScreen extends ConsumerWidget {
  const TimeLineScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postStreamProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppAppBar(),
      body: state.when(
        data: (data) {
          return AppListView(
            data: data,
            routerPath: RouterPath.timeLineDeitailPost,
            refresh: () => ref.refresh(postStreamProvider),
          );
        },
        error: (_, __) {
          return AppErrorWidget(
            onTap: () => ref.refresh(postStreamProvider),
          );
        },
        loading: () {
          return AppLoading(loading: true);
        },
      ),
      floatingActionButton: AppFloatingButton(
        onTap: () async {
          await context.pushNamed(RouterPath.timeLinepost).then((value) async {
            if (value != null) {
              ref.refresh(postStreamProvider);
            }
          });
        },
      ),
    );
  }
}
