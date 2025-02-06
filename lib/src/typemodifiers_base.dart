// TODO: Put public facing types in this file.

/// Checks if you are awesome. Spoiler: you are.
class Awesome {
  bool get isAwesome => true;
}

// 没有任何修饰符的类，可以被继承、实现和实例化
class TestClass {
  void testMethod() {
    print('This is a test method.');
  }
}

// 强制子类必须继承该类，不能直接实现
base class BaseClass {
  void baseMethod() {
    print('This is a base method.');
  }
}

// 强制外部代码必须实现该类的方法，不能直接继承
interface class InterfaceClass {
  void interfaceMethod() {
    print('This is a interface method.');
  }
}

// 禁止其它类继承该类
final class FinalClass {
  void finalMethod() {
    print('This is a final method.');
  }
}

// 限制类的子类范围（只能在同一个库中定义子类）
sealed class SealedClass {
  void sealedMethod() {
    print('This is a sealed method.');
  }
}

// 定义抽象类，不能被实例化，通常用于定义接口或部分实现
abstract class AbstractClass {
  void abstractMethod(); // 抽象方法
  void concreteMethod() { // 具体方法
    print('This is a abstract concrete method.');
  }
}


/// combinations
/// 
// 抽象基类，不能被实例化，且子类必须继承
abstract base class  AbstractBaseClass {
  void abstractBaseMethod();
  void abstractBaseConcreteMethod() { // 具体方法
    print('This is a abstract base concrete method.');
  }
}

// 抽象接口类，不能被实例化，且外部代码必须实现
abstract interface class AbstractInterfaceClass {
  void abstractInterfaceMethod();
  void abstractInterfaceConcreteMethod() {
    print('This is a abstract interface concrete method.');
  }
}

// 抽象且不可继承的类，通常用于工具类或不可变的类
abstract final class AbstractFinalClass {
  void abstractFinalMethod() {
    print('This is an abstract final method.');
  }

  void abstractFinalConcreteMethod() {
    print('This is an abstract final concrete method.');
  }
}

// 既可以作为普通类使用，也可以作为混入类使用
mixin class MinXinClass {
  void mixinMethod() {
    print('This is a mixin method.');
  }
}

// 作为基类的混入类，子类必须继承
base mixin class BaseMixinClass {
  void baseMixinMethod() {
    print('This is a base mixin method.');
  }
}

// 抽象混入类，不能被实例化
abstract mixin class AbstractMixinClass {
  void abstractMixinMethod();
  void abstractMixinConcreteMethod() {
    print('This is a abstract mixin concrete method.');
  }
}

// 抽象基类的混入类，不能被实例化，且子类必须继承
abstract base mixin class AbstractBaseMixinClass {
  void abstractBaseMixinMethod();

  void abstractBaseMixinConcreteMethod() {
    print('This is a abstract base  mixin concrete method.');
  }
}





/**
 Declaration	                   Construct?	Extend?	Implement?	Mix in?	Exhaustive?
class	                           Yes	      Yes	    Yes	        No	     No
base class	                     Yes	      Yes	    No	        No	     No
interface class	                 Yes	      No	    Yes	        No	     No
final class	                     Yes	      No	    No	        No	     No
sealed class	                   No	        No	    No	        No	     Yes
abstract class	                 No	        Yes	    Yes	        No	     No
abstract base class  	           No	        Yes	    No	        No	     No
abstract interface class	       No        	No	    Yes	        No	     No
abstract final class	           No	        No	    No	        No	     No
mixin class	                     Yes	      Yes	    Yes	       Yes	     No
base mixin class	               Yes	      Yes	    No	       Yes	     No
abstract mixin class	           No	        Yes	    Yes	       Yes	     No
abstract base mixin class	       No	        Yes	    No	       Yes	     No
mixin	                           No	        No	    Yes	       Yes	     No
base mixin	                     No	        No	    No	       Yes	     No
 */