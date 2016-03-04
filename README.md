[![License MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat)](https://raw.githubusercontent.com/bb-coder/BHBMagicField/master/LICENSE)
[![CocoaPods](http://img.shields.io/cocoapods/v/BHBMagicField.svg?style=flat)](http://cocoapods.org/?q=BHBMagicField)
[![CocoaPods](http://img.shields.io/cocoapods/p/BHBMagicField.svg?style=flat)](http://cocoapods.org/?q=BHBMagicField)
[![Support](https://img.shields.io/badge/support-iOS%207%2B%20-blue.svg?style=flat)](https://www.apple.com/nl/ios/)

# BHBMagicField
placeholder字符串上移动画交互，继承iOS UITextField实现 ，低侵入，与原生使用方法一致。

![效果图](http://7xkdhe.com1.z0.glb.clouddn.com/MagicField.gif)


##使用方法：

###1.缩放

设置动画目标字体可以实现缩放效果，比如textfield你用系统默认的字体，只要将下面这个属性设置成11号字即可实现效果图中的缩放效果。（bF0为BHBMagicField实例，后面不再赘述）

    bF0.animationFont = [UIFont systemFontOfSize:11];

###2.变色

设置动画最终的颜色。

    bF1.animationColor = [UIColor redColor];

###3.控制移动距离

设置文字动画与初始位置的位移。

    bF2.moveDistance = 100;

###4.关闭动画

关闭动画效果与默认的textfield相同。

    bF3.placeholdAnimationable = NO;


希望大家玩的开心，good luck!
