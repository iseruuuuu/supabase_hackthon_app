import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supabase_hackthon_app/main.dart';
import 'package:supabase_hackthon_app/model/posts.dart';
import 'package:supabase_hackthon_app/model/users.dart';
import 'package:supabase_hackthon_app/ui/component/app_loading.dart';
import 'package:supabase_hackthon_app/ui/screen/detail/detail_post_view_model.dart';
import 'package:supabase_hackthon_app/utils/mixin/dialog_mixin.dart';
import 'package:supabase_hackthon_app/utils/mixin/snack_bar_mixin.dart';
import 'package:supabase_hackthon_app/utils/mixin/url_launcher_mixin.dart';
import 'package:supabase_hackthon_app/utils/provider/loading.dart';

class DetailPostScreen extends ConsumerStatefulWidget {
  const DetailPostScreen({
    required this.posts,
    required this.users,
    super.key,
  });

  final Posts posts;
  final Users users;

  @override
  DetailPostScreenState createState() => DetailPostScreenState();
}

class DetailPostScreenState extends ConsumerState<DetailPostScreen>
    with DialogMixin, UrlLauncherMixin, SnackBarMixin {
  bool isHeart = false;
  int initialHeart = 0;

  @override
  void initState() {
    initialHeart = widget.posts.heart;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    initialHeart = widget.posts.heart;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final user = supabase.auth.currentUser?.id;
    final loading = ref.watch(loadingProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: deviceWidth,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: Image.asset(widget.users.image),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.users.name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '@${widget.users.userName}',
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {
                          (widget.users.userId == user)
                              ? openDialog(
                                  context: context,
                                  title: 'Delete Post',
                                  subTitle: 'Do you want to delete this post?\n'
                                      'Once deleted, it cannot be restored.',
                                  yes: 'Delete',
                                  onTap: () async {
                                    await ref
                                        .read(
                                          detailPostViewModelProvider()
                                              .notifier,
                                        )
                                        .delete(widget.posts.id)
                                        .then((value) async {
                                      if (value) {
                                        context.pop(true);
                                      } else {
                                        openSnackBar(context, 'Delete failed');
                                      }
                                    });
                                  },
                                )
                              : openDialog(
                                  context: context,
                                  title: 'Report a Post',
                                  subTitle: 'I will report about this post. '
                                      '\nTransition to Google Form.',
                                  yes: 'Report',
                                  onTap: () async {
                                    await launcherUrl(
                                      'https://forms.gle/CqWX2tNVyDLptXJG9',
                                    ).then((value) {
                                      if (!value) {
                                        openErrorSnackBar(context);
                                      } else {
                                        context.pop();
                                      }
                                    });
                                  },
                                );
                        },
                        icon: Icon(Icons.menu),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onDoubleTap: (widget.users.userId != user)
                      ? () async {
                          if (isHeart) {
                            await supabase.from('posts').update({
                              'heart': widget.posts.heart - 1,
                            }).match({'id': widget.posts.id});
                            setState(() {
                              initialHeart--;
                              isHeart = false;
                            });
                          } else {
                            await supabase.from('posts').update({
                              'heart': widget.posts.heart + 1,
                            }).match({'id': widget.posts.id});
                            setState(() {
                              initialHeart++;
                              isHeart = true;
                            });
                          }
                        }
                      : null,
                  child: Container(
                    width: deviceWidth,
                    height: deviceWidth,
                    color: Colors.white,
                    child: CachedNetworkImage(
                      imageUrl: supabase.storage
                          .from('gadget')
                          .getPublicUrl(widget.posts.gadgetImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 5),
                    IconButton(
                      onPressed: (widget.users.userId != user)
                          ? () async {
                              if (isHeart) {
                                await supabase.from('posts').update({
                                  'heart': widget.posts.heart - 1,
                                }).match({'id': widget.posts.id});
                                setState(() {
                                  initialHeart--;
                                  isHeart = false;
                                });
                              } else {
                                await supabase.from('posts').update({
                                  'heart': widget.posts.heart + 1,
                                }).match({'id': widget.posts.id});
                                setState(() {
                                  initialHeart++;
                                  isHeart = true;
                                });
                              }
                            }
                          : null,
                      icon: Icon(
                        (isHeart || widget.users.userName == user)
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: isHeart ? Colors.red : Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        Share.share(
                          'Posted a review about ${widget.posts.gadgetName}!'
                          '\nCheck out the details on GadgetGram!'
                          '\n#gadgetGram #supabasehackthon',
                        );
                      },
                      icon: Icon(
                        Icons.send,
                        size: 30,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        '$initialHeart 👍 ',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    widget.posts.gadgetName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                        'SCORE:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      RatingBarIndicator(
                        rating: widget.posts.score.toDouble(),
                        itemBuilder: (context, index) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemSize: 30,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    widget.posts.comment,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
          AppLoading(loading: loading),
        ],
      ),
    );
  }
}
