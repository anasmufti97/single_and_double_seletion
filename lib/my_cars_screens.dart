import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:practice1/cars_detail_screen.dart';

class MyCarsScreen extends StatefulWidget {
  const MyCarsScreen({Key? key}) : super(key: key);

  @override
  _MyCarsScreenState createState() => _MyCarsScreenState();
}

class _MyCarsScreenState extends State<MyCarsScreen> {
  final company = ['Cedan', 'SUV', 'Toyota', 'MG', 'Kaya', 'Sarah'];

  final discription = [
    'Mercedes Benz E63',
    "Toyota Land Cruiser",
    'Frarri',
    'Fortuner',
    'Rang Rover',
    'Civic'
  ];
  final Model = ['2018', '2012', '2019', '2020', '2015', '2017'];
  final Color = [
    'White color',
    'Red color',
    'White color',
    'Black color',
    'Blue color',
    'Black color'
  ];
  final Gear = [
    'Automatic',
    'Manual',
    'Automatic',
    'Manual',
    'Automatic',
    'Automatic'
  ];
  String dropdownValue = 'RS';
  List a = [
    "http://www.hdwallpaperspulse.com/wp-content/uploads/2014/01/30/r3.jpeg",
    "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700246792.jpg",
    "http://1.bp.blogspot.com/-Zh9r1D8QTTk/VS4FyT8LUTI/AAAAAAAAAEY/mM9ykF7FCfE/s1600/Ferrari-Logo-Wallpaper-31.jpg",
    "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700246792.jpg",
    "http://www.hdwallpaperspulse.com/wp-content/uploads/2014/01/30/r3.jpeg ",
    "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700246792.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade400,
          child: Column(
            children: [
              /// top bar
              Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.grey.shade400,
                      )),
                  Expanded(
                      flex: 3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            color: Colors.grey.shade400,
                            child: const Text(
                              "My cars",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (context) => Container(
                                    height:
                                        MediaQuery.of(context).size.height /
                                            1.6,
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(40),
                                            topLeft: Radius.circular(40))),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.all(10.0),
                                          child: Container(
                                              height: 8,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  color:
                                                      Colors.grey.shade300,
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(
                                                              20)))),
                                        ),

                                        ///add new car
                                        const Padding(
                                          padding:
                                              EdgeInsets.all(15.0),
                                          child: Text(
                                            "Add new car",
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.blue),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(9)),
                                                border: Border.all(
                                                    color: Colors
                                                        .grey.shade200)),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(
                                                        left: 100.0),
                                                child: Icon(Icons
                                                    .keyboard_arrow_right_rounded),
                                              ),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Colors.grey),
                                              onChanged:
                                                  (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              underline:
                                                  DropdownButtonHideUnderline(
                                                      child: Container(
                                                color: Colors.transparent,
                                                // height: 5,
                                                // width: 20,
                                              )),
                                              items: <String>[
                                                'USD',
                                                'DENAR',
                                                'RS',
                                                'EURO',
                                              ].map<
                                                      DropdownMenuItem<
                                                          String>>(
                                                  (String value) {
                                                return DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            right: 100,
                                                            left: 15),
                                                    child: Text(value),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(9)),
                                                border: Border.all(
                                                    color: Colors
                                                        .grey.shade200)),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(
                                                        left: 100.0),
                                                child: Icon(Icons
                                                    .keyboard_arrow_right_rounded),
                                              ),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Colors.grey),
                                              onChanged:
                                                  (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              underline:
                                                  DropdownButtonHideUnderline(
                                                      child: Container(
                                                color: Colors.transparent,
                                                // height: 5,
                                                // width: 20,
                                              )),
                                              items: <String>[
                                                'USD',
                                                'DENAR',
                                                'RS',
                                                'EURO',
                                              ].map<
                                                      DropdownMenuItem<
                                                          String>>(
                                                  (String value) {
                                                return DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            right: 100,
                                                            left: 15),
                                                    child: Text(value),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(9)),
                                                border: Border.all(
                                                    color: Colors
                                                        .grey.shade200)),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(
                                                        left: 100.0),
                                                child: Icon(Icons
                                                    .keyboard_arrow_right_rounded),
                                              ),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Colors.grey),
                                              onChanged:
                                                  (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              underline:
                                                  DropdownButtonHideUnderline(
                                                      child: Container(
                                                color: Colors.transparent,
                                                // height: 5,
                                                // width: 20,
                                              )),
                                              items: <String>[
                                                'USD',
                                                'DENAR',
                                                'RS',
                                                'EURO',
                                              ].map<
                                                      DropdownMenuItem<
                                                          String>>(
                                                  (String value) {
                                                return DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            right: 100,
                                                            left: 15),
                                                    child: Text(value),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(9)),
                                                border: Border.all(
                                                    color: Colors
                                                        .grey.shade200)),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(
                                                        left: 100.0),
                                                child: Icon(Icons
                                                    .keyboard_arrow_right_rounded),
                                              ),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Colors.grey),
                                              onChanged:
                                                  (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              underline:
                                                  DropdownButtonHideUnderline(
                                                      child: Container(
                                                color: Colors.transparent,
                                                // height: 5,
                                                // width: 20,
                                              )),
                                              items: <String>[
                                                'USD',
                                                'DENAR',
                                                'RS',
                                                'EURO',
                                              ].map<
                                                      DropdownMenuItem<
                                                          String>>(
                                                  (String value) {
                                                return DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            right: 100,
                                                            left: 15),
                                                    child: Text(value),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 10.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                1.2,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    const BorderRadius.all(
                                                        Radius.circular(9)),
                                                border: Border.all(
                                                    color: Colors
                                                        .grey.shade200)),
                                            child: DropdownButton<String>(
                                              value: dropdownValue,
                                              icon: const Padding(
                                                padding:
                                                    EdgeInsets.only(
                                                        left: 100.0),
                                                child: Icon(Icons
                                                    .keyboard_arrow_right_rounded),
                                              ),
                                              elevation: 16,
                                              style: const TextStyle(
                                                  fontWeight:
                                                      FontWeight.bold,
                                                  color: Colors.grey),
                                              onChanged:
                                                  (String? newValue) {
                                                setState(() {
                                                  dropdownValue = newValue!;
                                                });
                                              },
                                              underline:
                                                  DropdownButtonHideUnderline(
                                                      child: Container(
                                                color: Colors.transparent,
                                                // height: 5,
                                                // width: 20,
                                              )),
                                              items: <String>[
                                                'USD',
                                                'DENAR',
                                                'RS',
                                                'EURO',
                                              ].map<
                                                      DropdownMenuItem<
                                                          String>>(
                                                  (String value) {
                                                return DropdownMenuItem<
                                                    String>(
                                                  value: value,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets
                                                                .only(
                                                            right: 100,
                                                            left: 15),
                                                    child: Text(value),
                                                  ),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 30.0),
                                          child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height /
                                                  14.4,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.1,
                                              child: const Center(
                                                child: Text(
                                                  "Add new car",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              decoration: const BoxDecoration(
                                                  color: Colors.blue,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(
                                                              12)))),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                  size: 30,
                                ),
                              ))
                        ],
                      )),
                ],
              ),

              /// body
              Expanded(

                  child: Container(
                    color: Colors.grey.shade400,
                    child: ListView.builder(
                      itemCount: company.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              left: 18.0, right: 18, top: 15),
                          child: InkWell(
                            onTap: (){
                             Get.to(const CarDetailsScreen());

                            },
                            child: Container(
                              child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          ///picture
                                          Padding(
                                            padding: const EdgeInsets.all(12.0),
                                            child: Container(
                                              height:MediaQuery.of(context).size.height/15,
                                              width: 55,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(10)),
                                                  image: DecorationImage(
                                                    image:
                                                        NetworkImage(a[index]),
                                                    fit: BoxFit.fill,
                                                  )),
                                            ),
                                          ),

                                          /// text
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 30.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  discription[index],
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 17),
                                                ),
                                                Text(
                                                  company[index],
                                                  style: const TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),

                                      /// button
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(right: 10),
                                        child: Icon(Icons
                                            .keyboard_arrow_right_rounded),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 0.5,
                                    color: Colors.grey.shade400,
                                  ),
                                  Row(
                                    children: [
                                      /// model
                                      Padding(
                                        padding: const EdgeInsets.all(13.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Model Year",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                            Text(
                                              Model[index],
                                              style: const TextStyle(
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
                                                  width: 1
                                              ),
                                              left: BorderSide(
                                                  color: Colors.grey,
                                                  width: 0.5
                                              ),
                                            )

                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(13.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "Color",
                                                style: TextStyle(
                                                  color: Colors.grey.shade600,
                                                ),
                                              ),
                                              Text(
                                                Color[index],
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),

                                      /// gear
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Gear transmission",
                                              style: TextStyle(
                                                color: Colors.grey.shade600,
                                              ),
                                            ),
                                            Text(
                                              Gear[index],
                                              style: const TextStyle(
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
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15))),
                            ),
                          ),
                        );
                      },
                    ),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
