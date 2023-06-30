import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QRScanPage extends StatefulWidget {
  const QRScanPage({super.key});

  @override
  State<QRScanPage> createState() => _QRScanPageState();
}

class _QRScanPageState extends State<QRScanPage> {

  final qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  Barcode? barcode;

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          color: Colors.blueGrey,
          child: Container(
            // padding: EdgeInsets.all(8),
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    print("Button1 Pressed");
                    setState(() {
                      // currentScreen = Dashboard();
                      // currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dashboard ,
                        // color: currentTab==0?Colors.green : Colors.grey,
                      ),
                      Text(
                        'Dashboard',
                        style: TextStyle(
                          // color: currentTab==0?Colors.green : Colors.grey,
                        ),
                      )
                    ],
                  ),

                ),
                MaterialButton(
                  onPressed: () {
                    print("Button2 Pressed");
                    setState(() {
                      // currentScreen = Games();
                      // currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.games_outlined ,
                        // color: currentTab==1?Colors.green : Colors.grey,
                      ),
                      Text(
                        'Games',
                        style: TextStyle(
                          // color: currentTab==1?Colors.green : Colors.grey,
                        ),
                      )
                    ],
                  ),

                ),
                MaterialButton(
                  onPressed: () {
                    print("Button3 Pressed");
                    setState(() {
                      // currentScreen = Education();
                      // currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.library_books_outlined ,
                        // color: currentTab==2?Colors.green : Colors.grey,
                      ),
                      Text(
                        'Educational',
                        style: TextStyle(
                          // color: currentTab==2?Colors.green : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    print("Button4 Pressed");
                    setState(() {
                      // currentScreen = Reels();
                      // currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.slow_motion_video_outlined ,
                        // color: currentTab==3?Colors.green : Colors.grey,
                      ),
                      Text(
                        'Reels',
                        style: TextStyle(
                          // color: currentTab==3?Colors.green : Colors.grey,
                        ),
                      )
                    ],
                  ),

                )
              ],
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            buildQRView(context),
            Positioned(
              bottom: 10,
              child:buildResult()
            ),
            Positioned(
              top: 10,
              child: buildControlButtons()
            )
          ],
        ),
      ),
    );
  }
  Widget buildControlButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white24
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () async {
                  await controller?.toggleFlash();
                setState(() {

                });
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
                setState(() {

                });
              },
              icon: Icon(Icons.flip_camera_android)
          )
        ],
      ),
    );
  }
  Widget buildResult() {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white24
      ),
      child: Text(
        barcode!=null ? 'Result : ${barcode!.code}'
        :'Scan a Code!',
        maxLines: 4,
        style: TextStyle(
          color: Colors.white
        ),
      ),
    );
  }
  Widget buildQRView(BuildContext context) => QRView(
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

  void onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    
    controller.scannedDataStream.listen((barcode) {
      setState(() {
        this.barcode = barcode;
      });
    });
  }
}
