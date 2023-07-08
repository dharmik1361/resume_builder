// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:resume_builder/new.dart';

//Contact page
class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  //globalkey<formstate>formkey=new globalkey();

  final _formkey = new GlobalKey<FormState>();
  String? _name;
  String? _email;

  void validateandsave() {
    final form = _formkey.currentState;
    if (form?.validate() ?? false) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => carrier()));
    } else {
      print("form is unvalide");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Information"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    // key: _formkey,
                    controller: TextEditingController(text: "dharmik"),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Name",
                    ),
                    validator: (value) => value?.isEmpty ?? false
                        ? 'name can note be empty'
                        : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.call),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Phone No",
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    // key: _formkey,
                    controller: TextEditingController(text: "@gmail.com"),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => value?.isEmpty ?? false
                        ? 'email can note be empty'
                        : null,
                  ),
                ],
              )),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: validateandsave,
                  child: Text(
                    "Submit",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              ElevatedButton(
                  onPressed: () {},
                  child: Text("cancel",
                      style: TextStyle(fontWeight: FontWeight.bold))),
            ],
          )
        ],
      ),
    );
  }
}

//Archivement Page

class Archivement extends StatefulWidget {
  const Archivement({super.key});

  @override
  State<Archivement> createState() => _ArchivementState();
}

class _ArchivementState extends State<Archivement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        title: Text("archivement"),
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              // padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(30),
              height: 310,
              width: 350,
              color: Color(0xffffffff),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Enter Archivement",
                    style: TextStyle(fontSize: 25, color: Color(0xfff9a9a9a)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 20)),
                        hintText: "Exceed sales 17% avearage",
                        hintStyle: TextStyle(color: Color(0xfff9a9a9a)),
                        suffixIcon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 20)),
                        hintText: "Exceed sales 17% avearage",
                        hintStyle: TextStyle(color: Color(0xfff9a9a9a)),
                        suffixIcon: Icon(Icons.delete),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff9a9a9a)),
                    ),
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Refrence page

class Refrence extends StatefulWidget {
  const Refrence({super.key});

  @override
  State<Refrence> createState() => _RefrenceState();
}

class _RefrenceState extends State<Refrence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        title: Text("Refrence"),
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.blue,
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 260,
            width: 370,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Refrence",
                        style: TextStyle(fontSize: 20),
                      ),
                      hintText: "Dharmik",
                      hintStyle: TextStyle(color: Color(0xfff9a9a9a)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Designation",
                        style: TextStyle(fontSize: 20),
                      ),
                      hintText: "Marketing manager ID 32-1",
                      hintStyle: TextStyle(color: Color(0xfff9a9a9a)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      label: Text(
                        "Organization/institute",
                        style: TextStyle(fontSize: 20),
                      ),
                      hintText: "Green Energy Pvt.ltd",
                      hintStyle: TextStyle(color: Color(0xfff9a9a9a)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50))),
                    ),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

// Personal detail

class personal extends StatefulWidget {
  const personal({Key? key}) : super(key: key);

  @override
  State<personal> createState() => _personalState();
}

class _personalState extends State<personal> {
  bool? isMarried = false;
  bool gujaratiKnown = false;
  bool hindiKnown = false;
  bool englishKnown = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffededed),
      appBar: AppBar(
        title: Text("personal details"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              margin: EdgeInsets.all(30),
              height: 560,
              width: 370,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'DOB',
                        hintText: 'DD/MM/YYYY',
                        border: OutlineInputBorder()
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text('Married Status:'),
                            Radio(
                              value: true,
                              groupValue: isMarried,
                              onChanged: (value) {
                                setState(() {
                                  isMarried = value as bool?;
                                });
                              },
                            ),
                            Text('Married'),
                            Radio(
                              value: false,
                              groupValue: isMarried,
                              onChanged: (value) {
                                setState(() {
                                  isMarried = value as bool?;
                                });
                              },
                            ),
                            Text('Unmarried'),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "langauage known",
                            ),
                            Checkbox(
                              value: gujaratiKnown,
                              onChanged: (value) {
                                setState(() {
                                  gujaratiKnown = value!;
                                });
                              },
                            ),
                            Text('Gujarati'),
                            Checkbox(
                              value: hindiKnown,
                              onChanged: (value) {
                                setState(() {
                                  hindiKnown = value!;
                                });
                              },
                            ),
                            Text('Hindi'),
                            Checkbox(
                              value: englishKnown,
                              onChanged: (value) {
                                setState(() {
                                  englishKnown = value!;
                                });
                              },
                            ),
                            Text('English'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
