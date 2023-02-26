//
//  CustomImplicitAnimation.swift
//  Animations
//
//  Created by Vasim Khan on 2/26/23.
//

import SwiftUI

struct CustomImplicitAnimation: View {
    @State private var isToggled = false
    
    var body: some View {
        Button {
            withAnimation {
                isToggled.toggle()
            }
        } label: {
            Text("Hello, World!")
                .animatedFont(size: isToggled ? 30 : 50)
        }
        
    }
}

struct CustomImplicitAnimation_Previews: PreviewProvider {
    static var previews: some View {
        CustomImplicitAnimation()
    }
}

struct AnimatedFontModifier: AnimatableModifier {
    var size: CGFloat
    var animatableData: CGFloat {
        get { size }
        set { size = newValue }
    }
    
    func body(content: Content) -> some View {
        content.font(.system(size: size))
    }
}

extension View {
    func animatedFont(size: CGFloat) -> some View {
        self.modifier(AnimatedFontModifier(size: size))
    }
}
