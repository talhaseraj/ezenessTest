import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;
void main() {

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 10,),
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          MaterialButton(onPressed: (){}, child :Image.asset("assets/stack.png",width: width*.065,color: Colors.grey[800],)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined)),
          IconButton(onPressed: (){}, icon:  Icon(Icons.photo_camera,size: width*.1,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.explore_outlined)),
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.chat_outlined))),


        ]),
      ),
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(

              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("USell",style: TextStyle(fontSize: width*.08,fontWeight: FontWeight.bold),),
                  Text("Up",style: TextStyle(fontSize: width*.08,fontWeight: FontWeight.bold),),
                ],),
                Container(
                  padding: EdgeInsets.only(left: width*.02,right: width*.02),
                  width: width*.65,
                  height: width*.1,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                     Radius.circular(5)
                    ),),
                  child: Row(children:  [
                    Expanded(child: TextField(

                     decoration: InputDecoration(
                       hintText: "Search",
                       border: InputBorder.none,
                        suffixIcon: Container(
                          width: width*.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell( child: Icon(Icons.headset_mic,color: Colors.black,),onTap: (){}),
                              Image.asset("assets/247logopng.png",width: width*.12),
                              Icon(Icons.document_scanner_outlined,color: Colors.black,),


                            ],
                            //Icon(Icons.done)

                          ),
                        ),
                      ),

                    ))


                  ],),
                ),



              ],),
            ),
Expanded(
  child:   SingleChildScrollView(
    child:   Column(children: [
    
    Container(
    
      color: Colors.grey[300],
    
      padding: EdgeInsets.fromLTRB(width*.02, width*.02, width*.02, width*.02),
    
      child:   Row(
    
      
    
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
      
    
        children: [
    
      
    
          Text("HEAD TIL 1",style: TextStyle(color: Colors.grey[800]),),
    
      
    
          Text("HEAD TIL 2",style: TextStyle(color: Colors.grey[800]),),
    
      
    
          Text("HEAD TIL 3",style: TextStyle(color: Colors.grey[800]),),
    
      
    
          Text("HEAD TIL 4",style: TextStyle(color: Colors.grey[800]),),
    
      
    
      
    
      
    
        ],),
    
    ),
    
                Stack(
    
                  children: [
    
                    Image.asset("assets/shoppingbags.png"),
    
                    Positioned(
    
                        bottom: 0,
    
                        child: Container(
    
                           color: Colors.white.withOpacity(0.5),
    
                          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
    
    
    
                          width: width*.97,
    
                          child: Row(
    
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                            children: [
    
                            Text("AED 300/-",style: TextStyle(fontSize: width*.05,color: Colors.grey[800],fontWeight: FontWeight.bold),),
    
                            Container(
    
                              alignment: Alignment.center,
    
    height: width*.06,
    
                            width: width*.17,
    
                            decoration: const BoxDecoration(
    
                              color: Colors.orange,
    
                              borderRadius: BorderRadius.all(
    
                                  Radius.circular(5)
    
                              ),
    
                            ),
    
    
    
                              child: Text("50% Off",style: TextStyle(color: Colors.white,fontSize: width*.03),),
    
                            ),
    
    
    
                          ],),
    
                        )
                    ),
    
    
    
    
    
                  ],
    
                ),
    
                Container(
    
                  padding: EdgeInsets.only(left: width*.02,right:width*.02,top: width*.01,bottom: width*.01 ),
    
                  color: Colors.grey[200],
    
                child: Row(
    
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
    
                  children: [
    
                    Text("Best practice Definition & Meaning",style: TextStyle(fontWeight: FontWeight.bold),),
    
                    Container(
    
                      alignment: Alignment.center,
    
                      height: width*.08,
    
                      width: width*.3,
    
                      decoration: const BoxDecoration(
    
                        color: Colors.blue,
    
                        borderRadius: BorderRadius.all(
    
                            Radius.circular(5)
    
                        ),
    
                      ),
    
    
    
                      child: Text("SHOP",style: TextStyle(color: Colors.white),),
    
                    ),
    
    
    
    
    
                  ],),
    
                ),
    
                SingleChildScrollView(
    
                  scrollDirection: Axis.horizontal,
    
                  child: Row(
    
    
    
               children: [
    
                   
    
    
    
    mainCategoryItem(height, width, 1),
    
    mainCategoryItem(height, width, 2),
    
    mainCategoryItem(height, width, 3),
    
    mainCategoryItem(height, width, 4),
    
    mainCategoryItem(height, width, 5),
    
               ],
    
                  ),
    
                ),
    
    Container(
    
      padding: EdgeInsets.only(left: width*.1),
    
      alignment: Alignment.centerLeft,
    
      height: width*.1,
    
      width: width,
    
      color: Colors.grey[200],
    
      child: Text("#BEST TITLE",
    
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*.05),
    
      ),
    
    
    
    ),

      if(Platform.isAndroid) Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    bestTitle(width, height,"shoppingbag1.jpg", true),
                    bestTitle(width, height,"shoppingbag1.jpg", false),
                    bestTitle(width, height,"shoppingbag1.jpg", true),
                ],),
      if(Platform.isAndroid) Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bestTitle(width, height,"shoppingbag1.jpg", true),
          bestTitle(width, height,"shoppingbag1.jpg", false),
          bestTitle(width, height,"shoppingbag1.jpg", true),
        ],),
     if(Platform.isAndroid) Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bestTitle(width, height,"shoppingbag1.jpg", true),
          bestTitle(width, height,"shoppingbag1.jpg", false),
          bestTitle(width, height,"shoppingbag1.jpg", true),
        ],),
      if(kIsWeb) Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bestTitle(width, height,"shoppinbag1", true),
          bestTitle(width, height,"shoppinbag1", false),
          bestTitle(width, height,"shoppinbag1", true),
          bestTitle(width, height,"shoppinbag1", true),
          bestTitle(width, height,"shoppinbag1", true),
          bestTitle(width, height,"shoppinbag1", true),
        ],),

      Container(

        padding: EdgeInsets.only(left: width*.1),
        alignment: Alignment.centerLeft,
        height: width*.1,
        width: width,
        color: Colors.grey[200],
        child: Text("#TOP TITLE",
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*.05),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          bestProfile(width, 1),
bestProfile(width, 2),
bestProfile(width, 3),
bestProfile(width, 4),
bestProfile(width, 5),
bestProfile(width, 6),

        ],),

      ),
      Container(

        padding: EdgeInsets.only(left: width*.1,right: width*.01),
        alignment: Alignment.centerLeft,
        height: width*.1,
        width: width,
        color: Colors.grey[200],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("#SHOP BY CATEGORY",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*.05),
            ),
            Text("View All"),
          ],
        ),
      ),

      Container(
        height: height*.15,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset("assets/stack.png",width: width*.18,color: Colors.blue,),
              SizedBox(width: width*.03,),
              Text("Sub Category",style: TextStyle(fontSize: width*.04),),
          ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/stack.png",width: width*.18,color: Colors.blue,),
                SizedBox(width: width*.03,),
                Text("Sub Category",style: TextStyle(fontSize: width*.04),),
              ],)
          

        ],),

      ),


      if(Platform.isAndroid) Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          bestTitle(width, height,"shoppingbag1.jpg", true),
          bestTitle(width, height,"hat.jpg", false),
          bestTitle(width, height,"hat.jpg", true),
        ],),


      Container(
      color: Colors.white,
        padding: EdgeInsets.fromLTRB(width*.04, width*.02, width*.04, width*.02),
        child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("TERM OF USE",style: TextStyle(color: Colors.grey[800]),),
            Text("CONTACT",style: TextStyle(color: Colors.grey[800]),),
            Text("CAREER",style: TextStyle(color: Colors.grey[800]),),
            Text("RANGE",style: TextStyle(color: Colors.grey[800]),),
          ],),

      ),
      Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(width*.04, width*.02, width*.04, width*.02),
        child:   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("USell",style: TextStyle(fontSize: width*.08,fontWeight: FontWeight.bold,color: Colors.grey[600]),),
                Text("Up",style: TextStyle(fontSize: width*.08,fontWeight: FontWeight.bold,color: Colors.grey[600]),),
              ],),
            Row(
              children: [
                Text("PROJECT BY ",style: TextStyle(color: Colors.grey[800]),),
                Text("EZENESS TECHNOLOGY",style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),),

              ],
            ),
          ],),

      ),

    ],),

  ),
),

          ],
        ),
      ),

    );
  }
  Widget mainCategoryItem(height,width,category)
  {
    return Padding(
      padding: EdgeInsets.fromLTRB(5,5,0,0),
      child: Container(
        height: height*.17,
        width: width*.25,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
              Radius.circular(10)
          ),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/stack.png",width: width*.20,color: Colors.grey[900],),
            Text("Main"),
            Text("Category$category"),
          ],),
      ),
    );
  }
  Widget bestTitle(width,height,image, bool discount)
  {
    return Expanded(child:
    Container(color: Colors.white,
    margin: EdgeInsets.fromLTRB(3, 3, 0, 0),
    height: height*.3,
      child: Column(

        children: [

          Stack(
            children: [
              Container(
                  height: height*.18,
                  child: Image.asset("assets/$image",width: width*.3,)),
              Positioned(
                  top: 0,
                  right: 0,
                  child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,size: width*.06,color: Colors.grey,))),

              Positioned(
                bottom: 0,
                child:  Container(
                  width: width*.3,
                  padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(Icons.star,color: Colors.amber,size: width*.05,),
                        Icon(Icons.star,color: Colors.amber,size: width*.05,),
                        Icon(Icons.star,color: Colors.amber,size: width*.05,),
                      ],),

                      Container(

                        alignment: Alignment.center,

                        height: width*.06,

                        width: width*.1,

                        decoration:  BoxDecoration(

                          color: Colors.black.withOpacity(0.4),

                          borderRadius: BorderRadius.all(

                              Radius.circular(5)

                          ),

                        ),



                        child: Text("3 KM",style: TextStyle(color: Colors.white,fontSize: width*.03),),

                      ),



                    ],),

                ),)
            ],
          ),
         if(discount) Container(


            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),



            width: width*.97,

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [

                Text("00.00/-",style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  decorationThickness: 3,
                  fontSize: width*.04,color: Colors.grey,),),

                Container(

                  alignment: Alignment.center,

                  height: width*.06,

                  width: width*.1,

                  decoration: const BoxDecoration(

                    color: Colors.orange,

                    borderRadius: BorderRadius.all(

                        Radius.circular(5)

                    ),

                  ),



                  child: Text("00%",style: TextStyle(color: Colors.white,fontSize: width*.03),),

                ),



              ],),

          ),
          Container(
            padding: EdgeInsets.only(left: width*.02),
            alignment: Alignment.centerLeft,
            width: width,
            child: Text("00.00/-",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: width*.05),),
          ),
          Container(
            padding: EdgeInsets.only(left: width*.02),
            alignment: Alignment.centerLeft,
            width: width,
            child: Text("Product Service",
              style: TextStyle(fontSize: width*.04),),
          ),
          Container(
            padding: EdgeInsets.only(left: width*.02),
            alignment: Alignment.centerLeft,
            width: width,
            child: Text("Title Product ",
              style: TextStyle(fontSize: width*.04),),
          ),

        ],

      ),



    ),);
  }

  Widget bestProfile(width,user)
  {
    return Container(
      padding: EdgeInsets.only(left: 5,top: 5),
      child: Column(children: [

        Image.asset("assets/profile_frame.png",width: width*.3,),
        Text("@_user$user",style: TextStyle(color: Colors.grey,fontSize: width*.05),)
      ],),
    );
  }
}
