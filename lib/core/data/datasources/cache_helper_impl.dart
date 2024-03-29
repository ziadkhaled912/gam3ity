import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:gam3ity/core/data/error/exceptions/client_exception.dart';
import 'package:gam3ity/core/data/datasources/cache_helper.dart';

@Singleton(as: CacheHelper)
class CacheHelperImpl extends CacheHelper {
  final SharedPreferences _sharedPreferences;

  CacheHelperImpl(this._sharedPreferences);

  @override
  Future<bool> has(String key) async {
    final bool f = await _basicErrorHandling(() async {
      return _sharedPreferences.containsKey(key) &&
          _sharedPreferences.getString(key) != null &&
          _sharedPreferences.getString(key)!.isNotEmpty;
    });
    return f;
  }

  @override
  Future<bool> clear(String key) async {
    final bool f = await _basicErrorHandling(() async {
      return _sharedPreferences.remove(key);
    });
    return f;
  }

  @override
  Future get(String key) async {
    final f = await _basicErrorHandling(() async {
      if (await has(key)) {
        return await jsonDecode(_sharedPreferences.getString(key)!);
      }
      return null;
    });
    return f;
  }

  @override
  Future<bool> put(String key, dynamic value) async {
    final bool f = await _basicErrorHandling(() async {
      // ignore: unnecessary_await_in_return
      return await _sharedPreferences.setString(key, jsonEncode(value));
    });
    return f;
  }
}

extension on CacheHelper {
  Future<T> _basicErrorHandling<T>(Future<T> Function() onSuccess) async {
    try {
      final f = await onSuccess();
      return f;
    } catch (e) {
      throw ClientException.cacheError(message: e.toString());
    }
  }
}
