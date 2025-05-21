import 'package:exemplo/components/task.dart';
import 'package:flutter/material.dart';

class TaskInherited extends InheritedWidget {
  TaskInherited({super.key, required Widget child}) : super(child: child);

  final List<Task> taskList = [
    Task(
      'Aprender Flutter',
      'https://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
      4,
    ),
    Task(
      'Aprender Node',
      'https://storage.googleapis.com/star-lab/blog/OGs/node.png',
      5,
    ),
    Task(
      'Aprender React',
      'https://pbs.twimg.com/profile_images/1785867863191932928/EpOqfO6d_400x400.png',
      3,
    ),
    Task(
      'Aprender IA',
      'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTAxL3JtNjA5LXNvbGlkaWNvbi13LTAwNS1wLnBuZw.png',
      5,
    ),
  ];

  void newTask(String name, String photo, int difficulty){
    taskList.add(Task(name, photo, difficulty));
  }

  static TaskInherited of(BuildContext context) {
    final TaskInherited? result =
        context.dependOnInheritedWidgetOfExactType<TaskInherited>();
    assert(result != null, 'No TaskInherited found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TaskInherited old) {
    return old.taskList.length != taskList.length;
  }
}
