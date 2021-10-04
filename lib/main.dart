

import 'package:dispesas_pessoais/components/transaction_form.dart';
import 'package:dispesas_pessoais/components/transaction_list.dart';
import 'package:dispesas_pessoais/components/transaction_user.dart';
import 'package:dispesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp( ExpenseApp());

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dispesas'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const <Widget>[
               SizedBox(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Gráfico'),
                  elevation: 5,
                ),
              ),
             TransactionUser()
            ],
          ),
        ));
  }
}
