//
//  ContentView.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    
    @State private var count:Int = 0
    @State private var age:Int = 0
    
    var body: some View {
        VStack {
            Form {
                Stepper(value: $count, in: 0...10) {
                    Text("Count")
                }
                Text("Count: \(count)")
                
                Stepper(onIncrement: increStepper, onDecrement: decreStepper) {
                    Text("Age")
                }
                Text("Age: \(age)")
            }
        }//VS
        .padding()
    }
    
    func increStepper() {
        age += 1
    }
    
    func decreStepper() {
        age -= 1
    }
    
    
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
