//
//  EX11_Slider.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/11.
//

import SwiftUI

struct EX11_Slider: View {
    
    @State private var count:Float = 0
    @State private var age:Float = 0
    
    var body: some View {
        VStack{
            Form {
                Slider(value: $count, in: 1...10) {
                    Text("Count")
                }
                Text("Count: \(Int(count))")
                Slider(value: $age)
                Text("Age:\(Int(age))")
            }
        }//Vs
    }
}

struct EX11_Slider_Previews: PreviewProvider {
    static var previews: some View {
        EX11_Slider()
    }
}
