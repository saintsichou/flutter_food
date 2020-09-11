import 'index.dart';

extension DoubleFit on double {
  // double px() {
  //   return MyBoxFit.setPx(this);
  // }
  // double rpx() {
  //   return MyBoxFit.setRpx(this);
  // }

  double get px{
    return MyBoxFit.setPx(this);
  }
  double get rpx{
    return MyBoxFit.setRpx(this);
  }
}
