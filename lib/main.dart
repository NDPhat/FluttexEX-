import 'package:flutter/material.dart';



void main() {
  runApp( MyApp());
}

//stateless thi man hinh se k doi khi click vao
//state full thi co
class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName="Click";
  int index=0; // navigation index

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // man hinh trang
        home: Scaffold(
          // bar
          appBar: AppBar(
            title: const Text("FaceBook"),

          ),
          body:  index==0 ? Container( // if condition de thay doi man hinh
            color: Colors.blue,
            child:SizedBox(
              //setting size Sizebox dang la screen
              width:double.infinity,
              height: double.infinity,
              // con cua screnn la 2 button
              child: Row(
                // setting vi tri ngang
                mainAxisAlignment: MainAxisAlignment.end,
                // vi tri doc
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // mau text
                          onPrimary: Colors.red,
                          // background
                          primary: Colors.orange
                      ),
                      // ham onpress
                      onPressed:()  {
                        // set lai trang thai sau khi click
                        setState((){
                          buttonName="Clicked";
                        });

                      } ,
                      child: Text(buttonName)),
                  ElevatedButton(
                      onPressed:()  {
                        setState((){
                          buttonName="Clicked";
                        });

                      } ,
                      child: Text(buttonName)),
                ],

              ),
            ),
            // else cua condition
          ) :
          Container(
            child:  const Text(
              'This is Google Fonts',

            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            //item cua navi
            items: const[
              BottomNavigationBarItem(icon: Icon(
                Icons.home ,
                color: Colors.red,
                size: 25,),

                  label:'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label:'Setting')

            ],currentIndex: index,//vi tri cua navi
            // khi click vao
            onTap: (int cRindex){
              setState((){
                index=cRindex;
                print("Index  $index");
              });
            },
          ),

        )

    );


  }
}

