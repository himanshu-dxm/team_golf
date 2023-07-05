import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class BottomButton extends StatelessWidget {
  Barcode? barcode;
  BottomButton({super.key, this.barcode});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
            color: Colors.white24
        ),
        child: Text(
          barcode!=null ? 'Result : ${barcode!.code}'
              :'Scan a Code!',
          maxLines: 4,
          style: const TextStyle(
              color: Colors.white
          ),
        ),
      );
    }
  }
