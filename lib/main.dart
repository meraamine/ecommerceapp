import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ecommerce_Application" ,
      home: MyScaffold (),
    );
  }
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
    elevation: 1,
    leading: IconButton(
    icon: Icon(
    Icons.arrow_back,
    color: Colors.grey,
    ),
      onPressed: (){},
    //onPressed:() => context.go('/'),
    ),
    actions: [
    IconButton(
    icon: Icon(
    Icons.search,
    color: Colors.grey,
    ), //
      onPressed: (){},
      // onPressed:() => context.go('/whatsapp'),
    ),],
    ),
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[

          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
    body:ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding:EdgeInsets.all(8),
        children:  <Widget>[
          Container(
            height: 150,
            width:350,
            color: Colors.black,
              child: MyCard(),
          ),
      SizedBox(height: 15, ),
      Container(
          height: 150,
          width:350,
          color: Colors.black,
          child: MyCard2(),
      ),
          SizedBox(height: 15, ),
          Container(
            height: 150,
            width:350,
            color: Colors.black,
            child: MyCard3(),
          ),
        ]
    ),
    );
  }
}

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        children: <Widget>[
        AspectRatio(
        aspectRatio: 30.0 / 30.0,
      child: Image.asset("assets/images/6.jpg",width: 250,height: 500,fit:BoxFit.fitWidth,),),
          Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 6.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
            const Text(
            'Christmas Hoodie',
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
            ),
                const SizedBox(height: 10.0),
                const  Text(
                  '100 USD',
                  style: TextStyle(fontSize: 15, fontWeight:FontWeight.normal),),
          ])),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
            RatingBar.builder(
              itemSize: 20,
              initialRating: 2,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 3,
              itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
          ),]));
  }
}

class MyCard2 extends StatefulWidget {
  const MyCard2({super.key});

  @override
  State<MyCard2> createState() => _MyCard2State();
}

class _MyCard2State extends State<MyCard2> {
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white,
        child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 30.0 / 30.0,
                child: Image.asset("assets/images/12.jpg",width: 250,height: 500,fit:BoxFit.fitWidth,),),
              Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 6.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Christmas Hoodie',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        const  Text(
                          '100 USD',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
                      ])),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 3,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),]));
  }
}

class MyCard3 extends StatefulWidget {
  const MyCard3({super.key});

  @override
  State<MyCard3> createState() => _MyCard3State();
}

class _MyCard3State extends State<MyCard3> {
  @override
  Widget build(BuildContext context) {
    return  Card(
        color: Colors.white,
        child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 30.0 / 30.0,
                child: Image.asset("assets/images/1.jpg",width: 250,height: 500,fit:BoxFit.fitWidth,),),
              Padding(
                  padding: const EdgeInsets.fromLTRB(14.0, 10.0, 14.0, 6.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'Christmas Hoodie',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10.0),
                        const  Text(
                          '100 USD',
                          style: TextStyle(fontSize: 15 , fontWeight: FontWeight.normal),),
                      ])),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 3,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),]));
  }
}

/*class MyListViwe extends StatefulWidget {
  const MyListViwe({super.key});

  @override
  State<MyListViwe> createState() => _MyListViweState();
}

class _MyListViweState extends State<MyListViwe> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      children: [
        Card(
          elevation: 2.0,
          color: Colors.white,
          margin: EdgeInsets.all(30.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading:Image.network("https://i.etsystatic.com/21882937/c/1748/1390/695/298/il/c0d33d/3252845295/il_340x270.3252845295_rf19.jpg",
                      width:20,
                      height:30,
                    ) ,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Hoodie-Christmas" ,
                    style:
                    TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 10,),
                  Icon(Icons.star),
                  SizedBox(height: 10,),
                  Text("Hoodie-Christmas" ,
                    style:
                    TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 10,)

                ],
              )
            ],
          ),
        ),
      ],
    );

  }
}*/
