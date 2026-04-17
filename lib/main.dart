import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants/constants.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/home_view.dart';
import 'models/notes_model.dart';
void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(NotesModelAdapter());



  await Hive.openBox<NotesModel>(kNotesBox);

  Bloc.observer = SimpleBlocObserver();

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routes: {
          HomeView.id: (context) => HomeView()
               },
        initialRoute: HomeView.id,

    );
    
    
  }
  
}