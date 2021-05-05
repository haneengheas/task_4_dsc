import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex= 0;
  String text = "Home";
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('BottomAppBar with FAB'),
          centerTitle: true,
        ),
        
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            child: Icon(Icons.add),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
              margin: EdgeInsets.only(left: 12.0, right: 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      updateTabSelection(0, "Home");
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.reorder,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                    },
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.layers,
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.dashboard,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    iconSize: 27.0,
                    icon: Icon(
                      Icons.info,
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}





