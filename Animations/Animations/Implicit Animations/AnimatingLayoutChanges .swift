//
//  AnimatingLayoutChanges .swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct AnimatingLayoutChanges_: View {
    @State private var isExpanded = false
    
    var body: some View {
        VStack {
            Button("Toggle") {
                withAnimation {
                    isExpanded.toggle()
                }
            }
            .font(.largeTitle)
            .fontWeight(.heavy)
            
            if isExpanded {
                Text("Some more content")
                    .transition(.slide)
            }
        }
    }
}

struct AnimatingLayoutChanges__Previews: PreviewProvider {
    static var previews: some View {
        AnimatingLayoutChanges_()
    }
}
