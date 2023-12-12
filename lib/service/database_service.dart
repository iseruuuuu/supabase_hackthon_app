import 'dart:typed_data';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_hackthon_app/main.dart';
import 'package:supabase_hackthon_app/model/result.dart';

part 'database_service.g.dart';

@riverpod
DatabaseService databaseService(DatabaseServiceRef ref) => DatabaseService();

class DatabaseService {
  DatabaseService();

  final user = supabase.auth.currentUser?.id;

  Future<Result<void, Exception>> post({
    required String gadgetName,
    required String comment,
    required String uploadImage,
    required Uint8List imageBytes,
    required int score,
  }) async {
    try {
      final updates = {
        'user_id': user,
        'gadget_image': '/$user/$uploadImage',
        'gadget_name': gadgetName,
        'comment': comment,
        'score': score,
        'created_at': DateTime.now().toIso8601String(),
      };
      await upload(uploadImage: uploadImage, imageBytes: imageBytes);
      await supabase.from('posts').insert(updates);
      await Future.delayed(Duration(seconds: 2));
      return const Success(null);
    } on PostgrestException catch (error) {
      logger.e(error.message);
      return Failure(error);
    } on Exception catch (error) {
      logger.e(error);
      return Failure(error);
    }
  }

  Future<Result<void, Exception>> setUsers({
    required String name,
    required String userName,
    required int image,
  }) async {
    final updates = {
      'name': name,
      'user_name': userName,
      'self_introduce': '',
      'image': 'assets/icon/icon$image.png',
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    };
    try {
      await supabase.from('users').insert(updates);
      await Future.delayed(Duration(seconds: 2));
      return const Success(null);
    } on PostgrestException catch (error) {
      logger.e(error.message);
      return Failure(error);
    }
  }

  Future<void> upload({
    required String uploadImage,
    required Uint8List imageBytes,
  }) async {
    await supabase.storage
        .from('gadget')
        .uploadBinary('/$user/$uploadImage', imageBytes);
  }

  Future<Result<void, Exception>> delete(int id) async {
    try {
      await supabase.from('posts').delete().eq('id', id);
      return const Success(null);
    } on PostgrestException catch (error) {
      logger.e(error.message);
      return Failure(error);
    }
  }
}
