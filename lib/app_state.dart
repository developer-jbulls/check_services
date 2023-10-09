import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mobx/mobx.dart';

part 'app_state.g.dart';

class AppState = _AppStateBase with _$AppState;

abstract class _AppStateBase with Store {
  _AppStateBase(BuildContext context) {
    getConnectivity(context);
  }

  @readonly
  StreamSubscription? _subscription;

  @readonly
  bool _isDeviceConnected = false;

  @readonly
  bool _isAlertSet = false;

  @action
  Future<void> getConnectivity(BuildContext context) async {
    _subscription = Connectivity().onConnectivityChanged.listen((event) async {
      _isDeviceConnected = await InternetConnectionChecker().hasConnection;
      if (!_isDeviceConnected && (_isAlertSet = false)) {
        if (context.mounted) {
          showNoInternetDialog(context);
        }
      }
    });
  }

  @action
  Future<void> internetDialogAction(BuildContext context) async {
    Navigator.of(context).pop();
    _isAlertSet = false;
    _isDeviceConnected = await InternetConnectionChecker().hasConnection;
    if (!_isDeviceConnected) {
      if (context.mounted) {
        showNoInternetDialog(context);
        _isAlertSet = true;
      }
    }
  }

  @action
  showNoInternetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('No Internet Connection'),
        content: const Text(
            'Unable to access services required to run app as No internet connection is available.'),
        actions: [
          ElevatedButton(
            onPressed: () async => internetDialogAction(context),
            child: const Text('Okay'),
          ),
        ],
      ),
    );
  }

  @action
  void dispose() {
    _subscription!.cancel();
  }
}
