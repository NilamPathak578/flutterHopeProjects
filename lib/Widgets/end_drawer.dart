import 'package:flutter/material.dart';

Widget endDrawer(BuildContext context) {
  TextStyle textstyle =
      const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700);
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [Colors.purpleAccent, Colors.purple.shade300])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 40.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Nilam Pathak",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                      wordSpacing: 0.2,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "nilam12@gmail.com",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            )),
        ListTile(
            leading: const Icon(Icons.notifications_active),
            title: Text(
              "Notifications",
              style: textstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        const Divider(
          indent: 20.0,
          endIndent: 20.0,
        ),
        ListTile(
            leading: const Icon(Icons.reviews),
            title: Text(
              "Reviews",
              style: textstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        const Divider(
          indent: 20.0,
          endIndent: 20.0,
        ),
        ListTile(
            leading: const Icon(Icons.settings),
            title: Text(
              "Settings",
              style: textstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        const Divider(
          indent: 20.0,
          endIndent: 20.0,
        ),
        ListTile(
            leading: const Icon(Icons.payment),
            title: Text(
              "Payment",
              style: textstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
        const Divider(
          indent: 20.0,
          endIndent: 20.0,
        ),
        ListTile(
            leading: const Icon(
              Icons.exit_to_app,
            ),
            title: Text(
              "Log Out",
              style: textstyle,
            ),
            onTap: () {
              Navigator.pop(context);
            }),
      ],
    ),
  );
}
