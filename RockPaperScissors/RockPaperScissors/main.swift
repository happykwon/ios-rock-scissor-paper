
import Foundation

enum UserInput: String {
    case scissor = "1"
    case rock = "2"
    case paper = "3"
    case exit = "0"
}

enum gameMenuPrompt: String {
    case menu = "가위(1), 바위(2), 보(3)! <종료: 0> : "
    case win = "이겼습니다!"
    case lose = "졌습니다!"
    case draw = "비겼습니다!"
    case exit = "게임 종료"
    case error = "잘못된 입력입니다. 다시 시도해주세요."
}

func handleUserInput(computerPick: UserInput, userPick: UserInput) {
    switch userPick {
    case .exit:
        gameOver()
    case .paper, .rock, .scissor:
        printGameResult(computerPick: computerPick, userPick: userPick)
    }
}

func getGameResult(computerPick: UserInput, userPick: UserInput) -> gameMenuPrompt {
    if computerPick == userPick {
        return .draw
    }
    switch (computerPick, userPick) {
    case (.scissor, .rock), (.rock, .paper), (.paper, .scissor):
        return .win
    default:
        return .lose
    }
}

func displayPromptMenu(for situation: gameMenuPrompt) {
    switch situation {
    case .menu:
        print(situation.rawValue, terminator: "")
    default:
        print(situation.rawValue)
    }
}

func printGameResult(computerPick: UserInput, userPick: UserInput) {
    let result: gameMenuPrompt = getGameResult(computerPick: computerPick, userPick: userPick)
    
    displayPromptMenu(for: result)
    
    if result == .draw {
        return
    }

    gameOver()
}

func gameOver() {
    displayPromptMenu(for: .exit)
    isGameWorking.toggle()
}

var isGameWorking: Bool = true
let computerPick: [String] = ["1", "2", "3"]
let playerChoices: [String] = ["0", "1", "2", "3"]

while isGameWorking {
    displayPromptMenu(for: .menu)
    guard let randomCompterChoice = computerPick.randomElement(), let computerPick = UserInput(rawValue: randomCompterChoice) else {
        continue
    }
    
    guard let input = readLine(), let userPick = UserInput(rawValue: input), playerChoices.contains(userPick.rawValue) else {
        displayPromptMenu(for: .error)
        continue
    }
    
    handleUserInput(computerPick: computerPick, userPick: userPick)
}


