import 'dart:convert';
import 'package:http/http.dart' as http;

class PostRequest {
  final String url;
  final Map data;

  PostRequest(
    this.url,
    this.data,
  );

  Future postRequest() async {
    var finalUrl = Uri.parse(url);
    var body = json.encode(data);
    var response = await http.post(
      finalUrl,
      headers: {
        "Content-Type": "application/json",
      },
      body: body,
    );
    final responseData = json.decode(response.body);
    return responseData;
  }
}
