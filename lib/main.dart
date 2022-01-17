import 'package:flutter/material.dart';

void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )
);

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
        /* this body: SingleChildScrollView( child: Column(Children: ...) is use for
        solved the issue of A RenderFlex overflowed by 161 pixels on the bottom
         */
        body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
              Container(
                height: 400,
                width: 392.9,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:AssetImage('assets/images/background (3).jpg'),
                     fit: BoxFit.fill
                  )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        child: Container(
                          margin: EdgeInsets.only(top: 300),
                          child: Center(
                            child: Text("Anime World", style: TextStyle(color: Colors.amber, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )
                    )
                  ],
                ),
              ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                    blurRadius: 30.0,
                            offset: Offset(0, 20)
                    )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey))
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email or Phone number",
                              hintStyle: TextStyle(color: Colors.black)
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8.0),

                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.black),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(143, 148, 251, .1),
                          Color.fromRGBO(143, 148, 251, .6),
                        ]
                      )
                    ),
                    child: Center(
                      child: Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),)
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Forgot Password", style: const TextStyle(color: Colors.purpleAccent),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
