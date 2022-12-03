import 'package:flutter/material.dart';
import '../widgets/custom_input_field.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        title: const Text('Inputs y forms'),
      ),
      body: SingleChildScrollView(
        // permite hacer scrolls
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(children: [
            const CustomInputField(
                labelText: 'Nombre tia',
                hintText: 'Nombre de usuario',
                keyboardType: TextInputType.name),
            const SizedBox(
              height: 30,
            ),
            const CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido de usuario',
                keyboardType: TextInputType.name),
            const SizedBox(
              height: 30,
            ),
            const CustomInputField(
              labelText: 'Email',
              hintText: 'Correo del usuario',
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 30,
            ),
            const CustomInputField(
              labelText: 'Contraseña',
              hintText: 'Contraseña',
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Guardar'))
          ]),
        ),
      ),
    );
  }
}
