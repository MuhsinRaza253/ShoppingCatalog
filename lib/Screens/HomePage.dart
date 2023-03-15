import "package:flutter/material.dart";
import "package:untitled/utills/Routes.dart";

import "../Widgets/Drawer.dart";

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  int days=3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New App"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context, MyRoutes.loginpage);
            },
            child: Text("Go Back"),
          ),
        ),
      ),
      drawer: MyDrawer(),

    );
  }
}
