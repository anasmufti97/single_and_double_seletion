import 'package:flutter/material.dart';


class DiscountOfferScreen extends StatefulWidget {
  const DiscountOfferScreen({Key? key}) : super(key: key);

  @override
  _DiscountOfferScreenState createState() => _DiscountOfferScreenState();
}

class _DiscountOfferScreenState extends State<DiscountOfferScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey.shade300,
            child: Column(
              children: [


                /// app bar
                Expanded(
                    flex:2,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                            )),
                      ),
                      const Text(
                        "Offer details",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        color: Colors.white,
                        height: 1
                        ,
                        width: 20,
                      )

                    ],)
                    )

                ),




                Expanded(
                    flex:19,
                    child: Container(color: Colors.grey.shade300,
                    child: Column(
                      children: [

                        ClipRRect(
                          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(24) ,bottomRight: Radius.circular(24)),
                          
                          child: Image.network("https://media.istockphoto.com/photos/auto-mechanic-service-and-repair-picture-id652660058?k=6&m=652660058&s=612x612&w=0&h=kaPNUKxm6-DVr_OEs5fOjeXpe5hfESqc-NLwKVHswek=",
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              const Text("Special Offer" ,style: TextStyle(
                                  color: Colors.blue ,
                                  fontSize:19,
                                  fontWeight: FontWeight.bold
                              ),),
                              /// yellow box
                              Container(

                                height: 30,
                                width:MediaQuery.of(context).size.width*0.20,

                                decoration: BoxDecoration(
                                    color: Colors.yellow.shade700,
                                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                                child: const Center(
                                  child: Text("20% Off" ,style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500
                                  ),),
                                ),
                              )

                            ],),
                          const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: Text("asocial ascents asks assail clan" ,style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15
                            ),),
                          ),
                            const SizedBox(height: 35,),
                            const Text("async ascends assoc asocials clan" ,style: TextStyle(
                              fontSize: 15
                          ),),



                        ],),
                      )

                      ],
                    ),
                    )),



               /// bottom border
                Expanded(
                    flex: 3,
                    child:Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(18) ,topRight: Radius.circular(18)),

                      ),



                      child: Column(children: [
                         /// yellow container
                        Padding(
                          padding: const EdgeInsets.only(top: 17.0),
                          child: Container(

                            height:MediaQuery.of(context).size.height/17,
                            width:MediaQuery.of(context).size.width*0.90,

                            decoration: BoxDecoration(
                              color: Colors.yellow.shade800,
                              borderRadius: const BorderRadius.all(Radius.circular(15)),

                            ),

                            child: const Center(
                              child: Text("Order now" ,style: TextStyle(
                                  color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                              ),),
                            ),
                          ),
                        ),

                      ],
                      ),
                    )),
              ],
            ),
          ),



      ),
    );
  }
}
