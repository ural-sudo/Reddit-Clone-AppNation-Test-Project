

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:reddit_clone/view/homepage/model/reddit_model.dart';
import 'package:reddit_clone/view/homepage/service/reddit_service.dart';
part 'reddit_event.dart';
part 'reddit_state.dart';

class RedditBloc extends Bloc<RedditEvent, RedditState> {

  RedditService service = RedditService();

  RedditBloc() :super(RedditState(model: RedditModel())){
    // Constructor çağrıldığı anda FetchReddits eventini dinlemeye başlar.
    on<RedditEvent>((event, emit)async {
      await map(event,emit);
    },);
  }
  Future<void> map(RedditEvent event, Emitter<RedditState> emit) async {
    
    if(event is FetchReddits){
      if(state.status == RedditStatus.inital){
         final model = await service.get(); 
        return emit(state.copyWith(status: RedditStatus.succsess,model: model));
      }else if(state.status == RedditStatus.succsess){
        final model = await service.get();
        print("Pull To Refresh Execute");
        emit(state.copyWith(status: RedditStatus.succsess,model:model));
      }else{
        emit(state.copyWith(status: RedditStatus.failure));
      }
    }
  }

}
