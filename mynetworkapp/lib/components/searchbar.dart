import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../icons/myicons.dart';

class Searchbar extends StatefulWidget {
  const Searchbar({Key? key}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(126, 87, 194, 1),
      child: Container(
        color: Colors.blue,
        height: 10000,
        width: 100,
      ),
    );
    /*Container(
      color: const Color.fromRGBO(126, 87, 194, 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    decoration: const InputDecoration(
                      icon: Icon(MyIcons.menu),
                    ),
                    controller: _searchController,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );*/
  }
}
