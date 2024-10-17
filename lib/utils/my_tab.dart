import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  final String iconPath;
  final String name; // Variable para el nombre

  const MyTab({
    super.key,
    required this.iconPath,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center, // Centrar verticalmente
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            iconPath,
            color: Colors.grey[600],
            height: 24, // Ajusta el tamaño del ícono según sea necesario
          ),
        ),
        const SizedBox(
            height: 4), // Espacio entre el contenedor gris y el texto
        Text(
          name,
          style: TextStyle(
              fontSize: 12, color: Colors.grey[800]), // Estilo del texto
        ),
      ],
    );
  }
}
