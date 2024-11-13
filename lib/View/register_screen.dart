// ignore_for_file: prefer_const_constructors
import 'package:Fintrack/Model/user.dart';
import 'package:Fintrack/View/Components/success_popup.dart';
import 'package:Fintrack/services/userServices.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void register(
      BuildContext context, String name, String email, String password) {
    User user = User(name: name, email: email, password: password);
    UserService userService = UserService();

    try {
      userService.registerUser(user);
      // Exibe a mensagem de sucesso após o cadastro
      CustomSnackbar.showSuccessMessage(
          context, 'Registro realizado com sucesso');
    } catch (error) {
      // Se houver erro, exibe outra mensagem
      CustomSnackbar.showSuccessMessage(context, 'Erro ao realizar o cadastro');
    }
  }

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
                  height: MediaQuery.of(context).size.height * 0.52,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'FinTrack',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'Olá, crie sua conta preenchendo os campos abaixo:'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _nameController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                            hintText: 'Coloque seu nome aqui',
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
                          style: TextStyle(color: Colors.black), // Cor do texto
                        ),
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
                          style: TextStyle(color: Colors.black), // Cor do texto
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
                            hintStyle: TextStyle(fontWeight: FontWeight.w300),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(15.0)), // Borda arredondada
                              borderSide: BorderSide(
                                color: Colors.black, // Cor branca
                                width: 1.0,
                              ),
                            ),
                          ),
                          style: TextStyle(color: Colors.black), // Cor do texto
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
                                register(
                                    context,
                                    _nameController.text,
                                    _emailController.text,
                                    _passwordController.text);
                              },
                              child: Text(
                                'Cadastrar',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Já possui login?',
                style: TextStyle(color: Colors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Fazer login',
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
