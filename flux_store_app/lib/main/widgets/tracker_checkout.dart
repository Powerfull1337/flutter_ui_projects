import 'package:flutter/material.dart';

class TrackerCheckout extends StatelessWidget {
  const TrackerCheckout({super.key, required this.colorFirstIcon, required this.colorSecondIcon, required this.colorThirdIcon});

  final Color colorFirstIcon;
  final Color colorSecondIcon;
  final Color colorThirdIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on,
          color: colorFirstIcon,
          size: 30,
        ),
        const SizedBox(width: 8),
        ...List.generate(
            5,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 6,
                    height: 4,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                )),
        const SizedBox(width: 8),
        Icon(
          Icons.card_travel,
          color: colorSecondIcon,
          size: 30,
        ),
        const SizedBox(width: 8),
        ...List.generate(
            5,
            (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                )),
        const SizedBox(width: 8),
        Icon(
          Icons.check_circle,
          color: colorThirdIcon,
          size: 30,
        ),
      ],
    );
  }
}
