import 'package:flutter/material.dart';
import 'package:to_do_app_bloc/screens/my_drawer.dart';

import '../blocs/bloc_exports.dart';
import '../widgets/tasks_list.dart';

class RecyleBin extends StatelessWidget {
  const RecyleBin({super.key});
  static const id = 'recylce_bin_screen';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Recycle Bin"),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          drawer: const MyDrawer(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Chip(
                  label: Text(
                    '${state.removedTasks.length}Tasks',
                  ),
                ),
              ),
              TasksList(tasksList: state.removedTasks),
            ],
          ),
        );
      },
    );
  }
}
