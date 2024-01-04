import "package:equatable/equatable.dart";

class BottomNavigationState extends Equatable {
  const BottomNavigationState({required this.selectedIndex});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
