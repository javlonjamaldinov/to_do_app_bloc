import 'package:flutter/material.dart';
import 'package:to_do_app_bloc/models/tasks.dart';

class PopupMenu extends StatelessWidget {
  final VoidCallback cancelOrDeleteCallback;
  final VoidCallback likeOrDislike;
  final Task task;
  const PopupMenu({
    super.key,
    required this.cancelOrDeleteCallback,
    required this.likeOrDislike,
    required this.task,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: task.isDeleted == false
          ? (context) => [
                PopupMenuItem(
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                  ),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: TextButton.icon(
                    onPressed: likeOrDislike,
                    icon: task.isFavorite == false
                        ? const Icon(Icons.bookmark_add_outlined)
                        : const Icon(Icons.bookmark_remove),
                    label: task.isFavorite == false
                        ? const Text('Add to Bookmarks')
                        : const Text('Remove from Bookmarks'),
                  ),
                ),
                PopupMenuItem(
                  onTap: cancelOrDeleteCallback,
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.delete),
                    label: const Text('Delet'),
                  ),
                ),
              ]
          : (context) => [
                PopupMenuItem(
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.restore_from_trash),
                    label: const Text('Restore'),
                  ),
                  onTap: () {},
                ),
                PopupMenuItem(
                  onTap: cancelOrDeleteCallback,
                  child: TextButton.icon(
                    onPressed: null,
                    icon: const Icon(Icons.delete_forever),
                    label: const Text('Delete Forever'),
                  ),
                ),
              ],
    );
  }
}
