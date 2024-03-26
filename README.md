# Tasty Code

### 묵찌빠 프로젝트 저장소

- 이 저장소를 자신의 저장소로 fork하여 프로젝트를 진행합니다.




# iOS개발자 과정 동대문 캠퍼스


### 묵찌빠 프로젝트 
---

# 묵찌빠게임 설명 
---
컴퓨터가 제시하는 임의의 숫자와 사용자가 입력하는 숫자를 비교하여 가위바위보 게임을 진행.

## 페어 프로그래밍 규칙
- 순서도는 먼저 그리고 시작한다.
- 서로 번갈아 가며 하나의 함수를 구현한다.

## Step 1
- 실행 예
> 가위(1), 바위(2), 보(3)! <종료: 0> : 1 비겼습니다!

> 가위(1), 바위(2), 보(3)! <종료 : 0> : 6 잘못된 입력입니다. 다시 시도해주세요.

> 가위(1), 바위(2), 보(3)! <종료 : 0> : 3 이겼습니다!
게임 종료

> 가위(1), 바위(2), 보(3)! <종료 : 0> : 0
게임 종료



## 프로젝트 구조
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
    └── RockPaperScissors.xcodeproj
        ├── project.pbxproj
        ├── project.xcworkspace
        │   ├── contents.xcworkspacedata
        │   ├── xcshareddata
        │   │   ├── IDEWorkspaceChecks.plist
        │   │   └── swiftpm
        │   │       └── configuration
        │   └── xcuserdata
        │       └── kwontaeho.xcuserdatad
        │           └── UserInterfaceState.xcuserstate
        └── xcuserdata
            └── kwontaeho.xcuserdatad
                ├── xcdebugger
                │   └── Breakpoints_v2.xcbkptlist
                └── xcschemes
                    └── xcschememanagement.plist
```


## Flowchart
![묵찌빠](https://github.com/happykwon/sessac_week_1/assets/149054154/e4d79bae-9dd8-49c9-a5a7-8b5a367a91e8)


