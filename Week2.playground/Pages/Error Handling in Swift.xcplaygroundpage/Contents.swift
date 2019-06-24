
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

let someGuess = ​GuessNumerGame()

let guessANumber = try someGuess.guess(number: 20)
let guessRight = try someGuess.guess(number: 10)

// Why didn't the String "Guess the right number: ​\(targetNumber)" shows?
// What's the meaning of "Constant 'guessRight' inferred to have type '()', which may be unexpected"?
