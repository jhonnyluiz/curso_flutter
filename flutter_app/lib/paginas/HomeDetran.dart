import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';


class HomeDetran extends StatefulWidget {
  HomeDetran({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeDetranState createState() => _HomeDetranState();
}

class _HomeDetranState extends State<HomeDetran> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center( child: Text('Menu Lateral', style: TextStyle(color: Colors.white, fontSize: 20))),
              decoration: BoxDecoration(
                color: Colors.green
              ),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Meus dados'),
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Teste'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(''),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, size: 30),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.mic_none, size: 30),
          ),
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.chat, size: 30),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                    height: 250,
                    width: width,
                    decoration: BoxDecoration(
                      color: const Color(0xff7c94b6),
                      image: const DecorationImage(
                        image: AssetImage('lib/assets/carros.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: GFImageOverlay(
                            height: 130,
                            width: 130,
                            margin: EdgeInsets.all(8),
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: Colors.white,
                                width: 4
                            ),
                            image: AssetImage('lib/assets/perfil.jpg'),
                          ),
                        ),
                        Text('Jhonny Luiz', style: TextStyle(color: Colors.white, fontSize: 18)),
                        Text('CPF 000.000.000-00', style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    )
                ),
                Positioned(
                    top: 225,
                    child: Container(
                        height: 300,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)
                        ),
                    )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                        height: 300,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.directions_car, size: 50, color: Colors.white,),
                                Text('Meus Veículos', style: TextStyle(color: Colors.white, fontSize: 30),)
                              ],
                            ),
                          ],
                        )
                    ),
                    Positioned(
                        top: 75,
                        child: Column(
                          children: <Widget>[
                            Container(
                                height: 320,
                                width: width,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(25)
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.directions_car, size: 50, color: Colors.white,),
                                        Text('Meus Veículos', style: TextStyle(color: Colors.white, fontSize: 30),)
                                      ],
                                    ),
                                  ],
                                )
                            ),

                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ),
      
    );
  }
}
