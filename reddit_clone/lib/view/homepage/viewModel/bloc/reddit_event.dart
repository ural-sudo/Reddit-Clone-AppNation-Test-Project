part of 'reddit_bloc.dart';

abstract class RedditEvent extends Equatable {
  const RedditEvent();
}

class FetchReddits extends RedditEvent {
  @override
  List<Object> get props => [];
  const FetchReddits();
}

