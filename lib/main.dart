import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Renan App',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Renan App TESTANDO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage("https://media.licdn.com/dms/image/D4D03AQGAovFPW-vHQQ/profile-displayphoto-shrink_800_800/0/1690494817968?e=2147483647&v=beta&t=QNKMAnu7hvFFcQezQ1qhXvxWqSLI7Ogktnfg-qRil88"),
    radius: 150,
  );
  final nome = const Text(
    "Renan Clemonini",
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
    );
    final btnTelefone = IconButton(
      onPressed: () {

      }, 
      icon: const Icon(Icons.phone),
      color: Colors.blue,
    );
    final btnEmail = IconButton(
      onPressed: () {

      }, 
      icon: const Icon(Icons.email),
      color: Colors.blue,
    );
    final btnSms = IconButton(
      onPressed: () {

      }, 
      icon: const Icon(Icons.sms),
      color: Colors.blue,
    );

  Widget build(BuildContext contexto){
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          foto,
          nome,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              btnTelefone,
              btnEmail,
              btnSms
            ],
          )
        ],
      ),
    );
  }
}
