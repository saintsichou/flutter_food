import 'package:dio/dio.dart';

class HttpRequest {
  static BaseOptions options = BaseOptions(
    baseUrl: "http://123.207.32.32:8001/api/",
    connectTimeout: 5000,
  );
  static final Dio dio = Dio(options);
  static Future<T> request<T>(String url,
      {String method = "get",
      Map<String, dynamic> params,
      Interceptor inter}) async {
    final option = Options(method: method);
    Interceptor dInter =
        InterceptorsWrapper(onRequest: (RequestOptions options) {
      // print('请求拦截');
      return options;
    }, onResponse: (Response response) {
      return response;
    }, onError: (DioError err) {
      return err;
    });
    List<Interceptor> inters = [dInter];
    if (inter != null) {
      inters.add(inter);
    }
    dio.interceptors.addAll(inters);
    try {
      Response response =
          await dio.request<T>(url, queryParameters: params, options: option);
          return response.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
  }
}
