


import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'core/network/device_connectivity.dart';
import 'core/network/network_availability.dart';
import 'core/utils/services/attachments_service.dart';
import 'core/utils/services/dio_client.dart';
import 'data/datasources/local_data_source.dart';
import 'data/datasources/remote_data_source.dart';
import 'data/repositories/petcoke_repository.dart';
import 'logic/Attendance_cubit/attendance_cubit.dart';
import 'logic/Home_cubit/home_cubit.dart';
import 'logic/login_cubit/login_cubit.dart';
import 'logic/profile_cubit/profile_cubit.dart';
import 'logic/shipment_registeration_cubit/shipment_registeration_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {
//! blocs/cubits

  sl.registerFactory(() => LoginCubit(petCokeRepository: sl()));
  sl.registerFactory(() => HomeCubit(petCokeRepository: sl()));
  sl.registerFactory(() => AttendanceCubit(petCokeRepository: sl()));
  sl.registerFactory(() => ShipmentRegistrationCubit(petCokeRepository: sl(), attachmentsService: sl()));
  sl.registerFactory(() => ProfileCubit(petCokeRepository: sl()));
  //! Repositories
  sl.registerLazySingleton<PetCokeRepository>(() => PetCokeRepositoryImpl(
    remoteDataSource: sl(),
    localDataSource:sl(),
    deviceConnectivity: sl()
  ));

//! Datasources
  sl.registerLazySingleton<RemoteDataSource>(
          () => RemoteDataSourceImpl(client: sl()));

  // sl.registerLazySingleton<RemoteDataSource>(
  //     () => RemoteDataSourceImpl(client: sl()));

  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());

//! Core
   sl.registerLazySingleton(() => DioClient(sl()));
//   sl.registerLazySingleton(() => LocalStorageService(sl()));
//   sl.registerLazySingleton<NetworkAvailability>(
//           () => NetworkAvailabilityImpl(sl()));
  sl.registerLazySingleton<DeviceConnectivity>(
          () => DeviceConnectivityImpl(sl()));
  sl.registerLazySingleton(() => AttachmentsService(sl()));
//   sl.registerFactory(() => SignalRHelper('http://localhost:5000/chatHub'));

//! External
//   final sharedPreferences = await SharedPreferences.getInstance();
//   sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio(BaseOptions(
    receiveDataWhenStatusError: true,
    connectTimeout:  Duration(seconds: 60*1000),
    receiveTimeout:Duration(seconds: 60*1000),
  )));
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => ImagePicker());
}