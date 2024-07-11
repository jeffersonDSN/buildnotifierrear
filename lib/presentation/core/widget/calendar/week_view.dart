import 'package:flutter/material.dart';

class WeekView extends StatelessWidget {
  const WeekView({super.key});

  @override
  Widget build(BuildContext context) {
    // Obter a data de hoje
    DateTime now = DateTime.now();

    // Calcular a data do início da semana (domingo)
    DateTime startOfWeek = now.subtract(Duration(days: now.weekday % 7));

    return Row(
      children: List.generate(
        7,
        (index) {
          DateTime day = startOfWeek.add(Duration(days: index));
          return Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Expanded(
                child: Column(
                  children: [
                    Text(
                      "${_dayOfWeek(index)}\n${day.day}",
                      textAlign: TextAlign.center,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Spacer(),
                          if (index < 6) const VerticalDivider(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  // Método auxiliar para obter o nome do dia da semana
  String _dayOfWeek(int index) {
    List<String> daysOfWeek = ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb'];
    return daysOfWeek[index];
  }
}

class DayRow extends StatelessWidget {
  final DateTime date;

  const DayRow({
    super.key,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text('${date.day}'),
            ),
          ),
          // Adicione eventos aqui
        ],
      ),
    );
  }
}
