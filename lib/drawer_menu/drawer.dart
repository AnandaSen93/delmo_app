import 'package:flutter/material.dart';

class DrawerView extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.blue.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            child: Text("Hello, User", style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.white),
            title: Text("Home", style: TextStyle(color: Colors.white)),
           // onTap: onClose,
          ),
          ListTile(
            leading: Icon(Icons.settings, color: Colors.white),
            title: Text("Settings", style: TextStyle(color: Colors.white)),
           // onTap: onClose,
          ),
        ],
      ),
    );
  }
}