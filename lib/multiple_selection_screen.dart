import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MultipleSelectionScreen extends StatefulWidget {
  const MultipleSelectionScreen({Key? key}) : super(key: key);

  @override
  _MultipleSelectionScreenState createState() =>
      _MultipleSelectionScreenState();
}

class _MultipleSelectionScreenState extends State<MultipleSelectionScreen> {
  List <int> selectedList=[];


  bool multiSelectionColor(int index){
    for(int i=0; i<selectedList.length;i++){

      if(selectedList[i]==index){
        return true;
      }
    }
    return false;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children:
         List.generate(16, (index) => InkWell(
             onTap: (){

               if(selectedList.length==0){
                 selectedList.add(index);
                 setState(() {});

               }
               else if(selectedList.length!=0){

                 for(int i=0;i<selectedList.length;i++){

                   if(selectedList[i]==index){
                     selectedList.removeAt(i);
                     setState(() {});
                     return;
                   }
                 }

                 selectedList.add(index);
                 setState(() {

                 });
               }


             },
             child: multipleSelectionContainer(color:multiSelectionColor(index)? Colors.yellow:Colors.pink))


    )
        ),
      )
    );
  }
}
Widget multipleSelectionContainer(
    {String text = "Multiple Selection", Color color = Colors.yellow}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 50,
      width: Get.width,
      color: color,
      child: Center(child: Text(text)),
    ),
  );
}
