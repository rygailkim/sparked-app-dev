import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_app/repositories/conference.dart';
import 'package:mentor_app/screens/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => ConferenceRepository(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}


// class MyApp extends StatefulWidget {
//   MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   late final ConferenceRepository _repo;

//   @override
//   void initState() {
//     _repo = ConferenceRepository();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//             appBar: AppBar(title: const Text('Testing')),
//             body: Column(
//               //List a single event
//               children: [
//                 FutureBuilder<ConfEvent>(
//                     future: _repo.getEvent('gULqTSCfkW50LpeRpIxD'),
//                     builder: ((context, snapshot) {
//                       return Text(snapshot.data?.title ?? 'Unknown');
//                     })),

//                 //List all events
//                 Expanded(
//                   child: FutureBuilder<List<ConfEvent>>(
//                       future: _repo.getEvents(),
//                       builder: (context, snap) {
//                         if (snap.hasData) {
//                           return ListView.builder(
//                               itemCount: snap.data!.length,
//                               itemBuilder: (context, index) {
//                                 return Text(snap.data![index].title);
//                               });
//                         } else {
//                           return Container();
//                         }
//                       }),
//                 )
//               ],
//             )));
//   }
// }
