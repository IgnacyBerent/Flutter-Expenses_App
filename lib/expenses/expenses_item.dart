import 'package:flutter/material.dart';
import 'package:app_3/models/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('\$${expense.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    const SizedBox(width: 8),
                    Text(expense.date.toString()),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
