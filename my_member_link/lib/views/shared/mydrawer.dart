
import 'package:flutter/material.dart';
import 'package:my_member_link/views/events/event_screen.dart';
import 'package:my_member_link/views/newsletter/main_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
                // You can add color or other styling here if needed
                ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            onTap: () {
              // Define onTap actions here if needed
               Navigator.push(context,
                MaterialPageRoute(builder: (content) => const MainScreen()));
            },
            title: const Text("Newsletter"),
          ),
          ListTile(
            title: const Text("Events"),
            onTap: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (content) => const EventScreen()));
            },
          ),
          const ListTile(
            title: Text("Members"),
          ),
          const ListTile(
            title: Text("Payments"),
          ),
          const ListTile(
            title: Text("Products"),
          ),
          const ListTile(
            title: Text("Vetting"),
          ),
          const ListTile(
            title: Text("Settings"),
          ),
          const ListTile(
            title: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
