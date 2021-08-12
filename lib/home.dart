import 'package:flutter/material.dart';
import 'package:flutter_application_1/currencies.dart';
import 'currencies.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  Country fromCountry = datas[0];
  Country toCountry = datas[1];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 10,
        title: Text(
          'Currency Converter',
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              currency(toCountry),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              spreadRadius: 1,
                              blurRadius: 1,
                              offset: Offset(0, 1)),
                        ]),
                    child: Center(
                      child: Text(
                        '=',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.blue)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Image.asset(
                            "images/switch.jpg",
                            height: 60,
                          ),
                          Text(
                            "switch",
                            style: TextStyle(color: Colors.amber),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              currency(fromCountry)
            ],
          ),
        ),
      ),
    );
  }

  Container currency(Country country) {
    return Container(
      height: 167,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(1),
                spreadRadius: 12,
                blurRadius: 10,
                offset: Offset(0, 2)),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                ClipRRect(
                  child: Image.network(
                    country.flag,
                    height: 50,
                    width: 50,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        country.country_name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Colors.red,
                )
              ],
            ),
            TextField(
              style: TextStyle(fontSize: 35),
              decoration: InputDecoration(
                hintText: '0.0',
                suffixIcon: Text(
                  country.currency_symbol,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                suffixIconConstraints:
                    BoxConstraints(minWidth: 0, minHeight: 0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
