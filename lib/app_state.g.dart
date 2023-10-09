// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppStateBase, Store {
  late final _$_subscriptionAtom =
      Atom(name: '_AppStateBase._subscription', context: context);

  StreamSubscription<dynamic>? get subscription {
    _$_subscriptionAtom.reportRead();
    return super._subscription;
  }

  @override
  StreamSubscription<dynamic>? get _subscription => subscription;

  @override
  set _subscription(StreamSubscription<dynamic>? value) {
    _$_subscriptionAtom.reportWrite(value, super._subscription, () {
      super._subscription = value;
    });
  }

  late final _$_isDeviceConnectedAtom =
      Atom(name: '_AppStateBase._isDeviceConnected', context: context);

  bool get isDeviceConnected {
    _$_isDeviceConnectedAtom.reportRead();
    return super._isDeviceConnected;
  }

  @override
  bool get _isDeviceConnected => isDeviceConnected;

  @override
  set _isDeviceConnected(bool value) {
    _$_isDeviceConnectedAtom.reportWrite(value, super._isDeviceConnected, () {
      super._isDeviceConnected = value;
    });
  }

  late final _$_isAlertSetAtom =
      Atom(name: '_AppStateBase._isAlertSet', context: context);

  bool get isAlertSet {
    _$_isAlertSetAtom.reportRead();
    return super._isAlertSet;
  }

  @override
  bool get _isAlertSet => isAlertSet;

  @override
  set _isAlertSet(bool value) {
    _$_isAlertSetAtom.reportWrite(value, super._isAlertSet, () {
      super._isAlertSet = value;
    });
  }

  late final _$getConnectivityAsyncAction =
      AsyncAction('_AppStateBase.getConnectivity', context: context);

  @override
  Future<void> getConnectivity(BuildContext context) {
    return _$getConnectivityAsyncAction
        .run(() => super.getConnectivity(context));
  }

  late final _$internetDialogActionAsyncAction =
      AsyncAction('_AppStateBase.internetDialogAction', context: context);

  @override
  Future<void> internetDialogAction(BuildContext context) {
    return _$internetDialogActionAsyncAction
        .run(() => super.internetDialogAction(context));
  }

  late final _$_AppStateBaseActionController =
      ActionController(name: '_AppStateBase', context: context);

  @override
  dynamic showNoInternetDialog(BuildContext context) {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.showNoInternetDialog');
    try {
      return super.showNoInternetDialog(context);
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_AppStateBaseActionController.startAction(
        name: '_AppStateBase.dispose');
    try {
      return super.dispose();
    } finally {
      _$_AppStateBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
