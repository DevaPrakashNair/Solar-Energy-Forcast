import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;


class InputPage extends StatelessWidget {

  TextEditingController field1= TextEditingController();
  var field2= TextEditingController();
  var field3= TextEditingController();
  var field4= TextEditingController();
  var field5= TextEditingController();
  var field6= TextEditingController();
  var field7= TextEditingController();
  var field8= TextEditingController();
  var field9= TextEditingController();

  var msg = TextEditingController();


  Future _sendDataToServer() async {

    var response = await http.post(
      Uri.parse('http://192.168.120.151:8080/predict'),
      body: {
        "field1":field1.text,
        "field2":field2.text,
        "field3":field3.text,
        "field4":field4.text,
        "field5":field5.text,
        "field6":field6.text,
        "field7":field7.text,
        "field8":field8.text,
        "field9":field9.text,
      },
    );
    print(response.body);
    msg.text = response.body.toString();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        title: Text('Input Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 1',
                      hintText: 'Enter the data',
                    ),
                    controller: field1,
                  ),
                ),
              ),
              SizedBox(height: 10), // Add some spacing between fields
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 2',
                      hintText: 'Enter the data',
                    ),
                      controller:field2
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 3',
                      hintText: 'Enter the data',
                    ),
                      controller: field3
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 4',
                      hintText: 'Enter the data',
                    ),
                      controller: field4
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 5',
                      hintText: 'Enter the data',
                    ),
                      controller: field5
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 6',
                      hintText: 'Enter the data',
                    ),
                      controller: field6
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 7',
                      hintText: 'Enter the data',
                    ),
                    controller: field7,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 8',
                      hintText: 'Enter the data',
                    ),
                    controller: field8,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 44,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        gapPadding: 4.0,
                      ),
                      labelText: 'Field 9',
                      hintText: 'Enter the data',
                    ),
                    controller: field9,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.all(15),
                child: MaterialButton(
                  onPressed: (){
                    _sendDataToServer();
                    Fluttertoast.showToast(msg: "654.87689");
                  },
                  child: const Text("Predict the energy"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
