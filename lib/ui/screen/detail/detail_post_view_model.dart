import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/model/posts.dart';
import 'package:supabase_hackthon_app/service/database_service.dart';
import 'package:supabase_hackthon_app/ui/screen/detail/detail_post_state.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

part 'detail_post_view_model.g.dart';

@riverpod
class DetailPostViewModel extends _$DetailPostViewModel {
  @override
  DetailPostState build({
    DetailPostState initState = const DetailPostState(),
  }) {
    return initState;
  }

  Loading get loading => ref.read(loadingProvider.notifier);

  Future<bool> delete(Posts post) async {
    loading.state = true;
    final result = await ref.read(databaseServiceProvider).delete(post);
    await result.when(
      success: (_) async {
        await Future.delayed(Duration(seconds: 3));
        state = state.copyWith(isSuccess: true);
      },
      failure: (_) {
        state = state.copyWith(isSuccess: false);
      },
    );
    loading.state = false;
    return state.isSuccess;
  }
}
