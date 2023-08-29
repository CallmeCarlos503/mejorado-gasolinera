import 'package:flutter/material.dart';
import 'package:gasolinera/main.dart';

import 'login.dart';

BuildContext? ContextoR;

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContextoR = context;
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
      child: Formulario(),
    ),
  );
}

Widget drawers() {
  return Drawer(
    // Agrega un ListView al drawer. Esto asegura que el usuario pueda desplazarse
    // a través de las opciones en el Drawer si no hay suficiente espacio vertical
    // para adaptarse a todo.
    child: ListView(
      // Importante: elimina cualquier padding del ListView.
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text(
            'Menu',
            style: TextStyle(color: Colors.white),
          ),
          decoration: BoxDecoration(
            color: Colors.black,
          ),
        ),
        ListTile(
          title: Text('Inicio de sesion'),
          onTap: () {
            Navigator.push(
                ContextoR!, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        ListTile(
          title: Text('Registrarse'),
          onTap: () {
            Navigator.push(ContextoR!,
                MaterialPageRoute(builder: (context) => Register()));
          },
        ),
      ],
    ),
  );
}

Widget Formulario() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        'REGISTRO',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
      Image.network(
        'https://images.squarespace-cdn.com/content/v1/587e96071e5b6cca664d662f/1628423550109-RX9SMWIQ9KK04QJEGWRF/puma_Style_V11_Ojos0043.png?format=1500w',
        width: 250,
      ),
      Text(
        'Rellene los campos',
        style: TextStyle(color: Colors.white, fontSize: 25),
      ),
      Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.00),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Correo electronico',
                  hintText: 'Carlosgeek503@gmail.com',
                  hintStyle: TextStyle(color: Colors.white),
                  labelStyle: TextStyle(color: Colors.white)),
              style: TextStyle(color: Colors.white),
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 6.0),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Contraseña',
                      hintText: '*************',
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white)),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 6.0),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Numero de telefono',
                          hintText: '7168-0706',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white)),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5.0),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(Contexto!,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: const Text('Registrate'),
                  ),
                ],
              )
            ],
          )
        ],
      )
    ],
  );
}
