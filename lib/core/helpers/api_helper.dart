import 'package:dio/dio.dart';

class ApiHelper {
  final Dio dio;

  ApiHelper({required this.dio});
  final String domain = "https://wallet.newsmart.tech/";
  final String api = "api/";

  Future get({required String endPoint, String? query}) async {
    var response = await dio.get("$domain$api$endPoint");
    return response.data;
  }

  Future post({
    required String endPoint,
    required Map<String, dynamic> body,
  }) async {
    Response response = await dio.post("$domain$api$endPoint", data: body);
    return response.data;
  }
}
