import 'package:dio/dio.dart';

final dio = Dio();

class ApiHelper {
  static Future<dynamic> get(Uri url, Map<String, String> header) async {
    // final response = await http.get(
    //   url,
    //   headers: headers,dio
    // );
    final response = await dio.get(
      url.toString(),
      options: Options(
        headers: header,
      ),
    );

    return response;
  }

  static Future<dynamic> post({
    required Uri url,
    required Map<String, String>? header,
    required Object? body,
  }) async =>
      dio.post(
        url.toString(),
        data: body,
        options: Options(
          headers: header,
        ),
      );

  // static Future<dynamic> put(Uri url) async {
  //   final response = await http.put(
  //     url,
  //     // headers: headers,
  //   );
  //   return response;
  // }

  // static Future<dynamic> patch(Uri url) async {
  //   final response = await http.patch(
  //     url,
  //     // headers: headers,
  //   );
  //   return response;
  // }

  // static Future<dynamic> delete(Uri url) async {
  //   final response = await http.delete(
  //     url,
  //     // headers: headers,
  //   );
  //   return response;
  // }
}
