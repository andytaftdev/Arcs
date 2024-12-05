import 'package:arcs_slicing/data/model/response/auth_response_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthLocalDatasource {
  // Save authentication data locally
  Future<void> saveAuthData(AuthResponseModel authResponseModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('authData', authResponseModel.toJson());
  }

  // Remove authentication data (logout)
  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('authData');
  }

  // Retrieve authentication data
  Future<AuthResponseModel?> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('authData');

    if (authData != null && authData.isNotEmpty) {
      return AuthResponseModel.fromJson(authData);
    }
    return null;
  }

  // Check if user is authenticated
  Future<bool> ifAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('authData');
    return authData != null && authData.isNotEmpty;
  }
}
