import 'package:flutter_dev/core/networking/api_error_handler.dart';
import 'package:flutter_dev/features/home/data/models/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.specializationsLoading() = SpecializationsLoading;

  const factory HomeState.specializationsSuccess(
    SpecializationsResponseModel specializationsResponseModel,
  ) = SpecializationsSuccess;

  const factory HomeState.specializationsError(ErrorHandler errorHandler) =
      SpecializationsError;
}
