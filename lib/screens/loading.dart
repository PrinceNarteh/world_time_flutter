import 'package:flutter/material.dart';
import 'package:http/http.dart';
import "dart:convert";

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    Uri uri = Uri.parse("http://worldtimeapi.org/api/timezone/Europe/Paris");
    Response response = await get(uri);
    Map data = jsonDecode(response.body);
    String datetime = data['datetime'];
    String offset = data['utc_offset'];
    print(datetime);
    print(offset);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text('Loading Screen'),
    );
  }
}
