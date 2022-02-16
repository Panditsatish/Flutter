import 'dart:async';
import 'dart:io' show Platform;
import 'package:flutter/services.dart';

class SatMicro{
  static const  MethodChannel _channel=
  const MethodChannel('testing');
  late List<String>    _kScopes;
  late String  _kClientID, _kAuthority;
  late String _androidConfigAssetPath;


  SatMicro(
  {String? kClientID,
    String? kAuthority,
    List<String>? kScopes,
    String? androidConfigAssetPath

}
      ){
    _kClientID = kClientID!;
    _kAuthority = kAuthority!;
    _kScopes = kScopes!;
    _androidConfigAssetPath = androidConfigAssetPath!;

    if (Platform.isAndroid)
      _channel.invokeMethod("init", _createMethodCallArguments());

}
  Map<String, dynamic> _createMethodCallArguments() {
    var res = <String, dynamic>{
      "kScopes": _kScopes,
      "kClientID": _kClientID,
      "kAuthority": _kAuthority
    };
    if (Platform.isAndroid) {
      res.addAll({"configPath": _androidConfigAssetPath});
    }
    print(res);
    return res;
  }

  Future<String> get acquireTokenInteractively async {
    final String token = await _channel.invokeMethod(
        'acquireTokenInteractively', _createMethodCallArguments());
    return token;
  }

  /// Acquire auth token silently.
  Future<String> get acquireTokenSilently async {
    final String token = await _channel.invokeMethod(
        'acquireTokenSilently', _createMethodCallArguments());
    return token;
  }

  /// Android only. Get username of current active account.
  Future<String> get loadAccount async {
    final result = await _channel.invokeMethod(
        'loadAccount', _createMethodCallArguments());
    return result;
  }

  /// Sign out of current active account.
  Future<String> get signOut async {
    final String token =
    await _channel.invokeMethod('signOut', _createMethodCallArguments());
    return token;
  }

}

