import 'package:alice/alice.dart';

class AliceDI {
  final Alice alice = Alice(
    showNotification: true,
    showInspectorOnShake: true,
    darkTheme: true,
  );
}
