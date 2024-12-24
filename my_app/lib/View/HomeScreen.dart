import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_app/Controller/Provider/PostProvider.dart';

class Homescreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postdata = ref.watch(PostProvider);
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: postdata.when(
        data: (posts){
           return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (_,index){
               final post = posts[index];
               return ListTile(
                leading: Text(post.id.toString()),
                title:Text(post.tittle),
                subtitle: Text(post.body),
               );
            });
        }, 
        error:(error,s)=> Center(child: Text(error.toString())),
        loading:()=>Center(child:CircularProgressIndicator(),))
    );
  }
}
