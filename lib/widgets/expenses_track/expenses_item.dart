import 'package:flutter/material.dart';

import 'package:expense_tracker/model/expense.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expenses, {super.key});

  final Expense expenses;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(expenses.title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('\₹ ${expenses.amount.toStringAsFixed(2)}',
                    style: Theme.of(context).textTheme.bodyLarge),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      categoryIcon[expenses.category],
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      expenses.formattedDate,
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
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
