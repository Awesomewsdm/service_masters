import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_search_state.dart';
part 'map_search_event.dart';
part 'map_search_bloc.freezed.dart';

class MapSearchBloc extends Bloc<MapSearchEvent,MapSearchState>{
  MapSearchBloc() : super(const MapSearchState.initial()){
    
  }
}