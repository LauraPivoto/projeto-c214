import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:projeto_c214/Model/user.dart';
import 'package:projeto_c214/View/login_screen.dart';

void main() {
  group('User', () {
    test('Deve criar um usuário corretamente', () {
      final user =
          User(name: 'Laura', email: 'laura@example.com', password: '12345');

      expect(user.name, 'Laura');
      expect(user.email, 'laura@example.com');
      expect(user.password, '12345');
    });

    test('Deve exibir os detalhes do usuário', () {
      final user =
          User(name: 'Laura', email: 'laura@example.com', password: '12345');

      expect(user.name, 'Laura');
      expect(user.email, 'laura@example.com');
      expect(user.password, '12345');
    });
  });

  group('LoginScreen Widget Tests', () {
    testWidgets('Deve exibir o campo de email com o hint correto',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      final emailField = find.byWidgetPredicate((widget) =>
          widget is TextField &&
          widget.decoration?.hintText == 'Coloque seu e-mail aqui');
      expect(emailField, findsOneWidget);
    });

    testWidgets('Deve inserir texto no campo de email',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      final emailField = find.byWidgetPredicate((widget) =>
          widget is TextField &&
          widget.decoration?.hintText == 'Coloque seu e-mail aqui');
      await tester.enterText(emailField, 'teste@exemplo.com');
      expect(find.text('teste@exemplo.com'), findsOneWidget);
    });

    testWidgets('Exibir o campo de senha com o hint correto',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      final passwordField = find.byWidgetPredicate((widget) =>
          widget is TextField &&
          widget.decoration?.hintText == 'Coloque sua senha aqui');
      expect(passwordField, findsOneWidget);
    });

    testWidgets('Inserir texto no campo de senha', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      final passwordField = find.byWidgetPredicate((widget) =>
          widget is TextField &&
          widget.decoration?.hintText == 'Coloque sua senha aqui');
      await tester.enterText(passwordField, 'senha123');
      expect(find.text('senha123'), findsOneWidget);
    });

    testWidgets('Exibir o botão de login', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      expect(find.text('Login'), findsOneWidget);
    });

    testWidgets('Pressionar o botão de login', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginScreen(),
        ),
      );

      await tester.tap(find.text('Login'));
      await tester.pump();
      // Aqui você pode adicionar mais verificações, como navegação ou comportamento após o login
    });
  });
}
