ios-rotation-example
====================

Simple demo project for following situation:

Having 2 ViewControllers:
- ViewController1 should always be displayed in Portrait mode. 
- ViewController2 will be presented as modal viewcontroller from ViewController1 but allows to rotate the device. 

This solves the issue in iOS8 when dismissing ViewController2 while in landscape mode.

This 'hack' uses the application:supportedInterfaceOrientationsForWindow: method on the applications delegate. 
It's most definitely not a very nice solution but it works for now. 

![Example](/iphone_animation.gif?raw=true "Example from iOS8(Beta5) Simulator")

