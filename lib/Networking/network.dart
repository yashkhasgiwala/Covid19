import 'package:http/http.dart' as http;
import 'dart:convert';

class Network {
  Network(this.url);
  String url;
  var data1;
  Future getData() async {
    http.Response response = await http.get('$url');
    if (response.statusCode == 200) {
      print(response.statusCode);
      String data = response.body;
      print(jsonDecode(data));
      data1 = jsonDecode(data);
      return data1;
    } else {
      print(response.statusCode);
    }
  }

  int i = 0;
  Future<dynamic> getGCases() async {
    return await data1['Global']['TotalConfirmed'];
  }

  Future<dynamic> getGDeaths() async {
    return await data1['Global']['TotalDeaths'];
  }

  Future<dynamic> getMCases() async {
    return await data1['Maharashtra']['districtData']['Mumbai']['confirmed'];
  }

  Future<dynamic> getMDeaths() async {
    return await data1['Maharashtra']['districtData']['Mumbai']['deceased'];
  }
}
