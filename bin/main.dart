import 'package:http/http.dart' as http;
import 'dart:convert';

//* how to fetch data from the internet using http
void main(List<String> args) async {
  final data =
      await fetchDataFromAPI("https://jsonplaceholder.typicode.com/posts");
  for (var dataElement in data) {
    print("id:${dataElement["id"]}");
    print("title:${dataElement["title"]}");
    print("______________________________");
  }
}

Future<dynamic> fetchDataFromAPI(String url) async {
  //! previously we can use URL as string directly to http requests bu now need to convert it from string to Uri
  final res = await http.get(Uri.parse(url));
  //* 200 is equivalent to ok (the connection is established correctly)
  if (res.statusCode == 200) {
    //! we use json.decode to parse the data from String to json
    return json.decode(res.body);
  } else {
    throw Exception("the request seems to be rejected somehow ");
  }
}
