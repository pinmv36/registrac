import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle=OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(
        color:Color(0xFFf0f0f0),width: 2
      )
    );
    const linkTextStyle=TextStyle(
        fontSize: 20.0,//размер
        color: Colors.blue,//цвет текстаenabledBorder:borderStyle,
        fontWeight: FontWeight.bold);
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(children:  [
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10.0,80.0,10.0,30),
                   child: Image.asset('assets/qwer.png'),
                 ),
                  const Text(//текст
                    "Введите данные:",
                    style: TextStyle(
                        fontSize: 20.0,//размер
                        color: Colors.blue,//цвет текста
                        fontStyle: FontStyle.italic),),
                  const SizedBox(height: 30,),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled:true,
                      fillColor:Colors.black12,
                      enabledBorder:borderStyle,
                      focusedBorder:borderStyle,
                      labelText:"Телефон",
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled:true,
                      fillColor:Colors.black12,
                      enabledBorder:borderStyle,
                      focusedBorder:borderStyle,
                      labelText:"Введите пароль",
                    ),
                  ),
                  const SizedBox(height: 40,),
                  SizedBox(
                      width: 200,
                      height: 50,
                      child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xf00000d0),
                            shape:RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(36.0),
                            )
                          ),
                          child: Text("Войти"))),
                  const SizedBox(height: 30,),
                  InkWell(child: Text('Регистрация',
                    style:linkTextStyle,),onTap:(){}),
                  const SizedBox(height: 30,),
                  InkWell(child: Text('Забыли пароль?',
                    style:linkTextStyle),onTap:(){}),
                ]
                ),
              ),
            ),

      );
      }
}

