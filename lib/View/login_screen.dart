// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void login(String email, String password) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color.fromARGB(255, 43, 75, 26)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(120))),
                child: Icon(
                  Icons.monetization_on,
                  color: Color.fromARGB(255, 230, 169, 49),
                  size: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Faça seu login abaixo:'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.message_rounded,
                                color: Colors.black,
                              ),
                              hintText: 'Coloque seu e-mail aqui',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15.0)), // Borda arredondada
                                borderSide: BorderSide(
                                  color: Colors.black, // Cor branca
                                  width: 1.0,
                                ),
                              ),
                            ),
                            style:
                                TextStyle(color: Colors.black), // Cor do texto
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black,
                              ),
                              hintText: 'Coloque sua senha aqui',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(15.0)), // Borda arredondada
                                borderSide: BorderSide(
                                  color: Colors.black, // Cor branca
                                  width: 1.0,
                                ),
                              ),
                            ),
                            style:
                                TextStyle(color: Colors.black), // Cor do texto
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 43, 75, 26),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/pieChart');
                                  login(_emailController.text,
                                      _passwordController.text);
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'Não possui conta?',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        'Criar conta',
                        style:
                            TextStyle(color: Color.fromARGB(255, 43, 75, 26)),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
