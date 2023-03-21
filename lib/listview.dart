import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/data.dart' as lib;

class CharachtersWidget extends StatelessWidget {

  const CharachtersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    late List<String> charachters = ["Luke","Luke","Luke","Luke"];
    return ListView.builder(
        itemCount: charachters.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Column(
              children: [
                Text(charachters[index]),
              ],
            ),
          );
        });
  }
}
