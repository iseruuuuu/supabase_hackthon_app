import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/service/auth_service.dart';
import 'package:supabase_hackthon_app/ui/screen/tab/setting/setting_state.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

part 'setting_view_model.g.dart';

@riverpod
class SettingViewModel extends _$SettingViewModel {
  @override
  SettingState build({
    SettingState initState = const SettingState(),
  }) {
    return initState;
  }

  Loading get loading => ref.read(loadingProvider.notifier);

  Future<bool> signOut() async {
    loading.state = true;
    final result = await ref.read(authServiceProvider).signOut();
    result.whenOrNull(
      success: (_) {
        return true;
      },
    );
    loading.state = false;
    return false;
  }
}
