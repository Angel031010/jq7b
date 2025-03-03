import 'package:flutter/material.dart';
import 'package:jq7b/U1/Practica_1/Models/productos.dart';

class Ejercicio3 extends StatelessWidget {
  Ejercicio3({super.key});

  final List<Producto> _productos = [
    Producto(
        nombre: "Laptop",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Impresora",
        precio: "20000",
        descuento: "",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Celular",
        precio: "20000",
        descuento: "",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Mouse",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Teclado",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Escritorio",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Monitor",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "CPU",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Mousepad",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
    Producto(
        nombre: "Gabinete",
        precio: "20000",
        descuento: "2000",
        unidadesDisponibles: "15"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _productos.length,
        itemBuilder: (context, index) {
          Producto producto = _productos[index];
          return Column(
            children: [
              ListTile(
                leading: Image.asset(
                  'assets/${producto.nombre}.jpg',
                  height: 50,
                  width: 50,
                ),
                title: Text(producto.nombre),
                subtitle: Text(
                    "Precio: ${producto.precio} - Descuento: ${producto.descuento == "" ? "No tiene descuento" : producto.descuento}"),
                trailing: Text(
                    "Unidades disponibles: ${producto.unidadesDisponibles}"),
              ),
            ],
          );
        });
  }
}
