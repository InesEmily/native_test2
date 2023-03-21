import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/models/character.dart' as chr;

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    late String gender = 'male';
    return Scaffold(
      appBar: AppBar(
        title: Text("Luke"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: chr.starwarspeople.starwaspeople.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Column(
                children: [
                  Text(chr.starwarspeople.starwaspeople[index].name),
                  // ignore: unrelated_type_equality_checks
                  chr.starwarspeople.starwaspeople[index].gender.toString() ==
                          gender
                      ? Image.asset('female.png')
                      : Image.asset('male.png'),
                  Text(chr.starwarspeople.starwaspeople[index].gender
                      .toString()),
                ],
              ),
            );
          }),
    );
  }
}
