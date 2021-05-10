import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title:'Food Recipe',
      debugShowCheckedModeBanner: false,      
      home:Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor:Colors.white,
        body:MyHome(),
      )
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
    child:Stack(
      children: [
        Column(
          children: [
            Container(
              height:MediaQuery.of(context).size.height*0.35,
              color:Colors.grey[200],
            ),
            Container(
              height:MediaQuery.of(context).size.height*0.65,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 20),          
          decoration:BoxDecoration(                          
            borderRadius:BorderRadius.circular(20),
            color: Colors.white,
          ),
          child:Material(
              elevation:5.0,                
              borderRadius:BorderRadius.circular(30),
              child: TextFormField(                              
              decoration:InputDecoration(                                                            
                contentPadding:EdgeInsets.fromLTRB(10, 13, 10,10),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon:Icon(Icons.search,
                color:Colors.black,),
                hintText:'Search for recipes and channels',
                hintStyle:TextStyle(
                  fontSize: 16,                    
                  color:Colors.grey[300],                
                  fontWeight: FontWeight.bold,
                ),
              ),
                keyboardType: TextInputType.text,                  
                autofocus: false,              
            ),
          ),                        
        ),
        Container(
          margin:EdgeInsets.fromLTRB(35, 100, 20, 20),
          child:Text('POPULAR RECIPES',
          style:TextStyle(
            fontWeight:FontWeight.bold,
            fontFamily:'Peddana',
            fontSize: 30,
            letterSpacing:1.2,
            color:Colors.grey[700],
          )),
        ),
        Container(
          margin:EdgeInsets.fromLTRB(35, 120, 20, 20),
          child:Text('THIS WEEK',
          style:TextStyle(
            fontWeight:FontWeight.bold,
            fontFamily:'Peddana',
            fontSize: 30,
            letterSpacing:1.2,
            color:Colors.grey[700],
          )),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 110,0,0),
          child: SizedBox(
            height:30,
            width: 2,
            child: Container(
              color:Colors.amber,
            ),
          ),            
        ),          
        Container(
          height: 170,
          margin:EdgeInsets.fromLTRB(20, 200, 20, 20),          
          child: ListView(
            shrinkWrap:true,                  
            scrollDirection: Axis.horizontal,
            children: [                
              Material(
                  elevation:10.0,
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  child: Container(
                  padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                  height: 160.0,
                  width: 350.0,                  
                  child: Row(
                    children: [
                      Container(
                        height: 125,
                        width: 150,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(12),                          
                          image: DecorationImage(
                              image:AssetImage('./assets/images/balanced.jpg'),
                              fit: BoxFit.cover,                              
                          ),                           
                        ),
                      ),
                      SizedBox(
                          width:20.0,
                      ),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                          'Grilled Chicken',
                          style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),                          
                        ),
                        Text(
                          'with Fruit Salad',
                          style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height:2,
                            width:75,
                            child: Container(
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height:30,
                              width: 30,
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(image: AssetImage('./assets/images/chris.jpg',),                                
                                fit:BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                            'Chris Pratt',
                            style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          ],
                        )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10,),                
              Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                  padding: EdgeInsets.fromLTRB(1, 0, 0, 0),
                  height: 150.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,                                  
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 125,
                        width: 150,
                        decoration:BoxDecoration(
                          borderRadius: BorderRadius.circular(12),                          
                          image: DecorationImage(
                              image:AssetImage('./assets/images/balanced.jpg'),
                              fit: BoxFit.cover,                              
                          ),                           
                        ),
                      ),
                      SizedBox(
                          width:20.0,
                      ),
                      Column(
                        mainAxisAlignment:MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                          'Grilled Chicken',
                          style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),                          
                        ),
                        Text(
                          'with Fruit Salad',
                          style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            height:2,
                            width:75,
                            child: Container(
                              color: Colors.amber,
                            ),
                          ),
                        ),
                        SizedBox(
                          height:10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height:30,
                              width: 30,
                              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                image: DecorationImage(image: AssetImage('./assets/images/chris.jpg',),                                
                                fit:BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                            'Chris Pratt',
                            style:TextStyle(
                            color:Colors.black26,
                            fontSize: 15,                           
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                          ],
                        )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10,),                
            ],
          ),
        ),
        Container(
          margin:EdgeInsets.fromLTRB(25, 400, 25,0),
          child: Text(
                'September 24',
                 style:TextStyle(
                 color:Colors.grey[500],
                 fontFamily:'Peddana',
                 fontSize: 20,                           
                 fontWeight: FontWeight.bold,
                 ),
          ),
        ),
        Container(
          margin:EdgeInsets.fromLTRB(25, 410, 25, 10),
          child: Text(
                'TODAY',
                 style:TextStyle(
                 color:Colors.black87,
                 fontFamily:'Peddana',
                 fontSize: 45,                           
                 fontWeight: FontWeight.bold,
                 ),
          ),
        ),
        Container(
            margin:EdgeInsets.fromLTRB(25, 480, 25, 10),          
            child: Stack(                
            children: [
              Container(
              height:370,                  
              width: 370,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage('./assets/images/breakfast.jpg'),
              fit: BoxFit.cover,),
              ),
              child:BackdropFilter(filter:ImageFilter.blur(sigmaX:1.5,sigmaY:1.5),
              child: Container(
                decoration: BoxDecoration(                                      
                ),
              ),),        
          ),
          Container(
            margin:EdgeInsets.fromLTRB(10, 40, 20, 20),
            child:Text(
              'BEST OF THE DAY',              
              style: TextStyle(
               fontSize: 55,
               fontFamily:'Peddana',
               color: Colors.white.withOpacity(0.8),                 
              ),
            ),
          ),
          Container(
            margin:EdgeInsets.fromLTRB(10, 100, 20, 20),
            child: SizedBox(
              width: 320,
              height: 5,
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
            ],
            ),
        ),                     
      ],
    )
      );
  }
}