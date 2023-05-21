
protocol MyProtocol { }

enum MyEnum: MyProtocol {
    case a
}

/// Not using `any MyProtocol`
var something: MyProtocol = MyEnum.a
