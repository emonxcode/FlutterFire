import 'package:flutter/material.dart';

import '../Helpers/styles/styles.dart';
import '../Utils/app_space.dart';

class kAppBar extends StatelessWidget {
  const kAppBar({super.key, required this.size, required this.title});

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
              border: Border.all(width: 1, color: Colors.black),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppSpace.spaceW20,
                Expanded(child: Text(title, style: Styles.h1)),
                const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircleAvatar(
                    child: Icon(Icons.search_rounded),
                  ),
                ),
                AppSpace.spaceW10,
                const Expanded(
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: Center(
                      child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.zero,
                          hintText: "Search",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
