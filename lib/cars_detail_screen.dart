import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice1/discount_list_screen.dart';

import 'my_cars_screens.dart';

class CarDetailsScreen extends StatefulWidget {
  const CarDetailsScreen({Key? key}) : super(key: key);

  @override
  _CarDetailsScreenState createState() => _CarDetailsScreenState();
}

class _CarDetailsScreenState extends State<CarDetailsScreen> {
  String dropdownValue = 'RS';
  final Color = [
    Colors.yellow.shade800,
    Colors.green,
  ];
  final Color2 = [
    Colors.yellow.shade200,
    Colors.green.shade200,
  ];
  final text = ['In Progress', 'Completed'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Car Details" , style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
          leading: InkWell(
              onTap: (){
                Get.off(const MyCarsScreen());

              },
              child: const Icon(Icons.arrow_back ,color: Colors.black,)),
          actions: const [Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.edit ,color: Colors.black,),
          ),],

        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade300,
          child: Column(
            children: [
              Container(
                height: 0.5,
                color: Colors.grey,
              ),

              /// top
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// image
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Image.network("http://1.bp.blogspot.com/-Zh9r1D8QTTk/VS4FyT8LUTI/AAAAAAAAAEY/mM9ykF7FCfE/s1600/Ferrari-Logo-Wallpaper-31.jpg" ,height:Get.height*0.1,)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(children: [
                        const Text(
                          'Mercedeze Benz 036',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                        Text(
                          'Cedan',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                    ),

                   SizedBox(
                     height: Get.height*0.03,
                   ),
                    Container(

                      height: 0.5,
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        /// model
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 5),
                          child: Column(
                            children: [
                              Text(
                                "Model Year",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const Text(
                                '2021',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),


                        /// color
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(
                                color: Colors.grey,
                                width: 0.5
                              ),
                              left: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5
                              ),
                            )

                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 13.0 ,horizontal: 18),
                            child: Column(
                              children: [
                                Text(
                                  "Color",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                const Text(
                                  'Color black',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),


                        /// gear
                        Padding(
                          padding: const EdgeInsets.only(right: 5.0),
                          child: Column(
                            children: [
                              Text(
                                "Gear transmission",
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              const Text(
                                'Automatic',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                color: Colors.grey.shade300,
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Latest orders",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ),

              Expanded(
                    child: ListView.builder(
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, bottom: 10),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DiscountListScreen()),
                              );
                            },
                            child: Container(

                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(15))),

                              /// broken windows
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment
                                            .spaceBetween,
                                    children: [
                                      /// broken windows and in progress
                                      Padding(
                                        padding: const EdgeInsets.all(
                                            13.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                          children: [
                                            const Text(
                                              "Broken windows",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 15,
                                                  fontWeight:
                                                      FontWeight
                                                          .bold),
                                            ),
                                            Container(
                                              height: 25,
                                              width: 80,
                                              decoration:
                                                  BoxDecoration(
                                                      color: Color2[index],
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                        Radius
                                                            .circular(
                                                                8),
                                                      )),
                                              child: Center(
                                                child: Text(
                                                  text[index],
                                                  style: TextStyle(
                                                      color: Color[
                                                          index],
                                                      fontWeight:
                                                          FontWeight.w500  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding:
                                            const EdgeInsets.all(8.0),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const DiscountListScreen()),
                                            );

                                          },
                                          child: const Icon(Icons
                                              .keyboard_arrow_right_rounded),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 1,
                                    color: Colors.grey.shade300,
                                  ),

                                  /// 1st Row
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                    color: Colors.grey,
                                                    width: 0.5
                                                ),
                                                // left: BorderSide(
                                                //     color: Colors.grey,
                                                //     width: 0.5
                                                // ),
                                              )

                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(vertical:
                                                    8.0 ,horizontal: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                              children: [
                                                Text(
                                                  "Order #",
                                                  style: TextStyle(
                                                    color: Colors
                                                        .grey.shade500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const Text(
                                                  "1234567",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight
                                                              .bold,
                                                      color:
                                                          Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [

                                            Padding(
                                              padding:
                                                  const EdgeInsets
                                                      .all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                children: [
                                                  Text(
                                                    "Date",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey
                                                            .shade500),
                                                  ),
                                                  const Text(
                                                    "Sep 8 ,2021",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight
                                                              .bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),

                                  Container(
                                    height: 1,
                                    color: Colors.grey.shade300,
                                  ),

                                  ///2nd Row
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                    color: Colors.grey,
                                                    width: 0.5
                                                ),

                                              )

                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.symmetric(vertical:
                                                    8.0 ,horizontal: 15),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                              children: [
                                                Text(
                                                  "Car",
                                                  style: TextStyle(
                                                    color: Colors
                                                        .grey.shade500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const Text(
                                                  "Mercedese Benze X36",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight
                                                              .bold,
                                                      color:
                                                          Colors.black),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),

                                      /// car
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets
                                                      .all(8.0),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment
                                                        .start,
                                                children: [
                                                  Text(
                                                    "Cost",
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors
                                                            .grey
                                                            .shade500),
                                                  ),
                                                  const Text(
                                                    "\$300",
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      color:
                                                          Colors.blue,
                                                      fontWeight:
                                                          FontWeight
                                                              .bold,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),

            ],
          ),
        ),
      ),
    );
  }
}

