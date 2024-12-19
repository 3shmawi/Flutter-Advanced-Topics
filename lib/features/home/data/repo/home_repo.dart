import 'package:flutter_dev/core/networking/api_result.dart';
import 'package:flutter_dev/features/home/data/models/specializations_response_model.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../apis/home_api_services.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getSpecializations() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
