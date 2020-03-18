import 'package:dashboard/classes/corona_result.dart';
import 'package:http/http.dart';
import 'dart:convert';

class ApiService {
  final url = "http://hpb.health.gov.lk/api/get-current-statistical";

  Future<Data> fetchCoronaData() async {
    final response = await get(url);
    if (response.statusCode == 200) {
      final jsonResult = json.decode(response.body);
      print(jsonResult);
      final data =  CoronaResult.fromJson(jsonResult).data;
      return data;
    }

    return null;
  }
}
