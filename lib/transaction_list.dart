import 'package:flutter/material.dart';
import './transaction.dart';
import 'package:intl/intl.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction>transaction;
  const TransactionList(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: Column(
          children:
          transaction.map((tx){
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    child: Text(
                      '\$ ${tx.amount.toStringAsFixed(2)}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple
                      ),),
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        border: Border.all(color: Colors.purple,
                          width: 1,

                        )
                    ),
                    padding: EdgeInsets.all(12),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(tx.shop,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                      Text(
                        DateFormat.yMMMd().format(tx.date),
                        style: TextStyle(
                          color: Colors.grey,
                        ),)
                    ],
                  )

                ],
              ),
            );

          }).toList()

      ),
    );
  }
}

