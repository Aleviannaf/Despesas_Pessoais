import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final void Function(String, double) onSubmit;

  TransactionForm(this.onSubmit);

  final _titleControler = TextEditingController();
  final _valueControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _titleControler,
              decoration: const InputDecoration(
                labelText: 'Título',
              ),
            ),
            TextField(
              controller: _valueControler,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: const InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: ()=>onSubmit(_titleControler.text, double.tryParse(_valueControler.text) ?? 0),
                  child: const Text(
                    'Nova Transação',
                    style: TextStyle(color: Colors.purple),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
