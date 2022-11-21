//
//  MyTimer.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/20.
//

import Foundation

class MyTimer : ObservableObject {
    
    @Published var value:Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.value += 1
        }
    }
}
