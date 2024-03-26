 # 새싹과정 Projeact 6-1
 ## 묵찌빠

 ### STEP1
 콘솔을 통해 게임을 진행합니다.

 최초 실행 시 출력
 가위(1), 바위(2), 보(3)! <종료 : 0> :

 사용자에게 0, 1, 2, 3 중 한 가지를 입력받아 결과를 출력합니다.

 컴퓨터의 패는 임의의 패를 정하여 냅니다.

 비긴 경우 : “비겼습니다!” 출력 후 다시 최초 실행 상태로 복귀

 이긴 경우 : “이겼습니다!” 출력 후 게임 종료

 진 경우 : “졌습니다!” 출력 후 게임 종료

 0을 입력받은 경우 : 게임 종료

 0~3이 아닌 값을 입력받은 경우 : “잘못된 입력입니다. 다시 시도해주세요.” 출력 후 최초 실행 상태로 복귀

 실행 예시
 ```
 > 가위(1), 바위(2), 보(3)! <종료: 0> : 1 비겼습니다!
 > 가위(1), 바위(2), 보(3)! <종료 : 0> : 6 잘못된 입력입니다. 다시 시도해주세요.
 > 가위(1), 바위(2), 보(3)! <종료 : 0> : 3 이겼습니다!
 게임 종료
 > 가위(1), 바위(2), 보(3)! <종료 : 0> : 0
 게임 종료
 ```
## Step 2

 Step 1의 게임 중 가위, 바위, 보 후에 결과에 따라 게임을 이어갑니다.

 가위, 바위, 보를 비긴 경우 : 다시 가위, 바위, 보 게임 진행

 가위, 바위, 보 게임에서 승패가 갈린 경우 : 묵찌빠로 이어서 게임 진행

 묵, 찌, 빠 실행 시 출력

 [*** 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> :

 [*** 턴] 위치에는 현재 누구의 턴인지 표시합니다.

 가위, 바위, 보 게임 혹은 지난 턴에서 이긴 사람이 턴을 쥡니다.

 잘못된 입력을 한 경우 컴퓨터에게 턴을 넘깁니다.

 사용자에게 0, 1, 2, 3 중 한 가지를 입력받아 결과를 출력합니다.

 사용자의 패와 컴퓨터의 패가 동일한 경우 : 턴을 쥐고 있는 쪽이 승리합니다.

 “***의 승리!” 출력 후 게임 종료

 사용자의 패와 컴퓨터의 패가 다른 경우 : 이긴 쪽이 턴을 쥡니다.

 “***의 턴입니다” 출력 후 묵, 찌, 빠 계속 실행

 0을 입력받은 경우 : 게임 종료

실행 예
 ```
 가위(1), 바위(2), 보(3)! <종료 : 0> : 1
 이겼습니다!
 [사용자 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : 6
 잘못된 입력입니다. 다시 시도해주세요.
 [컴퓨터 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : 3
 컴퓨터의 턴입니다.
 [컴퓨터 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : 3
 사용자의 턴입니다.
 [사용자 턴] 묵(1), 찌(2), 빠(3)! <종료 : 0> : 3
 사용자의 승리!
 ```
### 프로젝트 구조
```swift
├── README.md
└── RockPaperScissors
    ├── RockPaperScissors
    │   ├── Enum
    │   │   ├── GameMenuPrompt.swift
    │   │   ├── MukChiPpaGameTurn.swift
    │   │   ├── MukChiPpaUserOption.swift
    │   │   └── RockScissorPaperUserOption.swift
    │   ├── GameIOManager.swift
    │   ├── MukChiPpaGameManager.swift
    │   ├── RockScissorPaperGameManager.swift
    │   └── main.swift
```



