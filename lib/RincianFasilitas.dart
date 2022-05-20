import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class RincianFasilitas extends StatelessWidget {
  final Map data;

  const RincianFasilitas({
    Key? key,
    required this.data
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Rincian Fasilitas'),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.chevron_left),
              iconSize: 32,
              onPressed: () { Navigator.pop(context); },
            );
          },
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 80,
                height: 80,
              ),
              const SizedBox(height: 20),
              Text(
                data['name'],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              const SizedBox(height: 20),
              Text(
                data['desc'],
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      )
    );
  }
}
