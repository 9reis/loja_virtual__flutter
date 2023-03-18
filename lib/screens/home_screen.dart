import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  //Controlador para controlar as pag por cod
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      //Impede de mudar a pag por scroll
      // Somente por cod
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Container(color: Colors.yellow),
        Container(color: Colors.purpleAccent)
      ],
    );
  }
}
