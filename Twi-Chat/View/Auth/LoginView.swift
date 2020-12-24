//
//  LoginVIew.swift
//  Twi-Chat
//
//  Created by 酒井ゆうき on 2020/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email : String = ""
    @State private var password : String = ""
    
    var body: some View {
        VStack {
            
            Image("twitter-logo")
                .resizable()
                .scaledToFill()
                .frame(width: 220, height: 100)
                .padding(.top, 88)
                .padding(.bottom,32)
            
            VStack(spacing : 16) {
                
                CustomTextField(text: $email, placeholder: "Email", imageName: "envelope")
                
                CustomTextField(text: $password, placeholder: "Password", imageName: "lock",isSecure: true)
                
            }
            
            HStack {
                Spacer()
                
                Button(action: {}) {
                    Text("Forgot Your Password?")
                        .font(.footnote)
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top,16)
                        .padding(.trailing, 32)
                }
            }
            
            Button(action: {}) {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.blue)
                    .frame(width: 360, height: 50)
                    .background(Color.white)
                    .cornerRadius(25)
                    .clipShape(Capsule())
                    .padding()
            }

            
            Spacer()
            
            HStack {
                Text("Don't Have an Account")
                    .font(.system(size: 14))
                
                Text("Sign Up")
                    .font(.system(size: 12,weight : .semibold))
            }
            .foregroundColor(.white)
            .padding(.bottom,40)
            
            Spacer()
        }
        .background(Color(#colorLiteral(red: 0.1198849156, green: 0.6302657127, blue: 0.951220572, alpha: 1)))
        .ignoresSafeArea(.all)
    }
}

//MARK: - Custin TextField

struct CustomTextField : View {
    
    @Binding var text : String
    let placeholder : String
    var imageName : String
    var isSecure : Bool = false
    
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(.white).opacity(0.87)
                    .padding(.leading,40)
                
            }
            
            HStack(spacing :20) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                if !isSecure {
                    TextField("", text: $text)
                } else {
                    SecureField("", text: $text)
                }
            }
        }
        .foregroundColor(.white)
        .padding()
        .background(Color.init( white: 1, opacity: 0.15))
        .cornerRadius(10)
        .padding(.horizontal)
        
        
    }
}

struct LoginVIew_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
