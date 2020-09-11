import 'dart:ui';

class MyBoxFit {
  static double physicalWidth;
  static double physicalHeight;
  static double dpr;
  static double width;
  static double height;
  static double status;
  static double rpx;
  static double px;

  static void initatal({double standardSize = 750}) {
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;

    //2获取dpr
    dpr = window.devicePixelRatio;

    //3宽度
    width = physicalWidth / dpr;
    height = physicalHeight / dpr;

    //4状态栏高度R
    status = window.padding.top / dpr;

    //5计算rpx大小
    rpx = width / standardSize;
    px = width / standardSize * 2;
  }

  static double setRpx(double size) {
    return rpx * size;
  }

  static double setPx(double size) {
    return px * size;
  }
}
