import 'package:dispesas_pessoais/components/transaction_form.dart';
import 'package:dispesas_pessoais/components/transaction_list.dart';
import 'package:dispesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({Key? key}) : super(key: key);

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = {
    Transaction(
        id: 't1', title: 'Novo Tenis', value: 320.2, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Nova Calça', value: 180.5, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'Nova Mochila', value: 200.99, date: DateTime.now()),
  };

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: title, title: title, value: value, date: DateTime.now());
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionList(_transactions.toList()),
        TransactionForm(_addTransaction),
      ],
    );
  }
}
