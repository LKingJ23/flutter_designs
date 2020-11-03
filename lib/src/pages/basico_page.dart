import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            _crearImagen(),
            
            _crearTitulo(),

            _crearAcciones(),

            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
            _crearTexto(),
          ],
        ),
      )
    );
  }

  Widget _crearImagen() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage('https://static1.squarespace.com/static/5594753de4b00251f8302999/5bfc7fa72b6a2840f6be993d/5d1536a25c4c4100015ecf5d/1567297043441/fellowship.jpg?format=1500w'),
        height: 250.0,
        fit: BoxFit.cover
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Largo con un puente', style: estiloTitulo,),
                  SizedBox( height: 7.0, ),
                  Text('Un lago en alemania', style: estiloSubTitulo,),
                ],
              ),
            ),
          Icon( Icons.star, color: Colors.red, size: 30.0 ),
          Text('41', style: TextStyle( fontSize: 20.0 ) )
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion( Icons.call, 'CALL'),
        _accion( Icons.near_me, 'ROUTE'),
        _accion( Icons.share, 'Share'),
      ],
    );
  }

  Widget _accion(IconData icon, String texto) {
    return Column(
      children: [
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0,),
        Text(texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ) )
      ],
    );
  }

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text(
          'Laboris commodo elit qui dolore minim sit ut dolore. Minim aliquip dolor laborum tempor esse deserunt veniam do consectetur nulla veniam. Et ipsum exercitation irure dolor eiusmod aliquip officia reprehenderit esse non esse ad duis. Consectetur consectetur fugiat elit velit sit officia eu eu eu ipsum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}