// lib/src/core/router/app_router.dart
import 'package:go_router/go_router.dart';
import '../../features/atajos/screens/atajo_detail_screen.dart';
import '../../features/atajos/screens/home_screen.dart'; // Asegúrate de tener HomeScreen en este archivo

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        // La ruta para el detalle. El ':id' es un parámetro que recibiremos.
        path: '/atajo/:id',
        builder: (context, state) {
          // Extraemos el 'id' de la URL
          final String atajoId = state.pathParameters['id']!;
          return AtajoDetailScreen(atajoId: atajoId);
        },
      ),
    ],
  );
}