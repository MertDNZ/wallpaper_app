import 'dart:io';

import 'package:dio/dio.dart';
import 'package:wallpaper_app/core/constants/api_constants.dart';
import 'package:wallpaper_app/core/constants/text_strings.dart';
import 'package:wallpaper_app/core/resources/connection_info.dart';
import 'package:wallpaper_app/core/resources/data_state.dart';
import 'package:wallpaper_app/data/models/results.dart';
import 'package:wallpaper_app/service/remote_service.dart';

abstract class AppRepository {
  Future<DataState<Results>> getEditorsChoice();
}

class AppRepositoryImpl implements AppRepository {
  final ApiService _remoteDataSource;
  final ConnectionInfo _connectionInfo;

  AppRepositoryImpl(this._remoteDataSource, this._connectionInfo);

  @override
  Future<DataState<Results>> getEditorsChoice() async {
    if (await _connectionInfo.isConnected!) {
      try {
        final httpResponse = await _remoteDataSource.getEditorsChoice(
            apiKey: ApiConstants.apiKey, editorsChoice: true);

        if (httpResponse.response.statusCode == HttpStatus.ok) {
          return DataSuccess(httpResponse.data);
        } else {
          return DataFailed(DioException(
              error: httpResponse.response.statusMessage,
              response: httpResponse.response,
              type: DioExceptionType.badResponse,
              requestOptions: httpResponse.response.requestOptions));
        }
      } on DioException catch (e) {
        return DataFailed(e);
      }
    } else {
      return const ConnectionError(AppStrings.connectionError);
    }
  }
}
