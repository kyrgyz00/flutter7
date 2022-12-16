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
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.269,
            ),
            const Text("Вход",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),

            // SizedBox(height: height * 0.044),
            Padding(
              padding:
                  EdgeInsets.only(top: height * 0.044, bottom: height * 0.0246),
              child: SizedBox(
                width: width * 0.904,
                height: height * 0.0615,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(width * 0.037,
                          height * 0.023, width * 0.754, height * 0.0209),
                      filled: true,
                      fillColor: Color(0xffF9F8FF),
                      hintText: "E-mail",
                      hintStyle: const TextStyle(
                          color: Color(0xff4F4F4F),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Color(0xff333333), width: 0.5)),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(width: 5))),
                ),
              ),
            ),
            // SizedBox(
            //   height: height*0.0246,
            // ),
            SizedBox(
              width: width * 0.904,
              height: height * 0.0615,
              child: TextField(
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    // contentPadding: EdgeInsets.fromLTRB(left, top, right, bottom),

                    contentPadding: EdgeInsets.fromLTRB(width * 0.037,
                        height * 0.023, width * 0.032, height * 0.0209),
                    hintText: "Пароль",
                    filled: true,
                    fillColor: const Color(0xffF9F8FF),
                    hintStyle: const TextStyle(
                        color: Color(0xff333333),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: width * 0.032),
                      child:
                          Icon(Icons.visibility_off, color: Color(0xff333333)),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xff333333), width: 0.5)),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 5))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.0812),
              width: width * 0.352,
              height: height * 0.0615,
              decoration: BoxDecoration(
                  color: const Color(0xff743F8C),
                  borderRadius: BorderRadius.circular(50)),
              alignment: Alignment.center,
              child: const Text(
                "Войти",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
