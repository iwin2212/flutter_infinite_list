import 'package:flutter/material.dart';
import 'package:flutter_infinite_list/posts/posts.dart';

class PostListItem extends StatelessWidget {
  final Post post;
  const PostListItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      child: ListTile(
        leading: Text('${post.id}', style: textTheme.bodySmall),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
