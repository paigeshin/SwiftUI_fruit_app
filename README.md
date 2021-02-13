# Notion Link

[Link](https://www.notion.so/Fruits-d71be810df4047038f7c04fb0cee6270)

# Tips

- SwiftUI 코드를 볼 때 화면하고 같이 보면 좋다.

# Icon Setting

- Right click and select show in finder.
- Copy & Paste all icons

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/608aabac-99b6-42a7-b1c5-2a59d654702d/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/608aabac-99b6-42a7-b1c5-2a59d654702d/Untitled.png)

# SVG

- on iOS 14 you can use `svg`
- click on `Preserve Vector Data` on right panel in `Assets.xcassets` in order to use vector image.

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fa2cf095-f07d-4632-96db-8935de5d7fc4/Screen_Shot_2021-02-12_at_8.24.05_PM.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/fa2cf095-f07d-4632-96db-8935de5d7fc4/Screen_Shot_2021-02-12_at_8.24.05_PM.png)

# AccentColor

- Available on Xcode12
- button colors, navigations

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b191b87f-3ce3-451a-bc7e-275d8e14633a/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b191b87f-3ce3-451a-bc7e-275d8e14633a/Untitled.png)

⇒ If you don't set it, it will use `blue` as Accent Color 

# iOS Elements

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4e82a0e7-6849-402d-a0cb-040ad903dab2/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/4e82a0e7-6849-402d-a0cb-040ad903dab2/Untitled.png)

- Apps
- Scenes
- Views

### @AppStorage

![https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b15c1a64-8689-403f-b5f3-7b289c723dc2/Untitled.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b15c1a64-8689-403f-b5f3-7b289c723dc2/Untitled.png)

- used only of `SwiftUI`
- Store small pieces of information
- Re-rendered when value changes

# Code line by line

### SceneDelegate

- set app start point

```swift
//
//  SceneDelegate.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Create the SwiftUI view that provides the window contents.
        let fruitApp = FruitApp()
//        let fruitApp = SettingsView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: fruitApp)
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }

}
```

### FruitModel

```swift
//
//  FruitModel.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct Fruit: Identifiable {
    var id: UUID = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
```

### FruitData

```swift
let fruitsData: [Fruit] = [
    Fruit(
        title: "Blueberry",
        headline: "Blueberries are sweet, nutritious and wildly popular fruit all over the world.",
        image: "blueberry",
        gradientColors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")],
        description: """
          Blueberries are perennial flowering plants with blue or purple berries. They are classified in the section Cyanococcus within the genus Vaccinium. Vaccinium also includes cranberries, bilberries, huckleberries and Madeira blueberries.

          Commercial blueberries—both wild (lowbush) and cultivated (highbush)—are all native to North America. The highbush varieties were introduced into Europe during the 1930s.

          Blueberries are usually prostrate shrubs that can vary in size from 10 centimeters (3.9 in) to 4 meters (13 ft) in height. In commercial production of blueberries, the species with small, pea-size berries growing on low-level bushes are known as "lowbush blueberries" (synonymous with "wild"), while the species with larger berries growing on taller cultivated bushes are known as "highbush blueberries".

          Canada is the leading producer of lowbush blueberries, while the United States produces some 40% of the world supply of highbush blueberries.

          USES

          Blueberries are sold fresh or are processed as individually quick frozen (IQF) fruit, purée, juice, or dried or infused berries. These may then be used in a variety of consumer goods, such as jellies, jams, blueberry pies, muffins, snack foods, or as an additive to breakfast cereals.

          Blueberry jam is made from blueberries, sugar, water, and fruit pectin. Blueberry sauce is a sweet sauce prepared using blueberries as a primary ingredient.

          Blueberry wine is made from the flesh and skin of the berry, which is fermented and then matured; usually the lowbush variety is used.

          NUTRIENTS

          Blueberries consist of 14% carbohydrates, 0.7% protein, 0.3% fat and 84% water (table). They contain only negligible amounts of micronutrients, with moderate levels (relative to respective Daily Values) (DV) of the essential dietary mineral manganese, vitamin C, vitamin K and dietary fiber (table).

          Generally, nutrient contents of blueberries are a low percentage of the DV (table). One serving provides a relatively low caloric value of 57 kcal with a glycemic load of 6.
          """,
        nutrition: ["240 kJ (57 kcal)","9.96 g","0.33 g","0.74 g","A, B1, B2, B3, B5, B6, B9, C, E, K","Calcium, Iron, Magnasium, Manganese, Phosphorus, Sodium, Zinc"]
      ),
]
```

# Views

- StartButtonView

```swift
//
//  StartButtonView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct StartButtonView: View {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool? 
    
    var body: some View {
        Button(action: {
            isOnboarding = false 
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }) //: BUTTON
        .accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
```

- FruitCardView

```swift
//
//  FruitCardView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit 
    
    @State private var isAnimating = false
    
    
    var body: some View {
        
        let gradient = Gradient(colors: fruit.gradientColors) //array of colors
        
        let linearGradient = LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
        
        ZStack {
            VStack(spacing: 20) {
                //FRUIT: IMAGE
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),
                        radius: 8, x: 6, y: 8
                    )
                    /* Animation */
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //FRUIT: TITLE
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                //FRUIT: HEADLINE
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                //BUTTON: START
                StartButtonView()
                
            } //: VSTACK
        } //: ZSTACK
        /* App Life Cycle */
        .onAppear {
            /* Animation */
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(linearGradient)
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
    
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
```

- FruitRowView

```swift
//
//  FruitRowView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit: Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            })
        } //: HSTACK

    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
```

- FruitHeaderView

```swift
//
//  FruitHeaderView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct FruitHeaderView: View {
    
    var fruit: Fruit
    
    @State private var isAnimatingImage = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
            
        } //: ZSTACK
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true 
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
```

- SourceLinkView

```swift
//
//  SourceLinkView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
```

- FruitNutrientsView

```swift
//
//  FruitNutrientsView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                /* \.self */
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer()
                        Text(fruit.nutrition[item])
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
```

- SettingsLabelView

```swift
//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
```

- SettingsRowView

```swift
//
//  SettingsRowView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        
        Divider().padding(.vertical, 4)
        
        VStack {
            
            HStack {
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLabel = linkLabel, let linkDestination = linkDestination  {
                    Link(linkLabel, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
                
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Paige / Shin")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingsRowView(name: "Website", linkLabel: "github", linkDestination: "https://www.github.com" )
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        
    }
}
```

# Screen

- FruitApp - entry point

```swift
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
```

- OnBoardingView

```swift
//
//  OnBoarding.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }

}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
            .previewDevice("iPhone 11 Pro")
    }
}
```

- ContentView

```swift
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
```

- SettingsView

```swift
//
//  SettingsView.swift
//  Fruits
//
//  Created by paigeshin on 2021/02/12.
//

import SwiftUI

struct SettingsView: View {
    
    //Environment Property Wrapper
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            HStack {
                                SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                            },
                        content: {
                            Divider().padding(.vertical, 4)
                            
                            HStack(alignment: .center, spacing: 10, content: {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(9)
                                
                                Text("Most fruits are naturally low in fat, sodium, and calories. None have cholestrol. Fruits are sources of many essential nutrients, including potassium, dietary fiver, vitamines, and much more.")
                                    .font(.footnote)
                            })
                            
                        }
                    )
                    
                    // MARK: - SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restartd the application by toggle the switch in this box. That way it starts the onboading process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone"),
                        content: {
                            SettingsRowView(name: "Developer", content: "Paige Shin")
                            SettingsRowView(name: "Designer", content: "Paige Shin")
                            SettingsRowView(name: "Compatibility", content: "iOS 14")
                            SettingsRowView(name: "Website", linkLabel: "Github Address", linkDestination: "github.com/paigeshin")
                            SettingsRowView(name: "Twitter", linkLabel: "@paigeshin", linkDestination: "twitter.com/paigeshin")
                            SettingsRowView(name: "SwiftUI", content: "2.0")
                            SettingsRowView(name: "Version", content: "1.1.0")
                    })
                    
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image(systemName: "xmark")
                        })
                )
                .padding()
            } //: SCROLL VIEW
        } //: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
```