import 'dart:convert';
import 'dart:math';

import 'package:my_app/Model/Post_model.dart';
import 'package:http/http.dart' as http;


 const endpoint = 'https://jsonplaceholder.typicode.com/users/1/posts';


class ApiService {
  
  final url = Uri.parse(endpoint);

 Future<List<Post>> fetchPost () async {
    final response = await  http.get(url);

    if(response.statusCode==200){
        
         List<dynamic> data = json.decode(response.body);
         return data.map((e)=> Post.fromJson(e)).toList();

    }else{
      throw Exception('failed to fetch post!');
    }
     
    
 }

}