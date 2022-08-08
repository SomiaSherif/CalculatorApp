import 'package:flutter/material.dart';
import 'package:flutter_project/Components/Buttons.dart';

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String txt = '0';
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        drawer: Drawer(),
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(txt, style: TextStyle(color: Colors.white,fontSize: 30, ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name:" 1 ",action: (){
                    setState(() {
                      txt += "1";
                    });
                  }),
                  Button(name: " 2 ",action: (){
                    setState(() {
                      txt += "2";
                    });
                  }),
                  Button(name: " 3 ",action: (){
                    setState(() {
                      txt += "3";
                    });
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name: " 4 ",action: (){
                setState(() {
                  txt += "4";
                });
              }),
                  Button(name: " 5 ",action: (){
                    setState(() {
                      txt += "5";
                    });
                  }),
                  Button(name: " 6 ",action: (){
                    setState(() {
                      txt += "6";
                    });
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name: " 7 ",action: (){
                    setState(() {
                      txt += "7";
                    });
                  }),
                  Button(name: " 8 ",action: (){
                    setState(() {
                      txt += "8";
                    });
                  }),
                  Button(name: " 9 ",action: (){
                    setState(() {
                      txt += "9";
                    });
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name: " 0 ",action: (){
                    setState(() {
                      txt += "0";
                    });
                  }),
                  Button(name: " + ",action: (){
                    setState(() {
                      txt += " + ";
                    });
                  }),
                  Button(name: " - ",action: (){
                    setState(() {
                      txt += " - ";
                    });
                  }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name: " * ",action: (){
                    setState(() {
                      txt += " * ";
                    });
                  }),
                  Button(name: " / ",action: (){
                    setState(() {
                      txt += " / ";
                    });
                  }),
                  Button(name: " Del ",action: (){
                    setState(() {
                      txt = "";
                    });
                  })
                  ,
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(name: " = ",
                  action: (){
                  List num = txt.split(' ');
                  double result = double.parse(num[0]);
                  for(int i=1;i<num.length;i+=2)
                  {
                    if(num[i] == "+")
                    {
                      result += double.parse(num[i+1]);
                    }
                    else if(num[i] == "-")
                    {
                      result -= double.parse(num[i+1]);
                    }
                    else if(num[i] == "*")
                    {
                      result *= double.parse(num[i+1]);
                    }
                    else if(num[i] == "/")
                    {
                      result /= double.parse(num[i+1]);
                    }
                  }

                  setState(() {
                    txt += " = " + result.toString();
                  });
                  },)
                ],
              ),
              /*Row(
                children: [
                  MaterialButton(
                    onPressed: (){
                      List nums=txt.split(' ');
                      double res=double.parse(nums[0]);
                      for(int i=1;i<nums.length;i+=2)
                      {
                        if(nums[i]=="+")

                          res+=double.parse(nums[i+1]);
                        else
                        if(nums[i]=="-")
                          res-=double.parse(nums[i+1]);
                        else
                        if(nums[i]=="*")
                          res*=double.parse(nums[i+1]);
                        else
                        if(nums[i]=="/")
                          res/=double.parse(nums[i+1]);
                      }
                      setState(() {
                        txt=res.toString();
                      });


                    },color: Colors.yellow,child: Text('='),)
                ],
              )*/
            ],
          ),
        ),
      );
  }
}