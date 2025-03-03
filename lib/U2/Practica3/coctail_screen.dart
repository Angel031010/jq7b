import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CocktailScreen extends StatelessWidget {
  const CocktailScreen({super.key});

  Future<Cocktail> getCocktail() async {
    var url = Uri.https("www.thecocktaildb.com", "api/json/v1/1/lookup.php?i=11007");
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
                  Image.network(snapshot.data?.strDrinkThumb ?? ""),
                  const SizedBox(height: 10),
                  Text(
                    snapshot.data?.strDrink ?? "Sin nombre",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
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

class Cocktail {
  String strDrink;
  String strDrinkThumb;

  Cocktail({required this.strDrink, required this.strDrinkThumb});

  factory Cocktail.fromJson(Map<String, dynamic> json) {
    return Cocktail(
      strDrink: json['strDrink'],
      strDrinkThumb: json['strDrinkThumb'],
    );
  }
}
