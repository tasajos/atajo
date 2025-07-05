// En main.dart (o en su propio archivo)
import 'package:atajo/src/core/services/mock_atajo_service.dart';
import 'package:atajo/src/features/atajos/models/atajo_model.dart';
import 'package:atajo/src/features/atajos/widgets/atajo_card.dart';
import 'package:flutter/material.dart';

// ... (El código de AtajoApp se mantiene igual)

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos la lista de atajos de nuestro servicio
    final List<Atajo> atajos = MockAtajoService().getAtajos();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Atajos en Bolivia'),
      ),
      body: ListView.builder(
        itemCount: atajos.length,
        itemBuilder: (context, index) {
          final atajo = atajos[index];
          return AtajoCard(atajo: atajo);
        },
      ),
    );
  }
}