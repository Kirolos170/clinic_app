import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'sign_up_bloc_state.dart';

class SignUpBlocCubit extends Cubit<SignUpBlocState> {
  SignUpBlocCubit() : super(SignUpBlocInitial());

  static SignUpBlocCubit get(context) => BlocProvider.of(context);


  bool isOverlayVisible = true;
  TextEditingController textEditingController = TextEditingController();
  TextEditingController namec = TextEditingController();
  TextEditingController phonenumberc = TextEditingController();
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();
  TextEditingController confirmpasswordc = TextEditingController();



}
