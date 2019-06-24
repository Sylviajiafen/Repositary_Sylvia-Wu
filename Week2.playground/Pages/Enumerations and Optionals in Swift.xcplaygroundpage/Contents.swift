// 1.
enum Gasoline: String {
    case oil92 = "92"
    case oil95 = "95"
    case oil98 = "98"
    case diesel = "diesel"
}

func getPrice(of gasoline: Gasoline) -> String {
    switch gasoline {
    case .oil92: return "27.20/L"
    case .oil95: return "28.70/L"
    case .oil98: return "30.70/L"
    case .diesel: return "25.10/L"
    }
}

/*_________________________________
 enum associated value:
 在 enum 裡的 case XXX 後加上(), 裡頭放任何 type 或是 argument labels: (type) ,
 ex: case rgb(red: Float, green: Float, blue: Float)
 表示 case rgb 是由三個Float值組成, 這三個值分別稱為red, green, blue
 _________________________________
 */


// 2.

class Pet {
    var name: String
    
    init?(name: String){
        self.name = name
    }
}

class People {
    var pet: Pet?
    
    init(petname: String) {
        self.pet = Pet(name: petname)
    }
    
    func having(aPet name: String) {
        guard let pet = Pet(name: name) else { return }
        print(pet)
    }
    
    func have(pet name: String) {
        if let pet = Pet(name: name) {
            print("I have a pet named \(name).")
        } else {
            print("I don't have a pet.")
        }
    }
}




