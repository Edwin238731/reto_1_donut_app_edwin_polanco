import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 56,
              ),
              onPressed: () {
                print('Boton del menu');
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 54.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 56,
                ),
                onPressed: () {
                  print('Boton de perfil');
                },
              ),
            )
          ],
        ),
        body: const Column(
          children: [
//texto
            Padding(
              padding: EdgeInsets.only(left: 35.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 35)),
                  Text('Eat',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline))
                ],
              ),
            )
            /*
          tap bar

          tab bar view
          */
          ],
        ));
  }
}
