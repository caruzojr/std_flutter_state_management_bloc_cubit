import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:std_flutter_state_management_bloc_cubit/modules/home/cubit/home_cubit.dart';

class HomeView extends StatefulWidget {
  final int books;
  final int pens;

  const HomeView({
    Key? key,
    required this.books,
    required this.pens,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<HomeCubit>(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('State Management with'),
            Text(
              'Bloc/Cubit',
              style: TextStyle(fontSize: 45),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                Text('Books', style: TextStyle(fontSize: 18)),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => cubit.decrementBook(),
                  ),
                ),
                Container(
                  width: 60,
                  child: Center(
                    child: Text('${widget.books}', style: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => cubit.incrementBook(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text('Pens', style: TextStyle(fontSize: 18)),
                Spacer(),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.remove, color: Colors.white),
                    onPressed: () => cubit.decrementPens(),
                  ),
                ),
                Container(
                  width: 60,
                  child: Center(
                    child: Text('${widget.pens}', style: TextStyle(fontSize: 18)),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: () => cubit.incrementPens(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              width: 150,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.blueAccent,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                onPressed: () => cubit.total(),
                child: Text("CALULAR TOTAL"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
