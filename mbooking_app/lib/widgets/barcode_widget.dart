import 'package:flutter/material.dart';

import 'package:barcode/barcode.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BarcodeWidget extends StatelessWidget {
  final String data;

  const BarcodeWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final barcode = Barcode.code128();

    final svg = barcode.toSvg(data, width: 320, height: 80);

    return Column(
      children: [
        SizedBox(
          width: 300,
          height: 80,
          child: Center(
            child: SvgPicture.string(
              svg,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
