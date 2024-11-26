import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  void increment() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img/planocont.jpeg'),
                fit: BoxFit.cover, // Adapta a imagem ao tamanho da tela
              ),
            ),
          ),
          // Conteúdo principal
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Contador: $count',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(
                        255, 19, 3, 3), // Ajuste a cor para visibilidade
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: increment,
                  child: const Text('adicionar'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
