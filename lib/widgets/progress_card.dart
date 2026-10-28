import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  final int done;
  final int total;

  const ProgressCard({super.key, required this.done, required this.total});

  @override
  Widget build(BuildContext context) {
    final percent = total == 0 ? 0 : (done * 100 / total).round();

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const Icon(Icons.local_fire_department, size: 40),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Progres hari ini'),
                Text(
                  '$done dari $total habit',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '$percent%',
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}