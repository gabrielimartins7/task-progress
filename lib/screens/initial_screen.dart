import 'package:exemplo/components/task.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacityAnimated = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text('Tarefas'),
        backgroundColor: Colors.orange,
      ),
      body: AnimatedOpacity(
        opacity: opacityAnimated ? 1 : 0,
        duration: Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        child: ListView(
          children: [
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
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacityAnimated = !opacityAnimated;
          });
        },
        backgroundColor: Colors.orange,
        child: Icon(Icons.remove_red_eye),
      ),
    );
  }
}