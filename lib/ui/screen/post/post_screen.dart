import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/component/app_post_text_field.dart';
import 'package:supabase_hackthon_app/ui/screen/post/post_view_model.dart';
import 'package:supabase_hackthon_app/utils/mixin/show_modal_bottom_sheet_mixin.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class PostScreen extends ConsumerWidget with ShowModalBottomSheetMixin {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final controller = ref.watch(postViewModelProvider().notifier);
    final state = ref.watch(postViewModelProvider());
    final loading = ref.watch(loadingProvider);
    return GestureDetector(
      onTap: () => primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          automaticallyImplyLeading: !loading,
          backgroundColor: !loading ? Colors.white : Colors.transparent,
          actions: [
            if (!loading)
              TextButton(
                onPressed: () {
                  ref
                      .read(postViewModelProvider().notifier)
                      .post()
                      .then((value) {
                    if (value) {
                      context.pop(true);
                    }
                  });
                },
                child: const Text(
                  'Tweet',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              )
            else
              SizedBox(),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      onTapImage(
                        context: context,
                        camera:
                            ref.read(postViewModelProvider().notifier).camera,
                        album: ref.read(postViewModelProvider().notifier).album,
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(width: 2),
                      ),
                      width: deviceWidth / 1.5,
                      height: deviceWidth / 1.5,
                      child: state.gadgetImage != ''
                          ? Image.file(
                              File(state.gadgetImage),
                              fit: BoxFit.cover,
                            )
                          : const Icon(Icons.add, size: 50),
                    ),
                  ),
                  AppPostTextField(
                    controller: controller.gadgetTextController,
                    hintText: 'Gadget Name',
                    maxLines: 1,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        child: Text(
                          'Score',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        itemPadding: EdgeInsets.symmetric(horizontal: 15),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) => ref
                            .read(postViewModelProvider().notifier)
                            .updateScore(rating.toInt()),
                      ),
                    ],
                  ),
                  AppPostTextField(
                    controller: controller.commentTextController,
                    hintText: 'Comment',
                    maxLines: 7,
                  ),
                  Text(
                    state.status,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            AppLoading(
              loading: loading,
              status: state.status,
            ),
          ],
        ),
      ),
    );
  }
}
