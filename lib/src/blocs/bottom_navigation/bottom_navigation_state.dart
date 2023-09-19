import 'package:equatable/equatable.dart';

class NavigationState extends Equatable {
  const NavigationState({required this.selectedIndex});

  final int selectedIndex;

  @override
  List<Object> get props => [selectedIndex];
}
