import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  int books = 0;
  int pens = 0;

  int get sumProducts => books + pens;

  HomeCubit()
      : super(HomeSuccess(
          books: 0,
          pens: 0,
        ));

  incrementBook() {
    books++;
    emit(HomeSuccess(books: books, pens: pens));
  }

  decrementBook() {
    if (books > 0) {
      books--;
      emit(HomeSuccess(books: books, pens: pens));
    }
  }

  incrementPens() {
    pens++;
    emit(HomeSuccess(books: books, pens: pens));
  }

  decrementPens() {
    if (pens > 0) {
      pens--;
      emit(HomeSuccess(books: books, pens: pens));
    }
  }

  total() {
    emit(TotalSuccess(books: books, pens: pens));
  }

  backHome() {
    emit(HomeSuccess(books: books, pens: pens));
  }
}
