import 'package:flutter/material.dart';
import 'package:reto_1_donut_app_edwin_polanco/tab/pancake_tab.dart';
import 'package:reto_1_donut_app_edwin_polanco/tab/pizza_tab.dart';
import 'package:reto_1_donut_app_edwin_polanco/tab/burger_tab.dart';
import 'package:reto_1_donut_app_edwin_polanco/tab/donut_tab.dart';
import 'package:reto_1_donut_app_edwin_polanco/tab/smoothie_tab.dart';
import 'package:reto_1_donut_app_edwin_polanco/utils/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = [
    // donas
    const MyTab(
      iconPath: 'lib/icons/donut.png',
    ),
    //jambuerguesas
    const MyTab(
      iconPath: 'lib/icons/burger.png',
    ),
    //smoties
    const MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),
    //cupcakes
    const MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),
    //pizza
    const MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:
          5, //en el caso de tener mas elementos que no den ponemos el nombre de la lista.length
      child: Scaffold(
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
                  //print('Boton del menu');
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
                    //print('Boton de perfil');
                  },
                ),
              )
            ],
          ),
          body: Column(
            children: [
              //texto
              const Padding(
                padding: EdgeInsets.only(left: 35.0),
                child: Row(
                  children: [
                    Text('I want to ', style: TextStyle(fontSize: 35)),
                    Text('Eat',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline)),
                  ],
                ),
              ),

              // tap bar
              TabBar(tabs: myTabs),
              // tab bar view
              const Expanded(
                  child: TabBarView(children: [
                DonutTab(),
                BurgerTab(),
                SmoothieTab(),
                PancakeTab(),
                PizzaTab(),
              ]))
              //Carrito
            ],
          )),
    );
  }
}
