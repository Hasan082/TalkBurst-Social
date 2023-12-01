import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:device_preview/device_preview.dart';
import 'package:talkbrust/application/app.dart';


void main() {
  testWidgets('Widget Tests', (WidgetTester tester) async {
    await tester.pumpWidget(
      DevicePreview(
        enabled: false, // Adjust this based on your needs
        builder: (context) => const TalkBrust(), // Replace 'TalkBrust' with the actual widget used in your main.dart file
      ),
    );

    await testForWidget<Text>(tester);
    await testForWidget<ElevatedButton>(tester);
    await testForWidget<TextButton>(tester);
    await testForWidget<AppBar>(tester);
    await testForWidget<Image>(tester);

    await testForWidget<IconButton>(tester);
    await testForWidget<TextField>(tester);
    await testForWidget<Radio>(tester);
    await testForWidget<Switch>(tester);
    await testForWidget<DropdownButton<String>>(tester);
    await testForWidget<PopupMenuButton<String>>(tester);
    await testForWidget<Container>(tester);
    await testForWidget<Row>(tester);
    await testForWidget<Column>(tester);
    await testForWidget<ListView>(tester);
    await testForWidget<Stack>(tester);
    await testForWidget<Card>(tester);
    await testForWidget<AlertDialog>(tester);
    await testForWidget<SnackBar>(tester);

    await testForWidget<CircleAvatar>(tester);
    await testForWidget<Divider>(tester);
    await testForWidget<BottomNavigationBar>(tester);
    await testForWidget<Drawer>(tester);
    await testForWidget<PopupMenuEntry>(tester);
    await testForWidget<LinearProgressIndicator>(tester);
    await testForWidget<CircularProgressIndicator>(tester);
    await testForWidget<GridView>(tester);
  });
<<<<<<< HEAD
}
=======
}

Future<void> testForWidget<T extends Widget>(WidgetTester tester) async {
  final widgetFinder = find.byType(T);

  if (widgetFinder.evaluate().isNotEmpty) {
    expect(widgetFinder, findsOneWidget);
  } else {
  }
}
>>>>>>> 450a68e (Git added tester)
