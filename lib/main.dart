import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
          title: Row(
            children: [
              SizedBox(
                width: 60,
              ),
              Text('Payment'),
            ],
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Complete your booking by making any of ",
                          style: TextStyle(color: Colors.blue.shade900),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Row(
                      children: [
                        Text(
                          "the payment method.",
                          style: TextStyle(color: Colors.blue.shade900),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade200),
                width: 320,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_rounded,
                        color: Colors.blue.shade900,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Gas Hub eWallet",
                        style: TextStyle(
                            color: Colors.blue.shade900,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        "RM 32.67",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        height: 18,
                        width: 18,
                        color: Colors.white,
                        child: Checkbox(
                          checkColor: Colors.white,
                          value: value,
                          onChanged: (value) {
                            setState(() {
                              this.value = value!;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Container(
                  child: TabBar(
                    controller: _tabController,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Colors.blue.shade900,
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.bold),
                    indicatorColor: Colors.blue,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.blue.shade900)),
                    unselectedLabelColor: Colors.blue.shade900,
                    tabs: [
                      Tab(
                        text: "Credit/Debit",
                        icon: Container(
                          child: Image.asset(
                            "assets/logo/debit.png",
                            height: 20,
                            width: 20,
                          ),
                        ),
                      ),
                      Tab(
                        text: "UPI",
                        icon: Container(
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/logo/google-logo.png",
                                height: 20,
                                width: 20,
                              ),
                              Image.asset(
                                "assets/logo/paytm-logo.png",
                                height: 40,
                                width: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Tab(
                        text: "Net Banking",
                        icon: Container(
                          child: Image.asset(
                            "assets/logo/net.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                height: 700,
                child: TabBarView(controller: _tabController, children: [
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 350,
                            width: 330,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Card Number",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, left: 15),
                                    child: TextField(
                                        decoration: InputDecoration(
                                      suffix: Text("0 remains"),
                                      hintText: 'XXXX XXXX XXXX XXXX ',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ))),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Expiry Date",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      Text(
                                        "CVV",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900,
                                            fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 102,
                                        child: TextField(
                                            decoration: InputDecoration(
                                          suffixIcon: IconButton(
                                            icon: const Icon(
                                              Icons.arrow_drop_down,
                                              color: Colors.black,
                                            ),
                                            onPressed: () {},
                                          ),
                                          hintText: 'MM/YY ',
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        )),
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Container(
                                        width: 70,
                                        child: TextField(
                                            decoration: InputDecoration(
                                          prefixIcon: Row(
                                            children: [
                                              Icon(
                                                Icons.circle,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.black,
                                                size: 15,
                                              ),
                                            ],
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.black),
                                          ),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 15.0,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "Card Holder Name",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900),
                                      ),
                                      SizedBox(
                                        width: 50,
                                      ),
                                      Image.asset(
                                        "assets/logo/mastercard.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                      Image.asset(
                                        "assets/logo/visa.png",
                                        height: 70,
                                        width: 70,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, left: 15),
                                    child: TextField(
                                        decoration: InputDecoration(
                                      hintText: 'John Quick ',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 230,
                          height: 40,
                          child: RaisedButton(
                            onPressed: () {
                              print('Button Clicked');
                            },
                            child: Text('PAY'),
                            color: Colors.blue.shade900,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Container(
                            height: 130,
                            width: 330,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade200),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, top: 20),
                                  child: Row(
                                    children: [
                                      Text(
                                        "UPI ID",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue.shade900),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10.0, left: 15),
                                    child: TextField(
                                        decoration: InputDecoration(
                                      hintText: 'username@bankname ',
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black),
                                      ),
                                    ))),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          width: 230,
                          height: 40,
                          child: RaisedButton(
                            onPressed: () {
                              print('Button Clicked');
                            },
                            child: Text('PAY'),
                            color: Colors.blue.shade900,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text("v"),
                ]),
              )
            ]))),
      ),
    );
  }
}
