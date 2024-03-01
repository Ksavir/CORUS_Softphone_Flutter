import 'package:flutter/material.dart';
import 'package:softphone_app/config/theme/app_theme.dart';
import 'package:softphone_app/screens/dial_screen.dart';
import 'package:softphone_app/screens/login_screen.dart';

// void main() {
//   runApp(const SoftphonePage());
// }

// class SoftphonePage extends StatefulWidget {
//   const SoftphonePage({super.key});

//   @override
//   State<SoftphonePage> createState() => _SoftphonePageState();
// }

// class _SoftphonePageState extends State<SoftphonePage> {
//   final TextEditingController _numeroController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Softphone'),
//       ),
//       body: Column(
//         children: [
//           // Mostrar el número marcado
//           TextField(
//             controller: _numeroController,
//             decoration: const InputDecoration(
//               labelText: 'Número de teléfono',
//             ),
//           ),
//           const SizedBox(height: 20),
//           // Avatar del usuario
//           const CircleAvatar(
//             radius: 50,
//             backgroundImage: AssetImage('assets/images/KR_Perfil_Carnet.jpg'),
//           ),
//           const SizedBox(height: 20),
//           // Teclado de marcado
//           Expanded(
//             child: GridView.count(
//               crossAxisCount: 3,
//               children: [
//                 _buildKeypadButton('1'),
//                 _buildKeypadButton('2'),
//                 _buildKeypadButton('3'),
//                 _buildKeypadButton('4'),
//                 _buildKeypadButton('5'),
//                 _buildKeypadButton('6'),
//                 _buildKeypadButton('7'),
//                 _buildKeypadButton('8'),
//                 _buildKeypadButton('9'),
//                 _buildKeypadButton('*'),
//                 _buildKeypadButton('0'),
//                 _buildKeypadButton('#'),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           // Botones de llamada y finalización
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 child: const Icon(Icons.call),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 child: const Icon(Icons.call_end),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildKeypadButton(String text) {
//     return MaterialButton(
//       onPressed: () {
//         _numeroController.text += text;
//         setState(() {});
//       },
//       child: Text(text, style: const TextStyle(fontSize: 20)),
//     );
//   }
// }

void main() {
  runApp(const MySoftphoneApp());
}

class MySoftphoneApp extends StatelessWidget {
  const MySoftphoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CORUS Softphone',
      theme: AppTheme().getTheme(),
      home: const LoginScreen(),
    );
  }
}
