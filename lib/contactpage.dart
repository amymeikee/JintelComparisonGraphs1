import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Contact Us"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Center(
                child: new Text(
                  'Call [number] or email [email]',
                  style: new TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500)
                )
              ),
              new ListTile(
                contentPadding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 10.0),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "(To: auto insert email)",
                  ),
                ),
              ),
              new ListTile(
                contentPadding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                title: new TextField(
                  decoration: new InputDecoration(
                    hintText: "Please enter the message you would like to send here.",
                    hintStyle: new TextStyle(
                      color: Colors.black,
                      fontSize: 12.0,
                    )
                  ),
                  keyboardType: TextInputType.multiline,
                  maxLines: 2,
                  style: new TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                  ),
                )
              ),
              new RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                onPressed: () => null,
                child: new Text('Contact Us'),
              )
            ]
          ),
        )
    );
  }
}