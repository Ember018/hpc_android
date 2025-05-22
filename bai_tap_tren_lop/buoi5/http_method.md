# Các phương thức HTTP

## Get
- Lấy dữ liệu từ server
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchPosts() async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      List<dynamic> posts = jsonDecode(response.body);
      print('Fetched ${posts.length} posts.');
      return posts;
    } else {
      print('Failed to load posts. Status code: ${response.statusCode}');
      throw Exception('Failed to load posts');
    }
  } catch (e) {
    print('Error fetching posts: $e');
    throw Exception('Error fetching posts: $e');
  }
}
```

## POST
- Gửi dữ liệu tới server
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>?> createPost(String title, String body) async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
  try {
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': title,
        'body': body,
        'userId': '1',
      }),
    );

    if (response.statusCode == 201) {
      Map<String, dynamic> newPost = jsonDecode(response.body);
      print('Post created successfully: ${newPost['id']}');
      return newPost;
    } else {
      print('Failed to create post. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return null;
    }
  } catch (e) {
    print('Error creating post: $e');
    return null;
  }
}
```

## PUT
- Cập nhật dữ liệu trên server
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<Map<String, dynamic>?> updatePost(int postId, String newTitle, String newBody) async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId');
  try {
    final response = await http.put(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'id': postId,
        'title': newTitle,
        'body': newBody,
        'userId': 1,
      }),
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> updatedPost = jsonDecode(response.body);
      print('Post updated successfully: ${updatedPost['id']}');
      return updatedPost;
    } else {
      print('Failed to update post. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return null;
    }
  } catch (e) {
    print('Error updating post: $e');
    return null;
  }
}
```

## DELETE
- Xóa dữ liệu trên server
```dart
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<bool> deletePost(int postId) async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId');
  try {
    final response = await http.delete(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      print('Post deleted successfully: $postId');
      return true;
    } else {
      print('Failed to delete post. Status code: ${response.statusCode}');
      print('Response body: ${response.body}');
      return false;
    }
  } catch (e) {
    print('Error deleting post: $e');
    return false;
  }
}
```
