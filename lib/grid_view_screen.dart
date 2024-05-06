import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  _GridViewScreenState createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  final String name = "Jenish";
  final List<String> characters = "Jenish".split('');
  List<bool> _buttonVisibility = [];
  List<Color> _buttonColors = [];

  @override
  void initState() {
    super.initState();
    _buttonVisibility = List.generate(characters.length, (_) => true);
    _buttonColors = List.generate(characters.length, (_) => Colors.blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: List.generate(characters.length, (index) {
          return Visibility(
            visible: _buttonVisibility[index],
            child: ElevatedButton(
              onPressed: () => _onButtonPressed(index),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                backgroundColor: _buttonColors[index],
              ),
              child: Text(
                characters[index],
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  void _onButtonPressed(int index) {
    setState(() {
      if (_buttonColors[index] == Colors.blue) {
        _buttonColors[index] = Colors.red; // Change button color on first press
      } else {
        _buttonVisibility[index] = false; // Hide button on second press
      }
    });
  }
}
