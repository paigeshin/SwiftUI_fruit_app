//
//  SwiftUIView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct FruitApp: View {
    
    //newly introduced wrapper, usually store a small piece of information
    //state 처럼 행동한다. 값이 바뀌면 자동으로 scene들이 rendering된다.
    @AppStorage("isOnboarding") var isOnboarding = true
    
    var body: some View {
        if isOnboarding {
            OnBoardingView()
        } else {
            ContentView()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FruitApp()
    }
}
