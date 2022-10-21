import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:marlo_interview_task/model/transaction_list.dart';

class TransactionListWidget extends StatefulWidget {
  const TransactionListWidget({Key? key}) : super(key: key);

  @override
  State<TransactionListWidget> createState() => _TransactionListWidgetState();
}

class _TransactionListWidgetState extends State<TransactionListWidget> {
  List<TransactionListModel> transactionList = [
    TransactionListModel(
      price: "-\$850.00",
      iconImage: "assets/images/whiteuparrow.png",
      dateTime: 'sat ·16 Jul ·9.00 pm',
      title: 'Rent',
      color: Colors.pink.shade100,
    ),
    TransactionListModel(
      price: "-\$850.00",
      iconImage: "assets/images/whiteuparrow.png",
      dateTime: 'sat ·16 Jul ·9.00 pm',
      title: 'Rent',
      color: Colors.pink.shade100,
    ),
    TransactionListModel(
      price: "+\$850.00",
      iconImage: "assets/images/whitedownarrow.png",
      dateTime: 'sat ·16 Jul ·9.00 pm',
      title: 'Rent',
      color: Colors.green.shade100,
    ),
    TransactionListModel(
      price: "+\$850.00",
      iconImage: "assets/images/whitedownarrow.png",
      dateTime: 'sat ·16 Jul ·9.00 pm',
      title: 'Rent',
      color: Colors.green.shade100,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: transactionList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10.0, left: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Card(
              shape: Border(
                left: BorderSide(color: transactionList[index].color, width: 5),
              ),
              child: Container(
                height: size.height * 0.12,
                child: ListTile(
                  // tileColor: Theme.of(context).scaffoldBackgroundColor,
                  leading: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#135a80"),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Image.asset(
                      transactionList[index].iconImage.toString(),
                    ),
                  ),
                  title: Text(
                    transactionList[index].title.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      transactionList[index].dateTime.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  trailing: Padding(
                    padding: EdgeInsets.only(bottom: size.height * 0.045),
                    child: Text(
                      transactionList[index].price.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        // color: Colors.black,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
