

import 'package:arcs_slicing/data/dataresource/auth_local_datasource.dart';
import 'package:arcs_slicing/data/model/response/product_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;

class ProductRemoteDataSource {
  Future<Either<String,ProductResponseModel>> getProducts() async {
    final authData = await AuthLocalDatasource().getAuthData();
    final response = await http.get(
      Uri.parse('http://192.168.90.40:8000/api/all-product'),
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'authorization': 'Bearer ${authData?.token}',
      },
    );
    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(response.body));
    } else {
      return Left(response.body);
    }
  }
}