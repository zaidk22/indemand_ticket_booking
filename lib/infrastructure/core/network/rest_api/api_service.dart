import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:indemand_ticket_booking/domain/core/constants/api_constants.dart';
import '../../../../domain/core/constants/storage_constants.dart';
import '../../../../domain/core/helper/secure_storage.dart';
import 'api_error_interceptors.dart';


class ApiService {
  static final BaseOptions options = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(milliseconds: 8000), //5s
    receiveTimeout: const Duration(milliseconds:20000),  //15s
    contentType: Headers.jsonContentType,
  );
  final interceptor = InterceptorsWrapper(
    onRequest: (options, handler) async {
      // Do something before request is sent
      final storage = Storage().secureStorage;
      final userToken = await storage.read(key: StorageConstants.accessKey);

      // const String userToken = "SharedPreferencesService.userToken";
      // if (userToken == null) {
      //   return handler.reject(UnauthorizedException(options));
      // } else {
      options.headers.addAll({
        "Authorization": "Bearer $userToken",
      });

      return handler.next(options);
      // } //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(response)`.
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: `handler.reject(dioError)`
    },
    onResponse: (response, handler) {
      // Do something with response data
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: `handler.reject(dioError)`
    },
    onError: (DioException e, handler) {
      // Do something with response error
      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(response)`.
    },
  );

  Dio dioUnauthorizedClient = Dio(options)
    ..interceptors.addAll([
      LogInterceptor(),
      AppInterceptors(),
    ]);

  Dio dioAuthorizedClient = Dio(options)
    ..interceptors.addAll([
      LogInterceptor(),
      AppInterceptors(),
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          // Do something before request is sent
          final storage = Storage().secureStorage;
          final userToken = await storage.read(key: StorageConstants.accessKey);

          log("access key $userToken");
          // const String userToken = "SharedPreferencesService.userToken";
          // if (userToken == null) {
          //   return handler.reject(UnauthorizedException(options));
          // } else {
          options.headers.addAll({
            "Authorization": "Bearer $userToken",
          });

          return handler.next(options);
          // } //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: `handler.resolve(response)`.
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: `handler.reject(dioError)`
        },
        onResponse: (response, handler) {
          // Do something with response data
          return handler.next(response); // continue
          // If you want to reject the request with a error message,
          // you can reject a `DioError` object eg: `handler.reject(dioError)`
        },
        onError: (DioException e, handler) {
          // Do something with response error
          return handler.next(e); //continue
          // If you want to resolve the request with some custom data，
          // you can resolve a `Response` object eg: `handler.resolve(response)`.
        },
      ),
    ]);
}
