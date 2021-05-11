import '../size/size.dart';

//添加整形的扩展， 添加px 和rpx方法的扩展
extension IntFit on int {
  double _px() {
    return WZDeviceInfo.setPx(this.toDouble());
  }

  double _rpx() {
    return WZDeviceInfo.setRpx(this.toDouble());
  }

  double get px => _px();

  double get rpx => _rpx();
}
