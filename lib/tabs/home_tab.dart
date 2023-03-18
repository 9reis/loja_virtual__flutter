import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Coloca um item acima do outro
    return Stack(
      children: [
        _buildBodyBack(),
        const CustomScrollView(
          slivers: [
            //appBar do tipo sliver
            SliverAppBar(
              floating: true,
              //Some quando rolar para baixo, aparece quando rolar para cima
              snap: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              //Espaço flexivel
              flexibleSpace: FlexibleSpaceBar(
                title: Text('Novidades'),
                centerTitle: true,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildBodyBack() => Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 211, 118, 130),
            Color.fromARGB(255, 253, 181, 168)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
      );
}
