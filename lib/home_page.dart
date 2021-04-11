import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.black54,
                    size: 30.0,
                  ),
                  Text(
                    'Surfers',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54,
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.black54,
                    size: 30.0,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                // width: 60.0,
                child: GridView.count(
                  childAspectRatio: 1.0,
                  crossAxisCount: 1,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (int i = 0; i < 10; i++) ProfilePic(),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                // width: 60.0,
                child: GridView.count(
                  childAspectRatio: 1.6,
                  crossAxisCount: 1,
                  scrollDirection: Axis.vertical,
                  children: [
                    for (int i = 0; i < 10; i++) Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProfileDescription(),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    ));
  }
}

class ProfilePic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1617932675801-c3912f140b63?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
                    scale: 0.5),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15.0),
              bottomLeft: Radius.circular(15.0),
              topRight: Radius.circular(150.0),
              topLeft: Radius.circular(15.0)),
          image:  DecorationImage(
        fit: BoxFit.fill,
        image: NetworkImage(
            'https://images.unsplash.com/photo-1481437642641-2f0ae875f836?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=750&q=80',
            scale: 0.5),
      ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ProfilePic(),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MICHAEL SCOTT',
                    style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white,),
                  ),
                  Text(
                    '3 HOURS AGO',
                    style: TextStyle(fontSize: 10.0,  color: Colors.white,),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0, top:10.0),
            child: Row(
              children: [
                Icon(Icons.assistant_photo, size: 20.0, color: Colors.white,),
                Text('1.2k', style: TextStyle(fontSize: 10.0, color: Colors.white,),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:50.0, top:10.0),
            child: Icon(Icons.add_location, color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left:40.0, top:40.0),
            child: Row(
              children: [
                Icon(Icons.play_circle_fill_outlined, size: 50.0, color: Colors.white,),
                SizedBox(width: 10.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Probably considered the \nforefather of pro surfing', style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight:FontWeight.w900),),
                    Text(
                      'LONDON, UNITED KINGDOM',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      textScaleFactor: 0.8,
                    ),
                  ],

                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
