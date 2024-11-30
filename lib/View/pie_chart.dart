import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class PieChartScreen extends StatefulWidget {
  const PieChartScreen({super.key});

  @override
  State<PieChartScreen> createState() => _PieChartScreenState();
}

class _PieChartScreenState extends State<PieChartScreen> {
  Map<String, double> dataMap = {
    "Comida": 50,
    "Lazer": 20,
    "Contas": 100,
    "Roupas": 30,
  };

  // Lista fixa de exemplos de gastos
  final List<Map<String, dynamic>> expenses = [
    {
      "category": "Comida",
      "description": "Almoço no restaurante",
      "amount": 25.00
    },
    {"category": "Lazer", "description": "Cinema", "amount": 15.00},
    {"category": "Contas", "description": "Conta de luz", "amount": 80.00},
    {"category": "Roupas", "description": "Camisa nova", "amount": 40.00},
    {"category": "Comida", "description": "Supermercado", "amount": 100.00},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 43, 75, 26),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: const Text(
                'Os seus gastos estão listados abaixo:',
                style: TextStyle(color: Colors.white),
              ),
            ),
            PieChart(dataMap: dataMap),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 230, 169, 49),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: SizedBox(
                height: 35,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Adicionar novo gasto',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: expenses.length,
                itemBuilder: (context, index) {
                  final expense = expenses[index];
                  return Card(
                    color: const Color.fromARGB(255, 230, 230, 230),
                    margin:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    child: ListTile(
                      title: Text(expense["description"]),
                      subtitle: Text(expense["category"]),
                      trailing:
                          Text("R\$ ${expense["amount"].toStringAsFixed(2)}"),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
