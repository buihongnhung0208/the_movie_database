// import 'package:flutter/material.dart';
// import 'package:get_it/get_it.dart';
//
//
// final assembler = GetIt.instance;
//
// void registerCoreDependencies() {
//   Hive.registerAdapter(EncryptionResponseObjectAdapter());
//   Hive.registerAdapter(LoginResponseObjectAdapter());
//   Hive.registerAdapter(AccountHrisAdapter());
//
//   NetworkConnectivity.instance.observerConnectivity();
//
//   assembler.registerLazySingleton<CoreLocalDataSourceType>(() => CoreLocalDataSource());
//   assembler.registerLazySingleton<BaseNetworkCreator>(
//     () => CoreNetworkCreator(assembler.get(), assembler.get()),
//   );
//   assembler.registerLazySingleton(
//     () => CoreNetworkExecutor(assembler.get(), NetworkDecoder.shared, assembler.get()),
//   );
//
//   assembler.registerLazySingleton(
//     () => GetUserLoginTypeUseCase(assembler.get()),
//   );
// }
//
// void registerAppKey(GlobalKey<NavigatorState> appKey) {
//   if (assembler.isRegistered<GlobalKey<NavigatorState>>(instanceName: InstanceName.appKey)) {
//     assembler.unregister<GlobalKey<NavigatorState>>(instanceName: InstanceName.appKey);
//   }
//   assembler.registerSingleton<GlobalKey<NavigatorState>>(appKey, instanceName: InstanceName.appKey);
// }
//
// extension GetItExtension on GetIt {
//   BuildContext? get appContext =>
//       get<GlobalKey<NavigatorState>>(instanceName: InstanceName.appKey).currentContext;
// }
//
// class InstanceName {
//   static const appKey = "app_key";
// }
