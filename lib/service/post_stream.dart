import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/main.dart';

part 'post_stream.g.dart';

@Riverpod(keepAlive: true)
Stream<List<Map<String, dynamic>>> postStream(PostStreamRef ref) {
  return supabase.from('posts').stream(primaryKey: ['id']).order('created_at');
}

@Riverpod(keepAlive: true)
Stream<List<Map<String, dynamic>>> myPostStream(PostStreamRef ref) {
  final user = supabase.auth.currentUser?.id;
  return supabase
      .from('posts')
      .stream(primaryKey: ['id'])
      .eq('user_id', user)
      .order('created_at');
}
