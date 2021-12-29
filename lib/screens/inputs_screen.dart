import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs and Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: const [
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Nombre usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Apellido',
                hintText: 'Apellido del usuario',
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Correo',
                hintText: 'Correo del usuario',
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Contraseña del usuario',
                isPasswordHidden: true,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
