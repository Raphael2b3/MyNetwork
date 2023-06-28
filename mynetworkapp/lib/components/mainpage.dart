import 'package:flutter/material.dart';
import 'package:mynetworkapp/components/contactpage.dart';
import 'package:mynetworkapp/components/searchbar.dart';
import 'package:mynetworkapp/icons/myicons.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({Key? key}) : super(key: key);

  @override
  State<Mainpage> createState() => _MainpageState();
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
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.blueAccent,
          child: Column(
            children: [
              Container(
                height: 70,
              ),
              Expanded(
                child: pages[pageindex],
              ),
              SizedBox(
                  height: 60,
                  child: NavigationBar(
                    selectedIndex: pageindex,
                    onDestinationSelected: (value) {
                      setState(() {
                        pageindex = value;
                      });
                    },
                    destinations: const [
                      NavigationDestination(
                          icon: Icon(MyIcons.user), label: "Contact"),
                      NavigationDestination(
                          icon: Icon(MyIcons.plus), label: "Add"),
                      NavigationDestination(
                          icon: Icon(MyIcons.cog), label: "Setting")
                    ],
                  ))
            ],
          ),
        ),
        Searchbar(),
      ],
    );
  }
}
