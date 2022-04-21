//
//  ContentView.swift
//  SwiftUI-Nav-Tab
//
//  Created by JP McDaniel on 4/20/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationView {
            TabView {
                
                FirstTabView()
                    .tabItem ({
                        Image(systemName: "house.fill")
                        Text("Home")
                    })
                    .tag(1)
                
                SecondTabView()
                    .tabItem ({
                        Image(systemName: "gearshape.fill")
                        Text("Settings")
                    })
                    .tag(2)
                
            }
        }
        .navigationBarBackButtonHidden(true)
        .onAppear {
            UserDefaults.standard.setIsLoggedIn(value: true)
            print("## User is logged in: \(UserDefaults.standard.isLoggedIn())")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
