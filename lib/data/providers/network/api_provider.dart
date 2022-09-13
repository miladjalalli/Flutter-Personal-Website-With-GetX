import 'dart:async';
import 'dart:io';
import 'package:either_dart/either.dart';
import 'package:get/get_connect/connect.dart';
import 'package:miladjalali_ir/data/providers/network/api_request_representable.dart';

import '../../../domain/entities/unsplash_search_response.dart';

class APIProvider {
  static const requestTimeOut = Duration(seconds: 25);
  final _client = GetConnect(timeout: requestTimeOut);

  static final _singleton = APIProvider();

  static APIProvider get instance => _singleton;

  Future<Either> request(APIRequestRepresentable request) async {
    try {
      final response = await _client.request(
        request.url,
        request.method.string,
        headers: request.headers,
        query: request.query,
        body: request.body,
      );
      return _returnResponse(response);
    } on TimeoutException catch (_) {
      return Left(TimeOutException(null));
    } on SocketException {
      return Left(FetchDataException('No Internet connection'));
    }
  }

  dynamic _returnResponse(Response<dynamic> response) {
    switch (response.statusCode) {
      case 200:
        return Right(response.body);
      case 400:
        return Left(BadRequestException(response.body.toString()));
      case 401:
      case 403:
      return Left(UnauthorisedException(response.body.toString()));
      case 404:
        return Left(BadRequestException('Not found'));
      case 500:
        return Left( FetchDataException('Internal Server Error'));
      default:
        return Left(FetchDataException('Error occurred while Communication with Server with StatusCode : ${response.statusCode}'));
    }
  }
}

class AppException implements Exception {
  final code;
  final message;
  final details;

  AppException({this.code, this.message, this.details});

  String toString() {
    return "[$code]: $message \n $details";
  }
}

class FetchDataException extends AppException {
  FetchDataException(String? details)
      : super(
    code: "fetch-data",
    message: "Error During Communication",
    details: details,
  );
}

class BadRequestException extends AppException {
  BadRequestException(String? details)
      : super(
    code: "invalid-request",
    message: "Invalid Request",
    details: details,
  );
}

class UnauthorisedException extends AppException {
  UnauthorisedException(String? details)
      : super(
    code: "unauthorised",
    message: "Unauthorised",
    details: details,
  );
}

class InvalidInputException extends AppException {
  InvalidInputException(String? details)
      : super(
    code: "invalid-input",
    message: "Invalid Input",
    details: details,
  );
}

class AuthenticationException extends AppException {
  AuthenticationException(String? details)
      : super(
    code: "authentication-failed",
    message: "Authentication Failed",
    details: details,
  );
}

class TimeOutException extends AppException {
  TimeOutException(String? details)
      : super(
    code: "request-timeout",
    message: "Request TimeOut",
    details: details,
  );
}
