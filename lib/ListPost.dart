import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Post {
  Post(
      this.id,
      this.title,
      this.author,
      this.description,
      this.imageUrl);

  final String id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
}

Future<List<Post>> fetchData() async {
  var response = await http.get('https://js-post-api.herokuapp.com/api/posts?_limit=10&_page=1');

  var jsonData = jsonDecode(response.body);
  var data = jsonData.values.first;

  List<Post> posts = [];
  for (var i in data) {
    Post post = Post(
        i['id'], i['title'], i['author'],
        i['description'], i['imageUrl']);
    posts.add(post);
  }
  print(posts);
  return posts;
}

class ListPost extends StatefulWidget {
  ListPost({Key key}) : super(key: key);

  @override
  _ListPostState createState() => _ListPostState();
}


class _ListPostState extends State<ListPost> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Demo fetch data api'),
        ),
        body: Center(
          child: Container(
            child: FutureBuilder(
              future: fetchData(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                  return Container(
                    child: Center(
                      child: Text("Loading...."),
                    ),
                  );
                }
                return ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:  NetworkImage(
                            snapshot.data[index].imageUrl
                        ),
                      ),
                      title: Text(snapshot.data[index].title),
                      subtitle: Text(snapshot.data[index].description),
                    );
                  },
                );
              },
            ),
          ),
        ),
      );
  }
}
