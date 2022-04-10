import 'package:flutter/material.dart';

class ChartBarWidget extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPrcOfTotal;

  ChartBarWidget(this.label, this.spendingAmount, this.spendingPrcOfTotal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(child: Text("\$${spendingAmount.toStringAsFixed(0)}")),
        const SizedBox(height: 4),
        SizedBox(
          height: 60,
          width: 10,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 1.0),
                    color: const Color.fromRGBO(220, 220, 220, 1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              FractionallySizedBox(
                heightFactor: spendingPrcOfTotal,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                ),
              )
            ],
          ),
        ),
        Text(label)
      ],
    );
  }
}