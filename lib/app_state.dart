import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mobx/mobx.dart';

part 'app_state.g.dart';

class AppState = _AppStateBase with _$AppState;

abstract class _AppStateBase with Store {

  @readonly
  bool _isDeviceConnected = false;

  @action
  Future<void> getConnectivity(BuildContext context) async {
    Connectivity().onConnectivityChanged.listen((event) async {
      _isDeviceConnected = await InternetConnectionChecker().hasConnection;
    });
  }

}
