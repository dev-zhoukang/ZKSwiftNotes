import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}

class Person {
    var name: String
    let age:Int
    init (name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let p = Person(name: "ZK", age: 10)
p.name = "Jay Chou" // 虽然是 let 修饰，但是修饰对象内部属性没问题
// p = Person(name: "ZK", age: 10) // 报错

PlaygroundPage.current.liveView = MyViewController()
/*
 Swift 既是一门高层及语言，又是一门低层级语言。既可以在 Swift 中用 map 后者 reduce 写出十分类似于 Ruby 和 Python 的代码，也可以容易地创建自己的高阶函数。Swift 让你有能力快速完成代码编写，并将它们直接编译成原生的二进制可执行文件，这使得性能上可以与 C 代码编写的程序相媲美。
 Swift 是一门多范式的语言。既可以编写面向对象的代码，也可以使用不变量的值来写纯函数式的程序，在必要的时候们甚至还能使用指针运算来编写和 C 类似的代码。
 Swift 可以使用大部分 OC 的功能，包括消息发送，运行时的类型判定，以及 KVO 等。当然也引入了许多新的特性。
 Swift 应有泛型、协议、值类型以及闭包等特性，这些特性是对函数式风格的很好的介绍。甚至可以将运算符和函数结合起来使用。
 一个引用变量也可以用 let 来声明，这样做会使引用变为常量。注意只是指向关系被常量化了，而对象本身还是可变的。
 == 被称为结构相等，=== 被称为指针相等或引用相等。
 在 Swift 中，函数也是值，注意他是引用类型。既可以将一个函数赋值给一个变量，也可以创建一个包含函数的数组，或者调用变量所持有的函数。
 如果一个函数接受别的函数作为参数，或者一个函数的返回值是函数，那么这样的函数就叫做高阶函数。
 如果一个函数不是接受多个参数，而是只接受部分参数，然后返回一个接受其余参数的函数的话，那么这个函数就是一个柯里化函数 (curried function)
 */
