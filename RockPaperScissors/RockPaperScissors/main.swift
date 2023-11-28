//
//  RockPaperScissors - main.swift
//  Created by tacocat.
//  Copyright © tastycode. All rights reserved.
//

import Foundation

var isGameWorking: Bool = true
let comChoices: [String] = ["1", "2", "3"]
let playerChoices: [String] = ["0", "1", "2", "3"]

while isGameWorking {
    printResult(for: .menu)
    guard let randomComChoice = comChoices.randomElement(), let comPick = UserInputInfo(rawValue: randomComChoice) else {
        continue
    }
    
    guard let input = readLine(), let userPick = UserInputInfo(rawValue: input), playerChoices.contains(userPick.rawValue) else {
        printResult(for: .error)
        continue
    }
    
    processUserInput(comPick: comPick, userPick: userPick)
}
