import 'package:flutter/material.dart';

class ResizableEvent extends StatefulWidget {
  const ResizableEvent({super.key});

  @override
  _ResizableEventState createState() => _ResizableEventState();
}

class _ResizableEventState extends State<ResizableEvent> {
  double height = 50;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          height += details.delta.dy;
        });
      },
      child: Container(
        width: 100,
        height: height,
        color: Colors.blue,
        child: const Stack(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.drag_handle),
            ),
          ],
        ),
      ),
    );
  }
}
