//
//  SecondTabView.swift
//  SwiftUI-Nav-Tab
//
//  Created by JP McDaniel on 4/20/22.
//

import SwiftUI

struct SecondTabView: View {
    
    @State private var isShowingLogin = false
    
    var body: some View {
        VStack {
            Button {
                logoutUser()
            } label: {
                Text("Logout")
                    .bold()
                    .frame(width: 280, height: 40, alignment: .center)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .offset(y: -60)
        }
        .fullScreenCover(isPresented: $isShowingLogin, content: LoginView.init)
    }
    
    private func logoutUser() {
        UserDefaults.standard.setIsLoggedIn(value: false)
        isShowingLogin.toggle()
        print("## User is logged in: \(UserDefaults.standard.isLoggedIn())")
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
