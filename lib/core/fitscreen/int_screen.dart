import 'index.dart';

extension DoubleFit on int {
  // double px() {
  //   return MyBoxFit.setPx(this);
  // }
  // double rpx() {
  //   return MyBoxFit.setRpx(this);
  // }

  double get px{
    return MyBoxFit.setPx(this.toDouble());
  } 
  double get rpx{
    return MyBoxFit.setRpx(this.toDouble());
  }
}
