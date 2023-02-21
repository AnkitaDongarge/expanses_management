import './transaction_list.dart';
import 'package:flutter/material.dart';
import './transaction_new.dart';
import './transaction.dart';

void main(){
  runApp(MediaQuery(data: const MediaQueryData(),
  child: Myapp()));
}
class Myapp extends StatefulWidget {

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  List<Transaction>tran=[
    Transaction(id: 't1', shop: 'new shoes', amount: 12.20, date: DateTime.now()),
    Transaction(id: 't2', shop: 'dress', amount: 32.2, date: DateTime.now())
  ];
  void addnewtx(String titletx, double amounttx){
    final Transtx =Transaction(
        id:DateTime.now().toString() ,
        shop:titletx,
        amount: amounttx,
        date: DateTime.now()
    );
    setState(() {
      tran.add(Transtx);
    });

  }
  //String  ?titleInput;
void startAddNewTransaction(BuildContext ctx){
  showModalBottomSheet(context: ctx, builder:(ctx) {
    return TransactionNew(addnewtx);
  }
   );
}

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: const MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(''
                'flutter app'),
            actions: [
              IconButton(onPressed: ()=>
                  startAddNewTransaction(context),
                  icon: const Icon(Icons.add)
              )
            ],
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.center,
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
                TransactionList(tran),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: ()=>
              startAddNewTransaction,
          ),
        ),
      ),
    );
  }
}
