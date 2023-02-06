import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/home_widgets/message_list_page.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key}) : super(key: key);

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int select=0;
  String value="";
var text;
  @override
  Widget build(BuildContext context) {
    TextEditingController myController=TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       backgroundColor: Colors.transparent,elevation: 0,
         leading: BackButton(color: Colors.black,),
        title: Text('Riya_Singhania_3111',style: TextStyle(color: Colors.black),),
        actions: [Icon(Icons.add,color: Colors.black,size: 30,)],
      ),body:
        Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height:50,
              child: TextField(
                onChanged: (text){
                value=text;
              },controller: myController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.grey,),
                  hintText: 'Search..',
                  hintStyle: TextStyle(fontSize:15,),
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none

                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            GestureDetector(onTap: (){
              setState(() {
                select=text;
              });
            },
              child: Container(

                child: Row(
                  children: [
                    Text('Messages',style: TextStyle(fontSize:18,fontWeight: FontWeight.bold,color: select==text?Colors.blue:Colors.black),),
                    Spacer(),
                    Text('14 requests',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),SizedBox(height: 10,)
,          MessageList()
          ],
    ),
        ),

    );
  }
}
