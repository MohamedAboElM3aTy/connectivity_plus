import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  StreamSubscription? _subscription; 
  InternetCubit() : super(InternetInitial());
  List<ConnectivityResult> _connectionStatus = [ConnectivityResult.none];
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;
  
  void connected(){
    emit(ConnectedState(message: "Connected"));
  }

  void notConnected(){
    emit(NotConnectedState(message: "Not Connected"));
  }

  void checkConnection() {
    // _connectivity.onConnectivityChanged.listen(onData)
    
    // _subscription = Connectivity()
    //     .onConnectivityChanged
    //     .listen((ConnectivityResult result) {
    //   if (result == ConnectivityResult.wifi ||
    //       result == ConnectivityResult.mobile) {
    //     connected();
    //   } else {
    //     notConnected();
    //   }
    // } as void Function(List<ConnectivityResult> event)?);
  }
}
  