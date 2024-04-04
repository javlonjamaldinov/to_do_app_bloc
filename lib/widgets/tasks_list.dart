import 'package:flutter/material.dart';
import 'package:to_do_app_bloc/blocs/bloc_exports.dart';

import '../models/tasks.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasksList,
  });

  final List<Task> tasksList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: ExpansionPanelList.radio(
          children: tasksList
              .asMap()
              .map(
                (index, task) => MapEntry(
                  index,
                  ExpansionPanelRadio(
                    value: index,
                    headerBuilder: (context, isOpen) => TaskTile(task: task),
                    body: ListTile(
                      title: SelectableText.rich(
                        TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Text\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: task.title),
                            const TextSpan(
                              text: '\n\nDescription\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: task.description),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ),
      ),
    );
  }
}
