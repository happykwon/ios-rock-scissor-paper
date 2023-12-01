//
//  Step2MessageInfo.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

enum Step2MessageInfo: String, CustomStringConvertible {
    case menu
    case turn
    case win
    case exit
    case error
    
    public var description: String {
        var turn: String = "사용자"
        
        switch self {
        case .menu:
            return "[\(turn) 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : "
        case .turn:
            return "의 턴입니다."
        case .win:
            return "의 승리!"
        case .exit:
            return "게임 종료"
        case .error:
            return "잘못된 입력입니다. 다시 시도해주세요."
        }
    }
    
    func changeTurn() ->  {
        var turn: Bool = true
        
    }
}

