// lib/src/features/atajos/screens/atajo_detail_screen.dart
import 'package:flutter/material.dart';
import '../../../core/services/mock_atajo_service.dart';
import '../models/atajo_model.dart';

class AtajoDetailScreen extends StatelessWidget {
  final String atajoId;
  const AtajoDetailScreen({super.key, required this.atajoId});

  @override
  Widget build(BuildContext context) {
    // Buscamos el atajo específico usando el ID que recibimos
    final Atajo atajo = MockAtajoService().getAtajoById(atajoId);

    return Scaffold(
      appBar: AppBar(
        title: Text(atajo.title),
      ),
      body: SingleChildScrollView( // Permite hacer scroll si el contenido es muy largo
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              atajo.imageUrl,
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    atajo.title,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Chip(
                    label: Text(atajo.category),
                    backgroundColor: Colors.teal.shade100,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Descripción del Atajo',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    atajo.longDescription,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  // Aquí agregaremos el mapa en la siguiente fase
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}