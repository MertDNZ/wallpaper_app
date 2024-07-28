import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wallpaper_app/data/models/results.dart';
import "../core/constants/api_constants.dart";
part 'remote_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('')
  Future<HttpResponse<Results>> getEditorsChoice({
    @Query("key") String? apiKey,
    @Query("editors_choice") bool? editorsChoice,
  });
}
