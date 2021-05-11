import '../size/size.dart';

//添加整形的扩展， 添加px 和rpx方法的扩展
extension DoubleFit on double {
  double _px() {
    return WZDeviceInfo.setPx(this);
  }

  double _rpx() {
    return WZDeviceInfo.setRpx(this);
  }

  double get px => _px();

  double get rpx => _rpx();
}
