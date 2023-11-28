//
//  RockPaperScissors - main.swift
//  Created by tacocat.
//  Copyright © tastycode. All rights reserved.
//

import Foundation

var isGameWorking: Bool = true
let comChoices: [String] = ["1", "2", "3"]
let playerChoices: [String] = ["0", "1", "2", "3"]
var isPlayerTurn: Bool = true
let step1: Step1 = Step1()

step1.gameStart()
