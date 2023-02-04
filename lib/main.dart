import 'package:flutter/material.dart';
import './transaction.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  List<Transaction>tran=[
    Transaction(id: 't1', shop: 'new shoes', amount: 12.20, date: DateTime.now()),
    Transaction(id: 't2', shop: 'dress', amount: 32.22, date: DateTime.now())
  ];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(''
              'flutter app'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          children: [

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              width: double.infinity,

              color: Colors.white54,
              child: const Card(
                color: Colors.white54,
                elevation: 5.0,
                margin: EdgeInsets.all(29),
                child: Text(
                  'chart'
                ),
              ),

            ),
            Column(
              children:
                tran.map((tx){
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          child: Text(tx.amount.toString(),),
                        ),
                        Column(
                          children: [
                            Text(tx.id),
                            Text(tx.shop),
                            Text(tx.date.toString(),)
                          ],
                        )
                        
                      ],
                    ),
                  );

                }).toList()

            )

         ]
        )
      ),
    );
  }
}
