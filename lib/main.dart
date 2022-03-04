import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_dio/controller/user_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  UserController _userController = Get.put(UserController());

  @override
  void initState() {
    _userController.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello"),
      ),
      body: Center(
          child: Obx(()=>ListView.builder(
            itemCount: _userController.listUser.length,
            itemBuilder: (context, index) {
              return Text(_userController.listUser[index].PhoneUser.toString());
            },
          ))
      ),
    );
  }
}
