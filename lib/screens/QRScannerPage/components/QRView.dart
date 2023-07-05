import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRViewer extends StatelessWidget {
  final Key qrKey;
  final Function callbackQRViewController;
  final Function callbackBarcode;
  const QRViewer({super.key, required this.qrKey, required this.callbackQRViewController, required this.callbackBarcode});

  @override
  Widget build(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
          cutOutSize: MediaQuery.of(context).size.width*0.7,
          borderWidth: 10,
          borderRadius: 10,
          borderLength: 30,
          borderColor: Theme.of(context).primaryColor
      ),
    );
  }

  void onQRViewCreated(QRViewController controller) {
    callbackQRViewController(controller);

    // setState(() {
    //   this.controller = controller;
    // });

    controller.scannedDataStream.listen((barcode) {
      callbackBarcode(barcode);

      // setState(() {
      //   this.barcode = barcode;
      // });
    });
  }
}
