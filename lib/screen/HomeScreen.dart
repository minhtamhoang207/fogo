import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fogo_app/const/consts.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}
class _HomePage extends State<HomePage>{
  final List<String> _listItem = [
    'assets/images/ptit.jpg',
    'assets/images/Hanu.jpg',
    'assets/images/ptit.jpg',
    'assets/images/dongda.jpg',
    'assets/images/ptit.jpg',
    'assets/images/Hanu.jpg',
    'assets/images/dongda.jpg',
    'assets/images/ptit.jpg',
    'assets/images/Hanu.jpg',
    'assets/images/dongda.jpg',
    'assets/images/ptit.jpg',
    'assets/images/Hanu.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomAppBar(),
      drawer:
        Drawer(
          child: Column(
            children: <Widget>[
              Container(
                height: 175,
                width: double.infinity,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.account_circle,
                      size: 65,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Text(
                        "Show username\nID:XXXXXXXXXX",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                )
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.blue[300],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.lock_outline,
                            size: 35,
                            color: Colors.white,
                          ),
                          Text(
                            "   Change password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
              Expanded(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blue[300],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.error,
                              size: 35,
                              color: Colors.white,
                            ),
                            Text(
                              "   Need help ?",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.supervisor_account,
                              size: 35,
                              color: Colors.white,
                            ),
                            Text(
                              "   About us ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.subdirectory_arrow_left,
                              size: 35,
                              color: Colors.white,
                            ),
                            Text(
                              "   Log out ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 15, left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Version: ",
                              style: TextStyle(
                                fontSize: 11
                              ),
                            ),
                            Text(
                              "0.0001",
                              style: TextStyle(
                                  fontSize: 11
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ),

      body: Column(
        children: <Widget>[
          Container(
            child: Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255,243,119,65),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36.0),
                        bottomRight: Radius.circular(36.0),
                      )
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  child: IconButton(
                    onPressed: (){
                      
                    },
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -150,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,5),
                            blurRadius: 15,
                            color: Colors.deepOrangeAccent,
                          )
                        ],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        )
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 30,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "Search something"
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.tv,
                                        size: 50,
                                        color: Color.fromARGB(255,219,65,243),
                                      ),
                                      padding: EdgeInsets.all(0),
                                    ),
                                    Text(
                                      "  Multiple \n   search",
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.person_outline,
                                        size: 50,
                                        color: Color.fromARGB(255,219,65,243),
                                      ),
                                      padding: EdgeInsets.all(0),
                                    ),
                                    Text(
                                      "  Multiple \n   search",
                                    )
                                  ],
                                ),
                              ),Expanded(
                                child: Column(
                                  children: <Widget>[
                                    IconButton(
                                      onPressed: (){},
                                      icon: Icon(
                                        Icons.widgets,
                                        size: 50,
                                        color: Color.fromARGB(255,219,65,243),
                                      ),
                                      padding: EdgeInsets.all(0),
                                    ),
                                    Text(
                                      "  Multiple \n   search",
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 170,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.blue,
              ),
              Text(
                "Trending",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: _listItem.map((item) => Card(
                  color: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0,5),
                            blurRadius: 8,
                            color: Colors.black,
                          )
                        ],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage(item),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                )).toList(),
              )
          ),
        ],
      ),
    );
  }
  _bottomAppBar(){
    return BottomAppBar(
      child: Container(
        height: 50,
        color:Color.fromARGB(255,243,119,65),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.people,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.home,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.message,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: (){},
                icon: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

