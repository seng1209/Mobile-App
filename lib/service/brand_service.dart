import 'dart:convert';
import 'package:e_commerce/model/brand_model.dart';
import 'package:http/http.dart' as http;

class BrandService {
  final baseUrl = "http://localhost:8000/api/v1";

  Map<String, String> get _headers => {
    "Content-Type": "application/json",
  };

  Future<List<Brand>> getBrands() async{
    try{
      final response = await http.get(Uri.parse("$baseUrl/brands"), headers: _headers);
      if(response.statusCode == 200){
        final body = jsonDecode(response.body);
        // print(body);
        final List<dynamic> data = body['data'];
        return data.map((item) => Brand.fromJson(item)).toList();
      }else{
        throw('Server error : ${response.statusCode}');
      }
    }catch(e){
      throw("Failed to load brands ${e.toString()}");
    }
  }

}