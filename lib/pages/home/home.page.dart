import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              color: Colors.black,
              width: 300,
              child: ListView(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: null,
                      label: Text(
                        "Subscribe",
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                      icon: Icon(Icons.add, color: Colors.white),
                      onPressed: null,
                      label: Text(
                        "New Folder",
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.web, color: Colors.white),
                    title: Text(
                      "Hacker News",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_horiz, color: Colors.white),
                  ),
                  ListTile(
                    leading: Icon(Icons.web, color: Colors.white),
                    title: Text(
                      "Nerd Tech",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_horiz, color: Colors.white),
                  ),
                  ListTile(
                    leading: Icon(Icons.web, color: Colors.white),
                    title: Text(
                      "IGN Games",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.more_horiz, color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
