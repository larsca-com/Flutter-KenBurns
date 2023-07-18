import 'package:flutter/material.dart';

import 'package:kenburns/kenburns.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              /*
              Container(
                height: 300,
                child: KenBurns(
                  child: Image.network(
                    "https://www.photo-paysage.com/?file=pic_download_link/picture&pid=3100",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              */
              Container(
                height: 300,
                child: KenBurns.multiple(
                  maxAnimationDuration: Duration(seconds: 10),
                  minAnimationDuration: Duration(seconds: 3),
                  children: <Widget>[
                    Image.network(
                      "https://cdn.hasselblad.com/hasselblad-com/6cb604081ef3086569319ddb5adcae66298a28c5_x1d-ii-sample-01-web.jpg?auto=format&q=97",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://images.contentstack.io/v3/assets/blt06f605a34f1194ff/blt958fc619afa5a589/6486edb72429af6314f47521/McLaren-BCS-4383-HP-3-2.39x1-V1.jpg?auto=webp",
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      "https://www.theglobeandmail.com/resizer/vq3O7LI3hvsjTP2N0m9NwU4W3Eg=/1500x0/filters:quality(80)/arc-anglerfish-tgam-prod-tgam.s3.amazonaws.com/public/4ETF3GZR3NA3RDDW23XDRBKKCI",
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
