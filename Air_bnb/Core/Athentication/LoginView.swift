//
//  LoginView.swift
//  Air_bnb
//
//  Created by Jojo on 10.08.23.
//

import SwiftUI

struct SecureTextField1: View {
    @State private var isSecureField: Bool = true
    @Binding var text: String
    var body: some View {
        HStack {
            if isSecureField {
                SecureField("Password", text: $text)
            } else {
                TextField(text, text: $text)
            }
        }
        Image (systemName: isSecureField ? "eye.slash": "eye")
            .foregroundColor(.blue)
            .onTapGesture {
                isSecureField.toggle()
            }
        }
    }




struct LoginView: View {
    @State private var username:String = ""
    @State private var password:String = ""
    var body: some View {
        NavigationStack {
            VStack{
                Spacer()
                Text("Airbnb")
                    .foregroundColor(.white)
                    .font(.system(size: 60))
                    .bold()
                Spacer()
                VStack{
                    TextField("Username", text: $username)
                    Divider()
                    HStack {
                        SecureTextField1(text: $password)
                    }
                }.padding()
                    .background(Color.white)
                    .cornerRadius(10)
                VStack{
                    NavigationLink {
                        N_Bar()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Login")
                            .foregroundColor(.white)
                            .frame(width: 360, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                            .bold()
                    }
                    
                }
                Spacer()
                    .frame(height: 250)
                NavigationLink(destination: {
                    RegistrationView()
                        .navigationBarBackButtonHidden()
                }, label: {
                    HStack{
                        Text("Sign up")
                        Image(systemName: "arrow.right.circle")
                    }
                }).foregroundColor(.blue)
                    .font(.system(size: 16))
                
            }.padding()
                    .background(Color.red)
            }
        }
    }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

