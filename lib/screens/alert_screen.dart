import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Puta'),
            content: Column(children: const [
              Text('Este es el contenido'),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Aceptar',
                    style: const TextStyle(color: Colors.black),
                  )),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar'),
              )
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    print('Hola mundo');
    showDialog(
        barrierDismissible:
            true, // se cierra el dialogo al pulsar en cualquier sitio
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Estado actual'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Hasta el mismisimo coño'),
                SizedBox(
                  height: 10,
                ),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('aceptar'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'cancelar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          );
        });
  }
/*
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: null, child: Text('Mostrar Alerta')),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              //  style: ElevatedButton.styleFrom(
              //    primary: Colors.red,
              //    shape: const StadiumBorder(),
              //    elevation: 0
              //  ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
              ),
              //  onPressed: () => displayDialogAndroid( context )
              //  onPressed: () => displayDialogAndroid(context))),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }
}
