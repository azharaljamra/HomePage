import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  Widget categoryItems(IconData icon , String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 20,),
      Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(color: Color(0x83fbba99), borderRadius: BorderRadius.circular(15)),
        child: Icon(icon, size: 25, color: Color(0xD2F37C58),),
      ),
     SizedBox(height: 7,),

      SizedBox(width: 50, height: 32 ,child: Text(title,style: TextStyle(fontSize:15, color: Colors.grey ,fontWeight: FontWeight.bold ),
        textAlign: TextAlign.center,
        softWrap: true,
        maxLines: 2,

      ),)


    ],
    );
  }
  Widget specialItem(String imageUrl, String title, String subtitle) {
    return Container(
      margin: EdgeInsets.all(15),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imageUrl),
          fit: BoxFit.cover,),),
      child: Padding(padding: EdgeInsets.all(20),

        child: Align(alignment: Alignment.topLeft, child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              subtitle,
              style: TextStyle(color: Colors.white70, fontSize: 13),
            ),

          ],
        ),
        ),
      ),
    );
  }

  List<Map<String, String>> specialItems = [
    {"image": "assets/image/product.jfif", "title": "Smartphone", "subtitle": "18 Brands"},
    {"image": "assets/image/product1.jpg", "title": "Fashion", "subtitle": "24 Brands"},
    {"image": "assets/image/product.jfif", "title": "Gaming", "subtitle": "12 Brands"},
    {"image": "assets/image/product.jfif", "title": "Electronics", "subtitle": "30 Brands"},
  ];

   List<Map<String, String>> popularProducts = [
    {"title": "Game Controller", "image": "assets/image/apparel6.jpg"},
    {"title": "Game Controller", "image": "assets/image/apparel2.jpg"},
    {"title": "Game Controller", "image": "assets/image/apparel6.jpg"},
    {"title": "Game Controller", "image": "assets/image/apparel2.jpg"},
  ];

  @override
  Widget build(Object context) {
  return SafeArea(child: Scaffold(


bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed ,items:
    [
    BottomNavigationBarItem(icon: Icon(Icons.storefront),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.chat_bubble_outline),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline),label: "")

    ]

),
    body: SingleChildScrollView(

      child: Container(
        padding: EdgeInsets.only(),
        margin: EdgeInsets.only(left: 10, top: 15,right: 10,), child:
        Column(
          children: [
            Row(children: [


         Expanded(
                     child: Container(margin: EdgeInsets.only(left: 10, top: 10,right: 10), height: 45,
                     decoration:BoxDecoration( color: Color(0xffE9E9E9), borderRadius: BorderRadius.circular(10)) ,child: Row(children: [ Icon(Icons.search), Expanded(child: Text("Search Kyeword"))],),
                                 ),),




        Container(
                margin: EdgeInsets.only(left: 10, top: 5,right: 10),
                child: Icon(Icons.shopping_cart),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE9E9E9),),),

              Badge(child:Container(

                child:  Icon(Icons.notification_add),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffE9E9E9),),),label: Text("4"),),
            ],),

            Container(
              margin: EdgeInsets.only(left: 10,right: 10, top: 20),
              padding:  EdgeInsets.only(left: 35, top: 20),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(color: Color(0xff503B97), borderRadius: BorderRadius.circular(20)),
     
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text("A Summer Surpies" , style: TextStyle( fontSize:12, color:Color(0xffE9E9E9) ),)

                  ,
                SizedBox(height: 10,),
                Text("Cashback 20%", style: TextStyle( fontSize:25, color:Color(0xffE9E9E9) ),)],
                             ),
            ),


Row(

  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Expanded(child: categoryItems(Icons.flash_on, "Flash Deal") ),
    Expanded(child: categoryItems(Icons.receipt, "Bill") ),
    Expanded(child: categoryItems(Icons.videogame_asset, "Game") ),
    Expanded(child: categoryItems(Icons.card_giftcard, "Daily Gift") ),
    Expanded(child: categoryItems(Icons.more_horiz, "more") ),
  ],
  ),

SizedBox(height: 20),
 Center (child:Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
       SizedBox(height: 20),
       Padding(
         padding: EdgeInsets.symmetric(horizontal: 16),
         child: Text(
           "Special for you",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold, color: Color(
              0xa00c0b0b)),
         ),
       ),
       SizedBox(height: 20),
       SizedBox(
         height: 150,
         child: ListView.builder(
           scrollDirection: Axis.horizontal,
           itemCount: specialItems.length,
           itemBuilder: (context, index) {
             return specialItem(
               specialItems[index]["image"]!,
               specialItems[index]["title"]!,
               specialItems[index]["subtitle"]!,
             );
           },
         ),
       ),

     ],)),


      SizedBox(height: 20),

    Padding(padding: EdgeInsets.symmetric(horizontal: 16.0) , child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Popular Product", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(
                  0xa00c0b0b))),
              Text("See More", style: TextStyle(fontSize: 15, color: Colors.grey)),
            ],
          ),

          SizedBox(height: 20),


          SizedBox(
            height: 200,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: popularProducts.length,
              separatorBuilder: (context, index) => SizedBox(width: 12),
              itemBuilder: (context, index) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                popularProducts[index]["image"]!,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
                ),
                ),
                SizedBox(height: 10),

                SizedBox(
                width: 120,
                child: Text(
                popularProducts[index]["title"]!,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Color(
                0xa00c0b0b)),
                maxLines: 2,

                ),
                ),


                ],

                );
              },
            ),
          ),
        ],
      )
    )

          ]),))));


  }



}