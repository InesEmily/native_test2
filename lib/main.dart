import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/data.dart' as lib;

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Main());
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  String dropdownvalue = 'All';
  var items = ['All', 'Resistance', 'Sith', 'Jedi Order'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Star Wars Characters'), centerTitle: true),
      body: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: Text('Select a side:')),
          DropdownButton(
            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
          Center(
            child: Text(
              'There are ${lib.characters.length} charachters',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
