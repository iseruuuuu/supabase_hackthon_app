import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_hackthon_app/main.dart';
import 'package:supabase_hackthon_app/service/database_service.dart';
import 'package:supabase_hackthon_app/ui/screen/post/post_state.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

part 'post_view_model.g.dart';

@riverpod
class PostViewModel extends _$PostViewModel {
  @override
  PostState build({
    PostState initState = const PostState(),
  }) {
    ref.onDispose(() {
      gadgetTextController.dispose();
      commentTextController.dispose();
    });
    return initState;
  }

  final gadgetTextController = TextEditingController();
  final commentTextController = TextEditingController();

  Loading get loading => ref.read(loadingProvider.notifier);
  final picker = ImagePicker();
  String uploadImage = '';
  late Uint8List imageBytes;

  Future<bool> post() async {
    primaryFocus?.unfocus();
    loading.state = true;
    state = state.copyWith(status: 'Loading...');
    if (gadgetTextController.text.isNotEmpty &&
        commentTextController.text.isNotEmpty) {
      final result = await ref.read(databaseServiceProvider).post(
            gadgetName: gadgetTextController.text,
            comment: commentTextController.text,
            uploadImage: uploadImage,
            imageBytes: imageBytes,
            score: state.score,
          );
      await result.when(
        success: (_) async {
          state = state.copyWith(
            status: 'Success to post🎉',
            isSuccess: true,
          );
          await Future.delayed(Duration(seconds: 2));
        },
        failure: (error) {
          state = state.copyWith(
            status: 'Error has occurred.',
            isSuccess: false,
          );
        },
      );
      loading.state = false;
      return state.isSuccess;
    } else {
      loading.state = false;
      state = state.copyWith(
        status: 'Your post lacks the necessary information',
      );
      return false;
    }
  }

  Future<void> camera() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.camera,
        maxHeight: 960,
        maxWidth: 960,
        imageQuality: 10,
      );
      if (image == null) {
        return;
      }
      imageBytes = await image.readAsBytes();
      uploadImage = image.name;
      state = state.copyWith(
        gadgetImage: image.path,
        status: 'Photo attachment successfully',
      );
    } on PlatformException catch (error) {
      logger.e(error.message);
      state = state.copyWith(status: error.message!);
    }
  }

  Future<void> album() async {
    try {
      final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxHeight: 960,
        maxWidth: 960,
        imageQuality: 10,
      );
      if (image == null) {
        return;
      }
      imageBytes = await image.readAsBytes();
      uploadImage = image.name;
      state = state.copyWith(
        gadgetImage: image.path,
        status: 'Photo attachment successfully',
      );
    } on PlatformException catch (error) {
      logger.e(error.message);
      state = state.copyWith(status: error.message!);
    }
  }

  void updateScore(int score) {
    state = state.copyWith(score: score);
  }
}
