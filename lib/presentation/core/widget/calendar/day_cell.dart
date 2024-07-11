import 'package:flutter/material.dart';

class DayCell extends StatefulWidget {
  final int index;

  const DayCell({
    super.key,
    required this.index,
  });

  @override
  _DayCellState createState() => _DayCellState();
}

class _DayCellState extends State<DayCell> {
  Offset position = Offset(0, 0);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          position += details.delta;
        });
      },
      onPanEnd: (details) {
        // Lógica para finalizar o arraste e soltar em outro dia
      },
      child: Stack(
        children: [
          Positioned(
            left: position.dx,
            top: position.dy,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: const Center(child: Text('Evento')),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('${widget.index + 1}'),
            ),
          ),
        ],
      ),
    );
  }
}
