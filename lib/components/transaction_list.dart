import 'package:dispesas_pessoais/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList(this.transactions, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: [
          SizedBox(height: 20,),
          Text(
            'Nenhuma Transação Cadastrada',
            style:  Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: Image.asset('assets/images/waiting.png',
            fit: BoxFit.cover,
            ),
          )
        ],
      ): ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index){
          final tr = transactions[index];
          return Card(
                 child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Colors.purple.shade50,
                          width: 2,
                        )),
                        padding: const EdgeInsets.all(10),
                        child: Card(
                          child: Text(
                            'R\$ ${tr.value.toStringAsFixed(2)}',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.purple.shade200),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tr.title,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            Text(
                              DateFormat('d MMM y').format(tr.date),
                              style: TextStyle(color: Colors.grey.shade100),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              })

      
    );
  }
}
