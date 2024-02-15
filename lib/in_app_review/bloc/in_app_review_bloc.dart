import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'in_app_review_state.dart';
part 'in_app_review_event.dart';
part 'in_app_review_bloc.freezed.dart';

class InAppReviewBloc extends Bloc<InAppReviewEvent,InAppReviewState>{
  InAppReviewBloc() : super(const InAppReviewState.initial()){
    
  }
}