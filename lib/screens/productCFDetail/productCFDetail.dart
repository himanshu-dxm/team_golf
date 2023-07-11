import 'package:flutter/material.dart';
import 'package:sih_team_golf/screens/productCFDetail/components/stackChart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ProductCF extends StatelessWidget {
  final String productName;
  final double totalCarbon;
  final double manufacturingSpends, logisticsSpends, packagingSpends;
  // Product product;
  ProductCF({
    super.key,
    required this.manufacturingSpends,
    required this.logisticsSpends,
    required this.totalCarbon,
    required this.productName,
    required this.packagingSpends
  });

  @override
    Widget build(BuildContext context) {

    /*
    var controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            // CircularProgressIndicator();
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://flutter.dev'));

     */


      return Scaffold(
        body: SafeArea(

          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.black87
              ),
              child: Container(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _title('Carbon Footprint Distribution'),
                    _title('Product Name : ${productName}'),
                    StackedChart(
                      total: totalCarbon,
                      manufacturing: manufacturingSpends,
                      logistics: logisticsSpends,
                      packaging: packagingSpends,
                      others: (totalCarbon-(manufacturingSpends+logisticsSpends+packagingSpends)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Colors.blue
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                    'Manufacturing $manufacturingSpends'
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                    'Logistics $logisticsSpends'
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.red
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                    'Packaging $packagingSpends'
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      color: Colors.pink
                                  ),
                                ),
                                SizedBox(width: 4,),
                                Text(
                                    'Others (Direct+Indirect) ${(totalCarbon-(manufacturingSpends+logisticsSpends+packagingSpends))}'
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 48,),

                          /*
                          ChartLine(
                            title: 'Total',
                            value: totalCarbon,
                            rate: 1,
                            color: Colors.orange,
                          ),
                          ChartLine(
                              title: 'Manufacturing',
                              value: manufacturingSpends,
                              rate: 0.39,
                            color: Colors.green,
                          ),

                           */

                        ]
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      margin: EdgeInsets.all(8),
                      // height: getProportionateScreenHeight(56),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                            backgroundColor: Colors.grey[700]
                          // backgroundColor: Color(0xFFFF7643),
                        ),
                        onPressed: () {
                          // TODO : Redirect to Chrome or Bew View
                          print("See More Tapped");
                          _laumchURLBrowser();
                        },
                        child: Text(
                          "Click To see complete JSON",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),

                    // WebViewWidget(controller: controller)
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    }

    _laumchURLBrowser() async {
    const String baseUrl = "https://jsoncrack.com/widget?json=https://bafkreihe3ss4x5reqrpamttp34rmdq3ldr7gn2fwstxi4onu3773yxzy6e.ipfs.nftstorage.link/";
    final Uri _url = Uri.parse(baseUrl);
    if(await launchUrl(_url,mode: LaunchMode.externalApplication)) {
      // await launch(baseUrl);
    } else {
      throw 'Could Not Launch';
    }
    }

  Widget _title(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 4),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

class ChartLine extends StatelessWidget {
  ChartLine({
    Key? key,
    required this.rate,
    required this.title,
    required this.value,
    this.color = Colors.white30
    // this.number,
  })  : assert(title != null),
        assert(rate != null),
        assert(rate > 0),
        assert(rate <= 1),
        super(key: key);

  final double rate;
  final String title;
  final double value;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final lineWidget = constraints.maxWidth * rate;
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(minWidth: lineWidget),
              child: IntrinsicWidth(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    if (value != null)
                      Text(
                        value.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Container(
              color: color ?? Colors.white30,
              height: 60,
              width: lineWidget,
            ),
          ],
        ),
      );
    });
  }
}