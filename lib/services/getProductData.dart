// import 'dart:convert';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:sih_team_golf/model/Product.dart';

class JSONDetails {
  static const String _baseUrl = "https://ipfs.io/ipfs/";

  static Future<Product> getProductData(String productId ) async {
    final url = Uri.parse(_baseUrl+productId);
    try {
      final response = await http.get(url);
      print("URL: "+url.toString());

      if (response.statusCode == 200) {
        print(response.body);
        return Product.fromJson(jsonDecode(response.body));
      }
      else {
        print(response.reasonPhrase);
        throw Exception('Failed to Load Json');
      }

    } on Exception catch (e) {
      print(e.toString());
      throw e;
    }
    }
  }

