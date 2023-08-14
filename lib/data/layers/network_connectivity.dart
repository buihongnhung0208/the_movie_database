// import 'dart:async';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
//
// class NetworkConnectivity {
//   static NetworkConnectivity? _instance;
//   StreamSubscription? _subscription;
//   ConnectivityResult? connectivityResult;
//
//   static NetworkConnectivity get instance => _instance ??= NetworkConnectivity._();
//
//   Stream<ConnectivityResult> get onConnectivityChanged => Connectivity().onConnectivityChanged;
//
//   NetworkConnectivity._();
//
//   void observerConnectivity() {
//     _subscription?.cancel();
//     _subscription = Connectivity().onConnectivityChanged.listen((result) {
//       connectivityResult = result;
//     });
//   }
//
//   Future<bool> get isConnected async {
//     connectivityResult ??= await Connectivity().checkConnectivity();
//     return connectivityResult != ConnectivityResult.none;
//   }
//
//   void dispose() {
//     _subscription?.cancel();
//   }
// }
