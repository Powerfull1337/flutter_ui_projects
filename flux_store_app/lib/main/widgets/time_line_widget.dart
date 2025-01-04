import 'package:flutter/material.dart';
import 'package:flux_store_app/main/models/timeline.dart';

class TimelineTile extends StatelessWidget {
  final TimelineEvent event;
  final bool isFirst;
  final bool isLast;

  const TimelineTile({super.key, 
    required this.event,
    required this.isFirst,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            if (!isFirst)
              Container(
                width: 2,
                height: 20,
                color: Colors.grey,
              ),
            Container(
              decoration: BoxDecoration(
                color: event.isCompleted ? Colors.green : Colors.grey,
                shape: BoxShape.circle,
              ),
              width: 20,
              height: 20,
              child: const Center(
                child: Icon(
                  Icons.check,
                  size: 14,
                  color: Colors.white,
                ),
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 20,
                color: Colors.grey,
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                event.time,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
