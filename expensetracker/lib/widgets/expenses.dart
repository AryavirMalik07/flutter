import 'package:expensetracker/models/expense_data.dart';
import 'package:expensetracker/widgets/expense_list/expenses_list.dart';
import 'package:expensetracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<ExpenseData> _registerExpense = [
    ExpenseData(
        title: "flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.leisure),
    ExpenseData(
        title: "flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.travel),
    ExpenseData(
        title: "flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.food),
    ExpenseData(
        title: "flutter",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.food),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => NewExpense(onAddExpense: _addExpense));
  }

  void _addExpense(ExpenseData expense) {
    setState(() {
      _registerExpense.add(expense);
    });
  }

  void _removeExpense(ExpenseData expense) {
    setState(() {
      _registerExpense.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // print(MediaQuery.of(context).size.height);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense Tracker"),
          // backgroundColor: Colors.deepPurple.shade600,
          actions: [
            IconButton(
                onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
          ],
        ),
        body: width < 600
            ? Column(
                children: [
                  const Text("hello"),
                  Expanded(
                    child: ExpensesList(
                      expenses: _registerExpense,
                      onRemoveExpense: _removeExpense,
                    ),
                  ),
                ],
              )
            : Row(
                children: [
                  const Text("hello"),
                  Expanded(
                    child: ExpensesList(
                      expenses: _registerExpense,
                      onRemoveExpense: _removeExpense,
                    ),
                  ),
                ],
              ));
  }
}
