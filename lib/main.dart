import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Pertama - Ezra Merita Ringoringo - 3312501002',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variabel untuk menyimpan data nama dan nim saya
  final String nama = 'Ezra Merita Ringoringo';
  final String nim = '3312501002';

  // Variabel untuk menyimpan nilai hitungan
  int _counter = 0;

  // Fungsi untuk menambah nilai
  void _incrementCounter() {
    setState(() => _counter++);
  }

  // untuk mengurangi nilai
  void _decrementCounter() {
    setState(() => _counter--);
  }

  // untuk mereset nilai
  void _resetCounter() {
    setState(() => _counter = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // menampilkan judul
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Aplikasi Pertamaa',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text('$nama - $nim', style: const TextStyle(fontSize: 13)),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // tampilan lingkaran untuk nilai counter
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.withValues(alpha: 0.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Nilai counter',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '$_counter',
                      style: const TextStyle(
                        fontSize: 44,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // tombol aksi untuk mengurangi dan juga menambah
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: _decrementCounter,
                    child: const Text('- Kurang'),
                  ),
                  const SizedBox(width: 16),
                  OutlinedButton(
                    onPressed: _incrementCounter,
                    child: const Text('+ Tambah'),
                  ),
                ],
              ),
              const SizedBox(height: 12),

              // tombol aksi untuk mereset
              FilledButton.tonal(
                onPressed: _resetCounter,
                child: const Text('Reset'),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Tambah',
        child: const Icon(Icons.add),
      ),
    );
  }
}
