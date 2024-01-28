import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ScreenSizeScreenUtils on num {
  double get w => ScreenUtil().setWidth(this);

  double get h => ScreenUtil().setHeight(this);

  double get sp => ScreenUtil().setSp(this);
}
