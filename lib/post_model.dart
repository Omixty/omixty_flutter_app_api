import 'dart:convert';
import 'package:http/http.dart' as http;

class PostResult {
  String name;
  String job;


  PostResult({ this.name, this.job, });

  factory PostResult.createPostResult(Map<String, dynamic> object) {
    return PostResult(

        name: object['name'],
        job: object['job'],
        );
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://thawing-stream-50060.herokuapp.com/api/users/";

    var apiResult = await http.post(apiURL, body: {"name": name, "job": job});
    var jsonObject = json.decode(apiResult.body);

    return PostResult.createPostResult(jsonObject);
  }
}