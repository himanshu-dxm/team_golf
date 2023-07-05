import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ControlButtons extends StatelessWidget {

  QRViewController? controller;
  final Function callbackFlash;
  ControlButtons({super.key, this.controller, required this.callbackFlash});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white24
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () async {
                await controller?.toggleFlash();
                callbackFlash;
              },
              icon: FutureBuilder<bool?>(
                future: controller?.getFlashStatus(),
                builder: (context, snapshot) {
                  if(snapshot.data!=null) {
                    return Icon(
                        snapshot.data! ? Icons.flash_on : Icons.flash_off
                    );
                  } else {
                    return Container();
                  }
                },
              )
          ),
          IconButton(
              onPressed: () async {
                await controller?.flipCamera();
                callbackFlash;
              },
              icon: const Icon(Icons.flip_camera_android)
          )
        ],
      ),
    );
  }
}
