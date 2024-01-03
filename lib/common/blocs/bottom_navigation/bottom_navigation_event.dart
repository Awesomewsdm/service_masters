import "package:equatable/equatable.dart";

abstract class NavigationEvent extends Equatable {
  const NavigationEvent();

  @override
  List<Object?> get props => [];
}

class NavigationTabSelected extends NavigationEvent {
  const NavigationTabSelected(this.selectedTab);

  final int selectedTab;

  @override
  List<Object?> get props => [selectedTab];
}
