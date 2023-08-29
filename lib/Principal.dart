import 'package:flutter/material.dart';
import 'package:gasolinera/register.dart';
import 'login.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'maps.dart';

BuildContext? ContextP;
CarouselController buttonCarouselController = CarouselController();

class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContextP = context;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: drawers(),
      appBar: AppBar(
        title: const Text('Gasolinera Puma'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: background(),
    );
  }
}

Widget background() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage(
            'https://10619-2.s.cdn12.com/rests/original/105_502454690.jpg'),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.black.withOpacity(0.7), BlendMode.darken),
      ),
    ),
    child: Center(
      child: anunciantes(),
    ),
  );
}

Widget anunciantes() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CarouselSlider(
        options: CarouselOptions(height: 300.0, autoPlay: true),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Text(
                    'Placeholder $i',
                    style: TextStyle(fontSize: 40.0),
                  ));
            },
          );
        }).toList(),
      ),
    ],
  );
}

Widget drawers() {
  return Drawer(
    
    child: ListView(
      // Importante: elimina cualquier padding del ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'BIENVENIDO',
            style: TextStyle(color: Colors.white, fontSize: 25.00),
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://www.prensa.com/resizer/AqnZVj4Vfj52BUtx4gMCMplgJxk=/arc-anglerfish-arc2-prod-corprensa/public/EEVDYFSUKNH77PLNHCV332FA7A.jpeg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.7), BlendMode.darken),
          )),
        ),
        ListTile(
          title: Text('Inicio'),
          onTap: () {
            Navigator.push(ContextP!,
                MaterialPageRoute(builder: (context) => Principal()));
          },
        ),
        ListTile(
          title: Text('Mapa'),
          onTap: () {
            Navigator.push(
                ContextP!, MaterialPageRoute(builder: (context) => Maps()));
          },
        ),
        ListTile(
          title: Text('Perfil'),
          onTap: () {
            Navigator.push(
                ContextP!, MaterialPageRoute(builder: (context) => Maps()));
          },
        ),
      ],
    ),
  );
}
