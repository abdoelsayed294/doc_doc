import 'package:dio/dio.dart';
import 'package:doc_now/core/networking/api_service.dart';
import 'package:doc_now/core/networking/dio_factory.dart';
import 'package:doc_now/features/login/data/repository/login_repo.dart';
import 'package:doc_now/features/login/logic/cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>( () => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>( () => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>( () => LoginCubit(getIt()));

}