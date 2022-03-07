import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:practice1/cars_detail_screen.dart';
import 'package:practice1/discount_offer_screen.dart';

class DiscountListScreen extends StatefulWidget {
  const DiscountListScreen({Key? key}) : super(key: key);

  @override
  _DiscountListScreenState createState() => _DiscountListScreenState();
}

class _DiscountListScreenState extends State<DiscountListScreen> {
  final text = [ 'In Progress' ,  'Completed' , 'anas' , "progress" , 'away' ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text("Discount list" , style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
          leading: InkWell(
              onTap: (){

                Get.off(const CarDetailsScreen());
              },
              child: const Icon(Icons.arrow_back ,color: Colors.black,)),

        ),
        body: Container(

          height:MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey.shade300,

          child: Column(
            children: [
              Expanded(
                  flex:13,
                  child: ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0 ,left: 15 ,right: 14),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                  const DiscountOfferScreen()),
          );

        },
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
     /// picture
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height:
                  MediaQuery.of(context).size.height*0.17,
                  width:
                  MediaQuery.of(context).size.width*0.25,
                  decoration: const BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(7)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://media.istockphoto.com/photos/auto-mechanic-service-and-repair-picture-id652660058?k=6&m=652660058&s=612x612&w=0&h=kaPNUKxm6-DVr_OEs5fOjeXpe5hfESqc-NLwKVHswek=",
                      ),
                      fit: BoxFit.fitHeight,
                    )),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Row(

                  children: [
                  const Text("Special Offer" ,style: TextStyle(
                    color: Colors.blue ,
                    fontSize:16,
                    fontWeight: FontWeight.bold
                  ),),

                    const SizedBox(
                      width: 23,
                    ),
                    /// yellow box
                  Padding(
                    padding: const EdgeInsets.only(left: 31.0),
                    child: Container(

                      height: 30,
                      width:MediaQuery.of(context).size.width*0.19,

                      decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(8) ,bottomLeft: Radius.circular(8))),
                      child: const Center(
                        child: Text("20% Off" ,style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  )

                  ],),
                Padding(
                  padding: const EdgeInsets.only(top:5.0 ,bottom:8),
                  child: SizedBox(
                  width: Get.width*0.6,
                  child: const Text("You can take upto 20% off. fdvd vsvd sdcs dc.." ,style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                  maxLines: 2,),
                  ),
                ),
              ],),

                  /// more details
                Container(

                  height:MediaQuery.of(context).size.height/21,
                  width:MediaQuery.of(context).size.width*0.27,

                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(7)),

                  ),

                  child: const Center(
                  child: Text("More Details" ,style: TextStyle(
                    color: Colors.white
                  ),),
                  ),
                ),
              ],),


            ],
          ),
          decoration: const BoxDecoration(
          color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15))
          ),

        ),
      ),
    );
    }
    )),
              /// workshops
              const Expanded(
                  flex:2,
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text("Workshops" , style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),),
                      ))),
              /// workshop down container
              Expanded(
                  flex:12,
    child:ListView.builder(
    itemCount: 5,
    itemBuilder: (context, index) {
    return
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0 ,horizontal: 15),
      child: Container(

        height:MediaQuery.of(context).size.height*0.10,

        child:Row(
          children: [
            ///picture
            Padding(
              padding: const EdgeInsets.only(left:13.0),
              child: Container(
                height: MediaQuery.of(context).size.height/15.5,
                width:
                MediaQuery.of(context).size.width*0.12,
                decoration: const BoxDecoration(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://www.logolynx.com/images/logolynx/21/214d4538e5803d31e773c6fc810fe748.jpeg",
                      ),
                      fit: BoxFit.fitHeight,
                    )),
              ),
            ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            /// Workshop Name
            Row(children: [
              const Padding(
                padding: EdgeInsets.only(left:5.0 ,right: 30),
                child: Text("Workshop name here " ,style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.bold
                )),
              ),

     Row(children: [

       Icon(Icons.star ,color: Colors.yellow.shade700, size: 25,),
       const Text("4.2" ,style: TextStyle(
         fontSize:14,
         fontWeight: FontWeight.bold
       ),),
       const Text(" /5" ,style: TextStyle(
           fontSize:12,
       ),)
     ],),

            ],),

            /// green blue containers
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(children: [
               /// green container round
                Padding(
                  padding: const EdgeInsets.only(left: 5.0 ,right:2),
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: const BoxDecoration(
                        color: Colors.lightGreenAccent,
                      borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Icon(Icons.timeline_sharp ,color: Colors.white,size: 12,),
                  ),
                ),
                const Text("Verified Shop" ,style: TextStyle(
                  color: Colors.lightGreenAccent,
                    fontSize:12,
                    fontWeight: FontWeight.bold
                ),),

                /// blue container round
                Padding(
                  padding: const EdgeInsets.only(left: 6.0 , right:2),
                  child: Container(
                    height: 16,
                    width: 16,
                    decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    child: const Icon(Icons.shield_outlined ,color: Colors.white,size: 12,),
                  ),
                ),
                Text(index==1 || index==3 ?text[index]: ""),
              ],),
            ),
          ],),
          ],
        ),
        decoration: const BoxDecoration(
            color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      ),
    );
    })
              ),
            ],
          ),
        ),
      ),
    );
  }
}
