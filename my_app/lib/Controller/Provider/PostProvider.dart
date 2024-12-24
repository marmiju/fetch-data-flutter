import 'package:my_app/Controller/API_Service/Api_service.dart';
import 'package:my_app/Model/Post_model.dart';
import 'package:riverpod/riverpod.dart';

final apiServiceProvider = Provider<ApiService>((ref) => ApiService());

final PostProvider = FutureProvider<List<Post>>((ref) {
  return ref.read(apiServiceProvider).fetchPost();
});
