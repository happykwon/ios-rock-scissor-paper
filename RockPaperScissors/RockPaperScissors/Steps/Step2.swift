//
//  Step2.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

import Foundation

struct Step2 {
    var currentTurn: String {
        return isPlayerTurn ? "사용자" : "컴퓨터"
    }
    
    func processUserInput(comPick: Step2UserInputInfo, userPick: Step2UserInputInfo) {
        print("사용자: \(userPick), 컴퓨터: \(comPick)")
        
        switch userPick {
        case .exit:
            step1.gameOver()
        case .paper, .rock, .scissor:
            printResult(for: returnResult(comPick: comPick, userPick: userPick))
        }
    }
    
   func returnResult(comPick: Step2UserInputInfo, userPick: Step2UserInputInfo) -> Step2MessageInfo {
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
    
   func printResult(for situation: Step2MessageInfo) {
        switch situation {
        case .menu:
            print("[" + currentTurn + situation.rawValue , terminator: "")
        case .turn:
            print(currentTurn + situation.rawValue)
        default:
            print(currentTurn + situation.rawValue)
            isGameWorking = false
        }
    }
    
    func gameStart() {
        while isGameWorking {
            printResult(for: .menu)
            guard let randomComChoice = comChoices.randomElement(), let comPick = Step2UserInputInfo(rawValue: randomComChoice) else {
                continue
            }
            
            guard let input = readLine(), let userPick = Step2UserInputInfo(rawValue: input), playerChoices.contains(userPick.rawValue) else {
                step1.printResult(for: .error)
                continue
            }
            
            processUserInput(comPick: comPick, userPick: userPick)
        }
    }
}
