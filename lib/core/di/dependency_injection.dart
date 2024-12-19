import 'package:dio/dio.dart';
import 'package:flutter_dev/features/home/data/apis/home_api_services.dart';
import 'package:flutter_dev/features/home/data/repo/home_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repo/login_repo.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/sign_up/data/repo/sign_up_repo.dart';
import '../../features/sign_up/logic/sign_up_cubit.dart';
import '../networking/api_service.dart';
import '../networking/dio_factory.dart';

final getIt = GetIt.instance;

/// we put all our dependency injection in this function
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));

  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
