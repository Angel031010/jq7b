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

class Coctail {
  String strDrink;
  String strDrinkThumb;

  Coctail({required this.strDrink, required this.strDrinkThumb});

  factory Coctail.fromJson(Map<String, dynamic> json) {
    return Coctail(
      strDrink: json['strDrink'],
      strDrinkThumb: json['strDrinkThumb'],
    );
  }
}