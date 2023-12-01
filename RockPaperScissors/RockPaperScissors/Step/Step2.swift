//
//  Step2.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

import Foundation

struct Step2 {
    var isPlayerTurn: Bool = true
    var currentTurn: String {
        return isPlayerTurn ? "사용자" : "컴퓨터"
    }
    
    mutating func processUserInput(comPick: Step2UserInputInfo, userPick: Step2UserInputInfo) {
        print("사용자: \(userPick), 컴퓨터: \(comPick)")
        let result = returnResult(comPick: comPick, userPick: userPick)
        
        switch userPick {
        case .exit:
            step1.gameOver()
        case .paper, .rock, .scissor:
            printResult(for: result)
        }
    }
    
   mutating func returnResult(comPick: Step2UserInputInfo, userPick: Step2UserInputInfo) -> Step2MessageInfo {
        let isPlayerWin: Bool = (comPick == .scissor && userPick == .rock) ||
                                  (comPick == .rock && userPick == .paper) ||
                                  (comPick == .paper && userPick == .scissor)
        
        if comPick == userPick {
            return .win
        }
        
        if isPlayerWin {
            isPlayerTurn = true
        }
        
        if !isPlayerWin {
            isPlayerTurn = false
            
        }
        
        return .turn
    }
    
   mutating func printResult(for situation: Step2MessageInfo) {
        switch situation {
        case .menu:
            print(situation, terminator: "")
        case .turn:
            let a = situation.description
             = "컴퓨터"
            print(situation)
        default:
            print(situation)
            isGameWorking = false
        }
    }
    
    mutating func gameStart() {
        while isGameWorking {
            printResult(for: .menu)
            guard let randomComChoice = comChoices.randomElement(), let comPick = Step2UserInputInfo(rawValue: randomComChoice) else {
                continue
            }
            
            guard let input = readLine(), let userPick = Step2UserInputInfo(rawValue: input), playerChoices.contains(userPick.rawValue) else {
                step1.printResult(for: .error)
                isPlayerTurn = false
                continue
            }
            
            processUserInput(comPick: comPick, userPick: userPick)
        }
    }
}
