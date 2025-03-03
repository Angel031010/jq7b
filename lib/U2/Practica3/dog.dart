class Dog {
  String message;
  String status;

  Dog({required this.message, required this.status});

  factory Dog.fromJson(Map<String, dynamic> json) {
    return Dog(
      message: json['message'],
      status: json['status'],
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
