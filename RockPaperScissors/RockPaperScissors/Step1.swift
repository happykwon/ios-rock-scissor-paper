//
//  Step1.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

import Foundation

func processUserInput(comPick: UserInputInfo, userPick: UserInputInfo) {
    switch userPick {
    case .exit:
        gameOver()
    case .paper, .rock, .scissor:
        printGameResult(comPick: comPick, userPick: userPick)
    }
}

func printGameResult(comPick: UserInputInfo, userPick: UserInputInfo) {
    let result: Step1MessageInfo = returnResult(comPick: comPick, userPick: userPick)
    
    printResult(for: result)
    
    if result == .draw {
        return
    }
    
    gameOver()
}

func gameOver() {
    printResult(for: .exit)
    isGameWorking.toggle()
}

func returnResult(comPick: UserInputInfo, userPick: UserInputInfo) -> Step1MessageInfo {
    let isPlayerWin: Bool = (comPick == .scissor && userPick == .rock) ||
    (comPick == .rock && userPick == .paper) ||
    (comPick == .paper && userPick == .scissor)
    
    if comPick == userPick {
        return .draw
    }
    
    if isPlayerWin {
        return .win
    }
    
    return .lose
}

public func printResult(for situation: Step1MessageInfo) {
    switch situation {
    case .menu:
        print(situation.rawValue, terminator: "")
    default:
        print(situation.rawValue)
    }
}
