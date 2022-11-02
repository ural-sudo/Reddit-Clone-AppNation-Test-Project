part of 'reddit_bloc.dart';

 class RedditState extends Equatable {
   const RedditState({
    this.status = RedditStatus.inital,
    required this.model,
  });

  final RedditModel model;
  final RedditStatus status;
  
  @override
  List<Object?> get props => [model,status];

  RedditState copyWith({
    RedditModel? model,
    RedditStatus? status,
  }){
    return RedditState(
      model: model ?? this.model,
      status: status ?? this.status,
    );
  }
}

enum RedditStatus {inital,succsess,failure}


