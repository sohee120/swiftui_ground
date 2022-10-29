
//  Created by 윤소희 on 2022/10/27.
//

import SwiftUI

//오륜기 그리기

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(.red)
                .frame(width: 100, height:100)
                .offset(x:115, y:-25)
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(.green)
                .frame(width: 100, height:100)
                .offset(x:57, y:25)
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(.black)
                .frame(width: 100, height:100)
                .offset(x:0, y:-25)
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(.yellow)
                .frame(width: 100, height:100)
                .offset(x:-57, y:25)
            
            Circle()
                .stroke(lineWidth: 10)
                .foregroundColor(.blue)
                .frame(width: 100, height:100)
                .offset(x:-115, y:-25)
            
        }//VS
        .padding()
    }//BD
}//ST

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            ContentView()
        }
    }
}
