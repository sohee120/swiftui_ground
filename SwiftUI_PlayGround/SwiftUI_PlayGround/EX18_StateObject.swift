//
//  EX18_StateObject.swift
//  SwiftUI_PlayGround
//
//  Created by 윤소희 on 2022/11/27.
//

import SwiftUI
import Foundation

class Counter: ObservableObject {
    @Published var count:Int = 0
    
    init() {
        
    }
    
    func add() {
        count += 1
    }
}
struct CounterView: View {
    
    //@ObservedObject car counter: Counter // 뷰가 새로 생성되면서, 가지고 있던 값이 초기화됨.
    @StateObject var counter: Counter // 뷰가 새로 생성되어도, 기존에 있던 값을 유지한다.
    var body: some View {
        HStack{
            Text("\(counter.count)")
            Button {
                counter.add()
            } label: {
                Text("Add")
            }

        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}
struct EX18_StateObject: View {
    @State private var isChanged: Bool = false
    var body: some View {
        VStack{
            CounterView(counter: Counter())
                .background(isChanged ? Color.red : Color.gray )
                .padding()
            Button {
                isChanged.toggle()
            } label: {
                Text("Change")
            }

        }
        .font(.largeTitle)
    }
}

struct EX18_StateObject_Previews: PreviewProvider {
    static var previews: some View {
        EX18_StateObject()
    }
}
