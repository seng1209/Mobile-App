import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:e_commerce/model/category_model.dart';

class CategoryService {
  final baseUrl = "http://localhost:8000/api/v1";

  Map<String, String> get _headers => {
    'Content-Type': "application/json",
  };

  Future<List<Map<String, dynamic>>> getCategories() async {
    try{
      final response = await http.get(Uri.parse("$baseUrl/categories"), headers: _headers);
      if(response.statusCode == 200){
        return List<Map<String, dynamic>>.from(jsonDecode(response.body)['data']);
        // final body = jsonDecode(response.body);
        // final List<dynamic> data = body['data'];
        // return data.map((item) => Category.fromJson(item)).toList();
      }else{
        throw 'Server error: ${response.statusCode}';
      }
    }catch(e){
      throw 'Failed to load categories: ${e.toString()}';
    }
  }

}