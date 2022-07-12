import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentor_app/screens/home/widgets/agenda.dart';
import 'package:mentor_app/screens/home/widgets/date_row.dart';

import '../../const.dart';
import 'cubit/home_page_cubit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit(context.read()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Mentor App'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DateRow(),
              SizedBox(height: 24),
              Text('Book a Mentor', style: AppFonts.headline1),
              SizedBox(height: 12),
              Agenda()
            ],
          ),
        ),
      ),
    );
  }
}
