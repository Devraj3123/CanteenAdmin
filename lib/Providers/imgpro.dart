import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';



class imgpro extends ChangeNotifier{
  XFile? img;

  void add(XFile? i){
    img=i;
    notifyListeners();

  }

}