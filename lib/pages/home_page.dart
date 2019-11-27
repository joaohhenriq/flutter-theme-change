import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.all(16),
          child: Icon(Icons.menu),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, right: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Today",
                  style: Theme.of(context).textTheme.headline,
                ),
                Icon(Icons.add_circle_outline)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 16),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 4,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                leading: Icon(Icons.call, color: Theme.of(context).iconTheme.color,),
                title: Text("Conference call", style: Theme.of(context).textTheme.body1,),
                subtitle: Text("30 mins", style: Theme.of(context).textTheme.body2,),
                trailing: Icon(Icons.check_circle, color: Theme.of(context).colorScheme.secondary,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
