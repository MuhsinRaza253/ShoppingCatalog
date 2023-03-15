import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  final String url = "https://images.pexels.com/photos/3640930/pexels-photo-3640930.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
              ),
              accountName: Text("Muhsin Raza",
                textScaleFactor: 1.5,),
              accountEmail: Text("razamuhsin253@gmail.com",
                textScaleFactor: 1.5,),
              decoration: BoxDecoration(
                color: Colors.lightGreen
              ),
          ),
          const ListTile(
            leading:
              Icon(
                CupertinoIcons.home,
                color: Colors.white,
                size: 40.0,),
            title:
              Text("Home",
                style: TextStyle(color: Colors.white),
                textScaleFactor: 1.2,),
            tileColor: Colors.lightGreen,
          ),
          const ListTile(
            leading:
              Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
                size: 40.0,),
            title:
              Text(
                "Profile",
                style:
                  TextStyle(
                      color: Colors.white),
                textScaleFactor: 1.5,),
            tileColor: Colors.lightGreen,
          ),
          const ListTile(
            leading:
            Icon(
              CupertinoIcons.mail,
              color: Colors.white,
              size: 40.0,),
            title:
            Text(
              "Email Me",
              style:
              TextStyle(
                  color: Colors.white),
              textScaleFactor: 1.5,),
            tileColor: Colors.lightGreen,
          ),
        ],
      ),
    );
  }
}
