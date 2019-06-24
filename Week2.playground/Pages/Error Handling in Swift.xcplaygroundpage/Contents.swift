
enum GuessNumberGameError: Error {
    case wrongNumber
}


class ​GuessNumerGame {

    var targetNumber: Int = 10
    
    func guess(number: Int?) throws {
        guard number == targetNumber else {
            throw GuessNumberGameError.wrongNumber
        }
        print("Guess the right number: ​\(targetNumber)")
    }
}


