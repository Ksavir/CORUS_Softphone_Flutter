import 'package:flutter/material.dart';

class DialScreen extends StatefulWidget {
  const DialScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DialScreenState createState() => _DialScreenState();
}

class _DialScreenState extends State<DialScreen> {
  String _phoneNumber = '';

  void _updatePhoneNumber(String number) {
    setState(() {
      _phoneNumber += number;
    });
  }

  void _clearPhoneNumber() {
    setState(() {
      if (_phoneNumber.isNotEmpty) {
        _phoneNumber = _phoneNumber.substring(0, _phoneNumber.length - 1);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CORUS-Phone'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // Avatar del usuario
          const CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
                'assets/images/KR_Perfil_Carnet.jpg'), // Cambia la ruta por tu imagen de avatar
          ),
          const SizedBox(height: 30),
          // Números marcados
          Text(
            _phoneNumber,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          // Teclado numérico
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DialButton(number: '1', onPressed: _updatePhoneNumber),
              DialButton(number: '2', onPressed: _updatePhoneNumber),
              DialButton(number: '3', onPressed: _updatePhoneNumber),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DialButton(number: '4', onPressed: _updatePhoneNumber),
              DialButton(number: '5', onPressed: _updatePhoneNumber),
              DialButton(number: '6', onPressed: _updatePhoneNumber),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DialButton(number: '7', onPressed: _updatePhoneNumber),
              DialButton(number: '8', onPressed: _updatePhoneNumber),
              DialButton(number: '9', onPressed: _updatePhoneNumber),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              DialButton(number: '*', onPressed: _updatePhoneNumber),
              DialButton(number: '0', onPressed: _updatePhoneNumber),
              DialButton(number: '#', onPressed: _updatePhoneNumber),
            ],
          ),
          const SizedBox(height: 30),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent[400], // Cambia el color según tu preferencia
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                ),
                child: const Icon(
                  Icons.call,
                  size: 35,
                  color: Colors.white,
                ),
              ),

              //Botón para borrar números marcados
              // ElevatedButton(
              //   onPressed: _clearPhoneNumber,
              //   child: const Icon(Icons.backspace),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

class DialButton extends StatelessWidget {
  final String number;
  final Function(String) onPressed;

  const DialButton({super.key, required this.number, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(70, 70),
        backgroundColor:
            Colors.blueGrey[100], // Cambia el color según tu preferencia
      ),
      onPressed: () {
        onPressed(number);
      },
      child: Text(
        number,
        style: const TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }
}
