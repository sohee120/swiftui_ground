//
//  EX16_ObservableObject.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/20.
//

import SwiftUI

struct EX16_ObservableObject: View {
    
    @ObservedObject var myTimer = MyTimer()
    
    var body: some View {
        Text("Timer:\(myTimer.value)")
    }
}

struct EX16_ObservableObject_Previews: PreviewProvider {
    static var previews: some View {
        EX16_ObservableObject()
    }
}
