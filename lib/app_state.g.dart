// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppState on _AppStateBase, Store {
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

  late final _$getConnectivityAsyncAction =
      AsyncAction('_AppStateBase.getConnectivity', context: context);

  @override
  Future<void> getConnectivity(BuildContext context) {
    return _$getConnectivityAsyncAction
        .run(() => super.getConnectivity(context));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
