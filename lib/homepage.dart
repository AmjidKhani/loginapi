import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  TextEditingController emailC=TextEditingController();
  TextEditingController passwordC=TextEditingController();
   getdata(String email,password)async{
     String uri="https://reqres.in/api/register";
     try{

       Response response=await post(Uri.parse(uri) ,
           body: {
             "email":email,
             "password":password,
           }
       );
       if(response.statusCode==200){
         print("Successfully Login");
       }
       else{
         print("acount not created");
       }

     }catch(e){
       print(e.toString());
       print("acount not created");
     }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Api Integration "),

      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: emailC,
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: passwordC,
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap:(){
                getdata(emailC.text.toString(),passwordC.text.toString());

              } ,
              child: Container(
                width: 320,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green

                ),
                child: Center(child: Text("Sign Up")),
              ),
            )
          ],
        ),
      ),
    );
  }
}
