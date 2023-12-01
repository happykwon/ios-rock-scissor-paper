//
//  Step1MessageInfo.swift
//  RockPaperScissors
//
//  Created by 김동준 on 11/28/23.
//

public enum Step1MessageInfo: String, CustomStringConvertible {
    case menu
    case win
    case lose
    case draw
    case exit
    case error
    
    public var description: String {
        switch self {
        case .menu:
            return "가위(1), 바위(2), 보(3)! <종료: 0> : "
        case .win:
            return "이겼습니다!"
        case .lose:
            return "졌습니다!"
        case .draw:
            return "비겼습니다!"
        case .exit:
            return "게임 종료"
        case .error:
            return "잘못된 입력입니다. 다시 시도해주세요."
        }
    }
}
