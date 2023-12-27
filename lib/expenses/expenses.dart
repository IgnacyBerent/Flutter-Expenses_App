import 'package:flutter/material.dart';

import 'package:app_3/models/expense.dart';
import 'package:app_3/expenses/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 9.99,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text('The Chart'),
        Expanded(
          child: ExpensesList(expenses: _registeredExpenses),
        ),
      ]),
    );
  }
}
