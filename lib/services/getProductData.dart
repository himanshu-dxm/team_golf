import 'dart:convert';
import 'package:http/http.dart' as http;

class JSONDetails {
  static const String _baseUrl = "https://ipfs.io/ipfs/";

  static Future getProductData(String productId ) async {
    final url = Uri.parse(_baseUrl+productId);
    try {
      var request = http.Request(
        'GET',
        url
      );
      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      }
      else {
        print(response.reasonPhrase);
      }

    } on Exception catch (e) {
      print(e.toString());
      throw e;
    }
    return null;
    }
  }

