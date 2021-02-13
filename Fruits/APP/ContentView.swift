//
//  ContentView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowingSettings = false
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: BUTTON
                    /* $isShowingSettings, observes boolean value when you mark it with `$` */
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle()) //ipad에서 full screen으로 덮어버린다.
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
