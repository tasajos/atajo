// lib/src/features/atajos/widgets/atajo_card.dart
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../models/atajo_model.dart';


class AtajoCard extends StatelessWidget {
  final Atajo atajo;
  const AtajoCard({super.key, required this.atajo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/atajo/${atajo.id}');
      },
      child: Card( // <-- Este paréntesis se abre...
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              atajo.imageUrl,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(atajo.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(atajo.shortDescription, style: TextStyle(color: Colors.grey[700])),
                ],
              ),
            ),
          ],
        ),
      ), // <-- ...Y AQUÍ SE CIERRA. Este es el paréntesis que faltaba.
    );
  }
}