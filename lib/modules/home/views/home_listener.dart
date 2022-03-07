import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:std_flutter_state_management_bloc_cubit/modules/home/views/total_view.dart';

import '../cubit/home_cubit.dart';
import 'home_view.dart';

class HomeListener extends StatefulWidget {
  const HomeListener({Key? key}) : super(key: key);

  @override
  _HomeListenerState createState() => _HomeListenerState();
}

class _HomeListenerState extends State<HomeListener> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: BlocProvider.of<HomeCubit>(context),
      builder: (BuildContext context, HomeState state) {
        if (state is HomeSuccess) {
          return HomeView(
            books: state.books,
            pens: state.pens,
          );
        } else if (state is TotalSuccess) {
          return TotalView();
        } else {
          return Scaffold(
            body: Container(
              child: Center(
                child: Text("Nenhum estado emitido corretamente."),
              ),
            ),
          );
        }
      },
    );
  }
}
