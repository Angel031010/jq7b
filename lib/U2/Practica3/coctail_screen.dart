import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jq7b/U2/Practica3/dog.dart';

class CocktailScreen extends StatelessWidget {
  const CocktailScreen({super.key});

  Future<Cocktail> getCocktail() async {
    var url = Uri.https(
        "www.thecocktaildb.com", "api/json/v1/1/lookup.php", {"i": "11007"});
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return Cocktail.fromJson(data['drinks'][0]);
    } else {
      throw Exception('Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cocktail Screen'),
      ),
      body: FutureBuilder(
        future: getCocktail(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    snapshot.data?.strDrink ?? "Sin nombre",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Image.network(snapshot.data?.strDrinkThumb ?? "Sin resultados"),
                  const SizedBox(height: 10),
                ],
              ),
            );
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
