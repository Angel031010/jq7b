import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:jq7b/U2/Practica3/dog.dart';
import 'package:http/http.dart' as http;

class DogScreen extends StatelessWidget {
  const DogScreen({super.key});

  Future<Dog> getDog() async {
    var url = Uri.https("dog.ceo", "api/breeds/image/random");
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Dog.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load dog');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Screen'),
      ),
      body: FutureBuilder(
        future: getDog(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
                child:
                    Image.network(snapshot.data?.message ?? "Sin resultados"));
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
