import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharePref extends StatefulWidget {
  const SharePref({Key? key}) : super(key: key);
  @override
  _SharePrefState createState() => _SharePrefState();
}

class _SharePrefState extends State<SharePref> {
  late SharedPreferences preferences;
  @override
  void initState() {
    super.initState();
    sharedPref();
  }

  void sharedPref() async {
    preferences = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Share Preferences"),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    preferences.setString(yusuf.deger.toString(), "ozn bilişim");
                  },
                  child: Text("Set Value"),
                ),
                ElevatedButton(
                  onPressed: () {
                   var value = preferences.getString(yusuf.deger.toString());
                   print(value);
                  },
                  child: Text("Get Value"),
                ),
                ElevatedButton(
                  onPressed: () async {
                    var value = await  preferences.remove(yusuf.deger.toString());
                    print(value);
                  },
                  child: Text("Delete Value"),
                ),
                ElevatedButton(
                  onPressed: () async {
                  preferences.clear();
                  },
                  child: Text("clear all Value"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

enum yusuf { deger }

/*Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  preferences.setString(yusuf.deger.toString(), "Shared");
                },
                child: Text("Set Value"),
              ),
              ElevatedButton(
                onPressed: () {
                  var value = preferences.getString(yusuf.deger.toString());
                  print(value);
                },
                child: Text("Get Value"),
              ),
            ],
          ),
        ),
      ),
    );

 */
