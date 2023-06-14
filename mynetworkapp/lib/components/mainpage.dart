import 'package:flutter/material.dart';
import 'package:mynetworkapp/components/contactpage.dart';
import 'package:mynetworkapp/icons/myicons.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int pageindex = 0;
  final pages = const [
    Contactpage(
      name: "Page 1",
    ),
    Contactpage(
      name: "Page 2",
    ),
    Contactpage(
      name: "Page 3",
    ),
  ];
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print("test2");
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: pageindex,
        onDestinationSelected: (value) {
          setState(() {
            pageindex = value;
            print("test");
          });
        },
        destinations: const [
          NavigationDestination(icon: Icon(MyIcons.user), label: "Contact"),
          NavigationDestination(icon: Icon(MyIcons.plus), label: "Add"),
          NavigationDestination(icon: Icon(MyIcons.cog), label: "Setting")
        ],
        elevation: 10,
      ),
      body: pages[pageindex],
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purple.shade300],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: TextField(
          controller: _searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: const InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(color: Colors.white54),
            border: InputBorder.none,
          ),
          onChanged: (value) {
            // Perform search functionality here
          },
        ),
      ),
    );
  }
}
