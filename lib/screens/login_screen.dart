import 'package:flutter/material.dart';
import 'package:softphone_app/screens/dial_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar sesión'),
      ),
      body: Center(

        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(20),
          ), 
          width: 300,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                children: [
                  // Logo de la aplicación
                  //Image.asset('assets/images/logotlc_full_.png', width: 150),
                  const SizedBox(height: 20),
                  // Campo de correo electrónico
                  TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(
                      labelText: 'Correo electrónico',
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Campo de contraseña
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Contraseña',
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Botón de inicio de sesión
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300],),
                    onPressed: () {
                      Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DialScreen())
                      );
                    },
                    child: const Text('Iniciar sesión', style: TextStyle(color: Colors.white),),
                  ),
                  const SizedBox(height: 10),
                  // ¿Olvidó su contraseña?
                  TextButton(
                    onPressed: () {},
                    child: const Text('¿Olvidó su contraseña?'),
                  ),
                  const SizedBox(height: 20),
                  // Registrarse
                  TextButton(
                    onPressed: () {},
                    child: const Text('Registrarse'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

