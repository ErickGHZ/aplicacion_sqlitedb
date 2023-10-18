import 'package:flutter/material.dart';
import 'package:sqlitedb/dbManager.dart';


import 'student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<List<Student>>? Studentss;
  TextEditingController telController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController apapeController = TextEditingController();
  TextEditingController apemaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController controlNumController = TextEditingController();
  String? tel = '';
  String? name = '';
  String? email = '';
  String? apepa = '';
  String? apema = '';
  String? photoname = '';
  //Update control
  int? currentUserId;
  final formKey = GlobalKey<FormState>();
  late var dbHelper;
  late bool isUpdating;


  //Metodos de usuario
  refreshList(){
    setState(() {
      Studentss = dbHelper.getStudents();
    });
  }
  @override
  void initState() {
    super.initState();
    dbHelper = DBManager();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

