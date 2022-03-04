import 'package:dio/dio.dart';

class BaseResponse{
  int? statusCode;
  dynamic data;

  BaseResponse(Response? response){
    statusCode=response!=null ?response.statusCode:400;
    data=response!=null?response.data:{};
  }
}