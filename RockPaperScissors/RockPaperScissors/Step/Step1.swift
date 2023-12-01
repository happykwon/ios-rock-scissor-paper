//
//  Step1.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

import Foundation

var step2: Step2 = Step2()

struct Step1 {
    func processUserInput(comPick: Step1UserInputInfo, userPick: Step1UserInputInfo) {
        print("사용자: \(userPick), 컴퓨터: \(comPick)")
        
        switch userPick {
        case .exit:
            gameOver()
        case .paper, .rock, .scissor:
            printGameResult(comPick: comPick, userPick: userPick)
        }
    }
    
    func printGameResult(comPick: Step1UserInputInfo, userPick: Step1UserInputInfo) {
        let result: Step1MessageInfo = returnResult(comPick: comPick, userPick: userPick)
        
        printResult(for: result)
        
        if result == .draw {
            return
        }
        
        if result == .win {
            step2.isPlayerTurn = true
        } else {
            step2.isPlayerTurn = false
        }
        
        step2.gameStart()
    }
    
    func gameOver() {
        printResult(for: .exit)
        isGameWorking.toggle()
    }
    
    func returnResult(comPick: Step1UserInputInfo, userPick: Step1UserInputInfo) -> Step1MessageInfo {
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
    
    
    func printResult(for situation: Step1MessageInfo) {
        switch situation {
        case .menu:
            print(situation, terminator: "")
        default:
            print(situation)
        }
    }
    
    func gameStart() {
        while isGameWorking{
            printResult(for: .menu)
            guard let randomComChoice = comChoices.randomElement(), let comPick = Step1UserInputInfo(rawValue: randomComChoice) else {
                continue
            }
            
            guard let input = readLine(), let userPick = Step1UserInputInfo(rawValue: input), playerChoices.contains(userPick.rawValue) else {
                printResult(for: .error)
                continue
            }
            
            processUserInput(comPick: comPick, userPick: userPick)
        }
    }
}


