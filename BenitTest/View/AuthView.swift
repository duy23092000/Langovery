//
//  AuthView.swift
//  BenitTest
//
//  Created by Jayzer on 16/03/2021.
//

import SwiftUI

struct SignUpView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var password = ""
    
    @State var isSignIn:Bool = false
    
    var body: some View {
        ZStack {
            if (isSignIn) {
                SignInView()
                    .transition(.move(edge: .trailing))
                    .animation(.linear(duration: 0.5))
            } else {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Image("signuptree")
                            .resizable()
                            .frame(width: 125, height: 550)
                            .scaledToFit()
                    }
                }
                .offset(y: 30)
                
                VStack() {
                    VStack(spacing: 18) {
                        Text("Sign Up")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20, alignment: .center)
                                .opacity(0.5)
                                .padding(.horizontal, 10)
                            TextField("Username", text: $username)
                        }
                        .padding()
                        .background(Color("EFF0EF"))
                        .cornerRadius(61)
                        
                        HStack {
                            Image(systemName: "envelope.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20, alignment: .center)
                                .opacity(0.5)
                                .padding(.horizontal, 10)
                            TextField("Email", text: $email)
                        }
                        .padding()
                        .background(Color("EFF0EF"))
                        .cornerRadius(61)
                        
                        HStack {
                            Image(systemName: "lock.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20, alignment: .center)
                                .opacity(0.5)
                                .padding(.horizontal, 10)
                            SecureField("Password", text: $password)
                        }
                        .padding()
                        .background(Color("EFF0EF"))
                        .cornerRadius(61)
                        
                        Button(action: {}, label: {
                            Text("Sign Up")
                                .font(.headline)
                                .frame(width: 120)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("FF854F"))
                                .cornerRadius(61)
                        })
                        .padding()
                        
                        Text("Or sign up with social platform")
                            .font(Font.custom("Roboto-Thin", size: 15))
                            .padding(.top, 5)
                            .opacity(0.5)
                        
                        HStack {
                            Image("ggicon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                            Image("fbicon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal, 60.0)
                    .offset(y: 70)
                    Spacer()
                    HStack {
                        Text("Already have an account?")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.primary)
                        Button(action: {
                                withAnimation{
                                    self.isSignIn.toggle()}}, label: {
                            Text("Sign In")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color("FF854F"))
                        })
                    }
                    .padding()
                }
            }
        }
    }
}

struct SignInView: View {
    @State private var username = ""
    @State private var password = ""
    
    @State var isSignUp:Bool = false
    
    var body: some View {
        ZStack {
            if (isSignUp) {
                SignUpView()
                    .transition(.move(edge: .leading))
                    .animation(.linear(duration: 0.5))
            } else {
                VStack {
                    Spacer()
                    HStack {
                        Image("signintree")
                            .resizable()
                            .frame(width: 125, height: 550)
                            .scaledToFit()
                        Spacer()
                    }
                }
                .offset(y: 30)
                
                VStack() {
                    VStack(spacing: 18) {
                        Text("Sign In")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                        HStack {
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20, alignment: .center)
                                .opacity(0.5)
                                .padding(.horizontal, 10)
                            TextField("Username", text: $username)
                        }
                        .padding()
                        .background(Color("EFF0EF"))
                        .cornerRadius(61)
                        
                        HStack {
                            Image(systemName: "lock.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 20, height: 20, alignment: .center)
                                .opacity(0.5)
                                .padding(.horizontal, 10)
                            SecureField("Password", text: $password)
                        }
                        .padding()
                        .background(Color("EFF0EF"))
                        .cornerRadius(61)
                        
                        Button(action: {}, label: {
                            Text("Sign In")
                                .font(.headline)
                                .frame(width: 120)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color("FF854F"))
                                .cornerRadius(61)
                        })
                        .padding()
                        
                        Text("Or sign up with social platform")
                            .font(Font.custom("Roboto-Thin", size: 15))
                            .padding(.top, 5)
                            .opacity(0.5)
                        
                        HStack {
                            Image("ggicon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                            Image("fbicon")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40, alignment: .center)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.horizontal, 60.0)
                    .offset(y: 80)
                    Spacer()
                    
                    HStack {
                        Text("You don't have an account yet?")
                            .font(.system(size: 14, weight: .light))
                            .foregroundColor(.primary)
                        Button(action: {
                                withAnimation{
                                    self.isSignUp.toggle()}}, label: {
                            Text("Sign Up")
                                .font(.system(size: 14, weight: .semibold))
                                .foregroundColor(Color("FF854F"))
                        })
                    }
                    .padding()
                }
            }
        }
    }
}

struct AuthView: View {
    var body: some View {
        SignUpView()
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
