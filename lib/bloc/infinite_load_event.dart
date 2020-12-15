part of 'infinite_load_bloc.dart';

abstract class InfiniteLoadEvent extends Equatable {
  const InfiniteLoadEvent();

  @override
  List<Object> get props => [];
}

class InfiniteLoadLoading extends InfiniteLoadState {}

class InfiniteLoadMoreLoading extends InfiniteLoadState {}

class InfiniteLoadLoaded extends InfiniteLoadState {
  final List<PhotosModel> data;
  final int count;

  InfiniteLoadLoaded({@required this.data, @required this.count});
  @override
  List<Object> get props => [data, count];
}

class InfiniteLoadError extends InfiniteLoadState {}
