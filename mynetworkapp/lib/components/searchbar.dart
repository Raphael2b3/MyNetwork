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
  double hight = 70;

  bool focused = false;
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    focusNode.addListener(
      () => setState(() {
        hight = hight != 70 ? 70 : 400;
      }),
    );
    return Container(
      height: hight,
      color: const Color.fromRGBO(126, 87, 194, 1),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.all(10),
                  child: TextField(
                    focusNode: focusNode,
                    decoration: const InputDecoration(
                      icon: Icon(MyIcons.menu),
                    ),
                    onTapOutside: (event) {
                      focusNode.unfocus();

                      setState(() {
                        hight = hight != 70 ? 70 : 400;
                      });
                    },
                    controller: _searchController,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return Center(
      heightFactor: 0,
      child: FloatingActionButton(onPressed: () {
        setState(() {});
      }),
    );
  }
}
