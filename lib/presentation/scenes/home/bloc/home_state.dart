part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState({
    required this.isLoading,
    required this.listPopular,
    required this.isLoadingTopRated,
    required this.listTopRated,
    required this.isLoadingUpcoming,
    required this.listUpcoming,
  });

  final bool isLoading;
  final List<MovieResponseObject> listPopular;
  final bool isLoadingTopRated;
  final List<MovieResponseObject> listTopRated;
  final bool isLoadingUpcoming;
  final List<MovieResponseObject> listUpcoming;

  factory HomeState.initial() {
    return const HomeState(
      isLoading: false,
      listPopular: [],
      isLoadingTopRated: false,
      listTopRated: [],
      isLoadingUpcoming: false,
      listUpcoming: [],
    );
  }

  HomeState copyWith({
    bool? isLoading,
    List<MovieResponseObject>? listPopular,
    bool? isLoadingTopRated,
    List<MovieResponseObject>? listTopRated,
    bool? isLoadingUpcoming,
    List<MovieResponseObject>? listUpcoming,
  }) =>
      HomeState(
        isLoading: isLoading ?? this.isLoading,
        listPopular: listPopular ?? this.listPopular,
        isLoadingTopRated: isLoadingTopRated ?? this.isLoadingTopRated,
        listTopRated: listTopRated ?? this.listTopRated,
        isLoadingUpcoming: isLoadingUpcoming ?? this.isLoadingUpcoming,
        listUpcoming: listUpcoming ?? this.listUpcoming,
      );

  @override
  List<Object?> get props => [
        isLoading,
        listPopular,
        isLoadingTopRated,
        listTopRated,
        isLoadingUpcoming,
        listUpcoming,
      ];
}
