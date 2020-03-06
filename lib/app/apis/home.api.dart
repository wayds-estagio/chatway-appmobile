import 'package:chatway/app/utils/api_response.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class HomeApi {
  static Future<ApiResponse<List<String>>> getHelp(
      {@required String unidade}) async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = "${Consts.baseURL}";
      dio.options.connectTimeout = 5000;
      dio.options.receiveTimeout = 5000;
      dio.options.headers['content-Type'] = 'application/json';

      Map<String, String> queryParams = {"unidade": unidade};

      var response =
          await dio.get("/api/v1/mensagemPadrao", queryParameters: queryParams);

      print('> Home Api getHelp: Response status: ${response.statusCode}');
      //print('> Home Api getHelp: Response body: ${response.data}');

      if (response.statusCode == 200) {
        // List<String> needHelp = response.data;
        // List<String> needHelp = auxList.map((s) => s as String).toList();
        List<dynamic> auxList = response.data;
        List<String> needHelp = auxList.cast<String>();

        return ApiResponse.ok(needHelp, "Api: Home need help sucess");
      }

      return ApiResponse.error("error");
    } catch (error, exception) {
      print("Api: Error in home need help > $error > $exception");

      return ApiResponse.error("Api: Home need help error");
    }
  }
}
