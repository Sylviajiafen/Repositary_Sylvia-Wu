// 1.

enum Gender {
    case male
    case female
    case undefined
}

class Animal {
    var gender: Gender
    
    init(gender: Gender) {
        self.gender = gender
    }
    
    func eat() -> String {
        return "I eat everything!"
    }
}

Animal(gender: .male).eat()


// 2.
class Elephant: Animal {
    
    override func eat() -> String {
        return " I eat plants!"
    }
}

class Tiger: Animal {
    
    override func eat() -> String {
        return " I eat you!"
    }
}

class Horse: Animal {
    
    override func eat() -> String {
        return " I eat plants!"
    }
}

Tiger(gender: .male).eat()

// 3.
class Zoo {
    var weeklyHot: Animal
    
    init(weeklyHot: Animal) {
        self.weeklyHot = weeklyHot
    }
}

let tiger = Tiger(gender: .undefined)
let elephant = Elephant(gender: .undefined)
let horse = Horse(gender: .undefined)

let zoo = Zoo(weeklyHot: Tiger(gender: .undefined))
zoo.weeklyHot


// 4.
// I,ve learned structures, classes ,and methods. When learning structs and clasees, I've also learned instance to a object (struct or a class).

// 5.
// Structures are similar to classes, but classes can do things which structs can't.
// For example: Inheritance. Classes can create sub classes that inheriting from the super class.
// Second, structs are the type of value type, which means when you assign a struct to a new variable or a constant, or when you pass a struct to a function, the underlying value of the struct is copied, rather than using a reference to the existing instance.

// 6.
// Type method: Use a class, structure, enumeratiom, protcol or other compound types to define a function. It is static, like a blueprint, and can be called without creating an instance of it.
// Instance method: Requiring an instance of the type method to exist before it can be called. As well, it should be narrow in scope.


// 7.
// Initializer is a special instance method that sets up our class ready for use (meaning all its stored properties need to have initial values before being able to use)
// The purpose of an initializer is to assign values to all stored properties during creation.
// In situation of creating a struct, Swift automatically creates a init method to assign values to each of the stored properties. We can also writeo ut one by ourselves.

// 8.

// 9.
// As metioned above in Q5,
/*________________________________________
 Value type : (ex: struct)
 A type whose underlying value is copied when it is assigned to a new variable or constant , or when it is passed into a function.

Reference Type : (ex: class)
A reference type, on the other hand is not copied when assigned to a new variable or constant , or when passed into a function
Rather than a copy, a reference to the existing instance is used.
___________________________________________
 */
