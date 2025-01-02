import 'package:flutter/material.dart';

class BoardCard extends StatelessWidget {
  const BoardCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/main/beauty2.jpg',
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/main/beauty2.jpg',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Image.asset(
                        'assets/images/main/beauty3.jpg',
                        height: 70,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Going out outfits',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              )
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            '36 items',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
