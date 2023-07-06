import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:sih_team_golf/screens/productDetailsScreen.dart';
import 'package:sih_team_golf/utilities/commonStyles.dart';

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
        child: TextButton(
          child:Text(          barcode!=null ? 'Result : ${barcode!.code}'
              :'Scan a Code!',
          maxLines: 8,
          style: const TextStyle(
              color: Colors.white
          )),
          onPressed: () {
            print("Button scanner page pressed ");
            if(barcode!=null) {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (builder) =>
                      ProductDetails(pid: barcode!.code.toString()))
              );
            }
          },
        ),
      );
    }
}

/**
 *
    onTap: () {
    if (barcode != null) {
    print("Barcode Value: ${barcode!.code}");
    Navigator.push(
    context,
    MaterialPageRoute(builder: (builder) =>
    ProductDetails(pid: barcode!.code.toString()))
    );
    }
    },
 */
