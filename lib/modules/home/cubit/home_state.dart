part of 'home_cubit.dart';

// ignore: must_be_immutable
abstract class HomeState extends Equatable {
  int books;
  int pens;

  HomeState({
    required this.books,
    required this.pens,
  });

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class HomeSuccess extends HomeState {
  int books;
  int pens;

  HomeSuccess({
    required this.books,
    required this.pens,
  }) : super(
          books: books,
          pens: pens,
        );

  @override
  List<Object> get props => [books, pens];
}

// ignore: must_be_immutable
class TotalSuccess extends HomeState {
  int books;
  int pens;

  TotalSuccess({
    required this.books,
    required this.pens,
  }) : super(
          books: books,
          pens: pens,
        );

  @override
  List<Object> get props => [books, pens];
}
