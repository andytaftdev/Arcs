import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:arcs_slicing/data/dataresource/auth_local_datasource.dart';
import 'package:arcs_slicing/data/model/response/auth_response_model.dart';

class AuthRemoteDatasource {
  // Login function
  Future<Either<String, AuthResponseModel>> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('http://172.20.3.2:8000/api/login'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'email': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        final authResponse = AuthResponseModel.fromJson(response.body);
        await AuthLocalDatasource().saveAuthData(authResponse); // Save auth data locally
        return Right(authResponse);
      } else {
        return Left('Login failed: ${jsonDecode(response.body)['message']}');
      }
    } catch (e) {
      return Left('Login error: $e');
    }
  }

  // Logout function
  Future<Either<String, String>> logout() async {
    try {
      final authData = await AuthLocalDatasource().getAuthData();
      final token = authData?.token;

      if (token == null) {
        return Left('No token found. User might already be logged out.');
      }

      final response = await http.post(
        Uri.parse('http://172.20.3.2:8000/api/logout'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        await AuthLocalDatasource().removeAuthData(); // Clear auth data locally
        return Right('Logout successful');
      } else {
        return Left('Logout failed: ${jsonDecode(response.body)['message']}');
      }
    } catch (e) {
      return Left('Logout error: $e');
    }
  }
}
