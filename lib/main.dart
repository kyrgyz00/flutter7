import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Practice7(),
    );
  }
}



class Practice7 extends StatefulWidget {
  const Practice7({super.key});

  @override
  State<Practice7> createState() => _Practice7State();
}

class _Practice7State extends State<Practice7> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffD9A8FF),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height*0.269,
            ),
            Text("Вход",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                
            SizedBox(height: height * 0.044),
            SizedBox(
              width: width * 0.904,
              height: height * 0.0615,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Color(0xff4F4F4F),fontSize: 14,fontWeight: FontWeight.w400),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 5))),
              ),
            ),
            SizedBox(
              height: height*0.0246,
            ),
            SizedBox(
              width: width * 0.904,
              height: height * 0.0615,
              child: TextField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  
                  hintText: "Пароль",
                  
                  hintStyle: TextStyle(color: Color(0xff333333),fontSize: 14,fontWeight: FontWeight.w400),
                  suffix: Icon(Icons.visibility_off,color: Color(0xff333333)),
                  
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 5))
                        
                        ),
                        
              ),
            ),
            SizedBox(height: height*0.0812,),
            Container(
              width: width*0.352,
              height: height * 0.0615,
              decoration: BoxDecoration(
              color: Color(0xff743F8C),
                borderRadius: BorderRadius.circular(50)
              ),
              alignment: Alignment.center,
              child: Text("Войти",style: TextStyle(color: Color(0xffFFFFFF), fontSize: 14,fontWeight: FontWeight.w500),),
            )
          ],
        ),
      ),
    );
  }
}
