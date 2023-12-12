import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:supabase_hackthon_app/main.dart';
import 'package:supabase_hackthon_app/model/model.dart';
import 'package:supabase_hackthon_app/model/posts.dart';
import 'package:supabase_hackthon_app/model/users.dart';
import 'package:supabase_hackthon_app/ui/component/app_empty.dart';

class AppListView extends StatelessWidget {
  const AppListView({
    required this.data,
    required this.routerPath,
    required this.refresh,
    super.key,
  });

  final List<Map<String, dynamic>> data;
  final String routerPath;
  final Function() refresh;

  @override
  Widget build(BuildContext context) {
    return data.isNotEmpty
        ? GridView.builder(
            itemCount: data.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  final posts = Posts(
                    id: int.parse(data[index]['id'].toString()),
                    gadgetImage: data[index]['gadget_image'],
                    gadgetName: data[index]['gadget_name'],
                    comment: data[index]['comment'],
                    score: int.parse(data[index]['score'].toString()),
                    heart: int.parse(data[index]['heart'].toString()),
                    createdAt: DateTime.parse(data[index]['created_at']),
                    userId: data[index]['user_id'],
                  );
                  final dynamic postUserId = await supabase
                      .from('users')
                      .select()
                      .eq('user_id', data[index]['user_id'])
                      .single();
                  final users = Users(
                    id: postUserId['id'],
                    userId: postUserId['user_id'],
                    name: postUserId['name'],
                    userName: postUserId['user_name'],
                    selfIntroduce: postUserId['self_introduce'],
                    image: postUserId['image'],
                    createdAt: DateTime.parse(postUserId['created_at']),
                    updateTime: DateTime.parse(postUserId['updated_at']),
                  );
                  await context
                      .pushNamed(
                    routerPath,
                    extra: Model(users, posts),
                  )
                      .then((value) {
                    if (value != null) {
                      refresh();
                    }
                  });
                },
                child: Card(
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: MediaQuery.of(context).size.width / 3,
                      color: Colors.white,
                      child: CachedNetworkImage(
                        imageUrl: supabase.storage
                            .from('food')
                            .getPublicUrl(data[index]['food_image']),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        : AppEmpty();
  }
}
