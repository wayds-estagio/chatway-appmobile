import 'package:chatway/app/models/help.model.dart';
import 'package:chatway/app/utils/api_response.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:dio/dio.dart';

class HomeApi {
  static Future<ApiResponse<NeedHelp>> getHelp() async {
    try {
      Dio dio = Dio();

      dio.options.baseUrl = "${Consts.baseURL}";
      dio.options.connectTimeout = 3000;
      dio.options.receiveTimeout = 3000;
      dio.options.headers['content-Type'] = 'application/json';

      var response =
          await dio.get("/api/v1/fraseAjuda/5e565e46f2c90134cc10d0eb");

      // print('>Home Api getHelp: Response status: ${response.statusCode}');
      // print('>Home Api getHelp: Response body: ${response.data}');

      if (response.statusCode == 200) {
        NeedHelp needHelp = NeedHelp.fromJson(response.data);

        return ApiResponse.ok(needHelp, "Api: Home need help sucess");
      }

      return ApiResponse.error("error");
    } catch (error, exception) {
      print("Api: Error in home need help > $error > $exception");

      return ApiResponse.error("Api: Home need help error");
    }
  }
}
