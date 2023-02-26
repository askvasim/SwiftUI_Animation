//
//  AnimationsTriggeredTransactions.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct AnimationsTriggeredTransactions: View {
    @State private var isToggled = false
    
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation {
                    isToggled.toggle()
                }
            }
            .font(.largeTitle)
            .fontWeight(.heavy)
            
            if isToggled {
                Text("Some more content will come here")
            }
        }
        .padding()
        .background(Color.yellow)
        .cornerRadius(isToggled ? 30 : 0)
        .animation(.easeInOut(duration: 0.3), value: isToggled)
    }
}

struct AnimationsTriggeredTransactions_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsTriggeredTransactions()
    }
}
