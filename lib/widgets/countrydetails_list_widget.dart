import 'package:flutter/material.dart';
import 'package:marlo_interview_task/model/country_details_list.dart';

class CountryDetailsListWidget extends StatelessWidget {
  List<CountryDetailsList> countryDetailsList = [
    CountryDetailsList(
      price: "\€15,256,486.00",
      flag: "assets/images/uk.png",
      dollar: 'GBP',
    ),
    CountryDetailsList(
      price: "\$14,897,421.60",
      flag: "assets/images/usa.png",
      dollar: 'USD',
    ),
    CountryDetailsList(
      price: "\₹18,58,616.00",
      flag: "assets/images/india.png",
      dollar: 'RUP',
    ),
    CountryDetailsList(
      price: "\€15,256,486.00",
      flag: "assets/images/germany.png",
      dollar: 'EURO',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var startingIndex = 0;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: countryDetailsList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Card(
              elevation: 0,
              child: Container(
                height: size.height * 0.26,
                width: size.width * 0.4,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.transparent,
                      child: SizedBox(
                          width: 60,
                          height: 60,
                          child: ClipOval(
                            child: Image.asset(
                              countryDetailsList[index].flag.toString(),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      countryDetailsList[index].price.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    index == 0
                        ? RichText(
                            text: new TextSpan(
                              text: 'Main · ',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                              children: <TextSpan>[
                                new TextSpan(
                                  text: countryDetailsList[index]
                                      .dollar
                                      .toString(),
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          )
                        :

                        // Text(
                        //     "Main · ${countryDetailsList[index].dollar.toString()}",
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   )
                        Text(
                            countryDetailsList[index].dollar.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
