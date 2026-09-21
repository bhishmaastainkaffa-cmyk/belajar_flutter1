import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: KalkulatorPage(),
    ),
  );
}

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Kalkulator Page"),
      ),

      body: Column(
        children: [

          // ANGKA 1
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: "Masukkan Angka 1",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // ANGKA 2
          Container(
            margin: const EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                hintText: "Masukkan Angka 2",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          // TOMBOL OPERASI
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              ElevatedButton(
                onPressed: () {},
                child: const Text("+"),
              ),

              const SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {},
                child: const Text("-"),
              ),

              const SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {},
                child: const Text("×"),
              ),

              const SizedBox(width: 10),

              ElevatedButton(
                onPressed: () {},
                child: const Text("÷"),
              ),
            ],
          ),

          const SizedBox(height: 30),

          // HASIL
          const Text(
            "Hasil : ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          // RESET
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "RESET",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}