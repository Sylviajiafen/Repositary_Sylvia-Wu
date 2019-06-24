protocol PoliceName {
    func arrestCriminals() -> Void
}


protocol ToolMan {
    func fixComputer() -> Void
}


struct Engineer: ToolMan {
    func fixComputer() {
    }
}

struct Person: PoliceName {
    var name: String
    func arrestCriminals() {
    }
    var toolMan: ToolMan
}

let someone = Engineer()
let steven = Person(name: "Steven", toolMan: someone)
