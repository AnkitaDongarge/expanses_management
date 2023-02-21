
import 'package:flutter/material.dart';
import './main.dart';

class TransactionNew extends StatefulWidget {
final Function addtx;


  TransactionNew(this.addtx);

  @override
  State<TransactionNew> createState() => _TransactionNewState();
}

class _TransactionNewState extends State<TransactionNew> {
  final titleController=TextEditingController();

  final amountController=TextEditingController();

void submitData(){
  if(titleController.text.isEmpty || double.parse(amountController.text)<=0){
    return;
  }
  widget.addtx(titleController.text,
      double.parse(amountController.text));
}

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData(),
      child: Card(
        elevation: 6,
        child: Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: titleController,
                autocorrect: true,
                decoration: InputDecoration(
                  labelText: "Title",
                  hintText: "what you purshesed",
                ),
                onSubmitted:(_)=>submitData() ,
                //  onChanged: (value){titleInput= value;},

              ),
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,

                decoration: InputDecoration(
                  labelText: "amount",
                  hintText: "amount you spend",
                ),
                onSubmitted:(_)=>submitData() ,
                //   onChanged: (value){amountInput= value;},
              ),

              TextButton(onPressed: (){
                submitData();


                // print(titleInput);
                // print(amountInput);

              },
                  child: Text("add transaction",
                    style: TextStyle(
                      color: Colors.purple
                  ),
                  ),

              )

            ],
          ),
        ),
      ),
    );
  }
}
