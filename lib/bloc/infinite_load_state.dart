part of 'infinite_load_bloc.dart';

abstract class InfiniteLoadState extends Equatable {
  const InfiniteLoadState();

  @override
  List<Object> get props => [];
}

class InfiniteLoadInitial extends InfiniteLoadState {}

class GetInfiniteLoad extends InfiniteLoadEvent {}

class GetMoreInfiniteLoad extends InfiniteLoadEvent {
  final int start, limit;

  GetMoreInfiniteLoad({@required this.start, this.limit});

  @override
  List<Object> get props => [start, limit];
}
