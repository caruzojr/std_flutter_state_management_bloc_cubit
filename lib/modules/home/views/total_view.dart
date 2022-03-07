import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';

class TotalView extends StatelessWidget {
  const TotalView({Key? key}) : super(key: key);

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
                Text('Total Products', style: TextStyle(fontSize: 18)),
                Spacer(),
                Container(
                  width: 60,
                  child: Center(
                    child: Text('${cubit.sumProducts}', style: TextStyle(fontSize: 18)),
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
                onPressed: () => cubit.backHome(),
                child: Text("VOLTAR"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
