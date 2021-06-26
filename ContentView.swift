//
//  ContentView.swift
//  home app YT
//
//  Created by Mohammed Alsaleh on 15/11/1442 AH.
//

import SwiftUI

struct ContentView: View {
    @State var L1 = false
    @State var L2 = false
    @State var L3 = false
    @State var L4 = false
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9960784314, green: 0.3333333333, blue: 0.3333333333, alpha: 1)), Color(#colorLiteral(red: 0.3568627451, green: 0.01176470588, blue: 0.01176470588, alpha: 1))]), startPoint: .top, endPoint: .bottom)
            VStack{
                Image("Frame 3")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                Spacer()
                Image("Frame 2")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("hello , Mohammed")
                        .foregroundColor(.white)
                        .font(.system(size: 40, weight: .heavy, design: .default))
                        .frame(width: 250)
                        .padding(.top , 100)
                        .padding(.leading)
                    
                    Spacer()
                }
                Text("Lamp 💡")
                    .foregroundColor(.white)
                    .font(.system(size: 35))
                    .fontWeight(.semibold)
                    .padding(.top)
                    .padding(.leading , 27)
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 156)
                            .cornerRadius(27)
                            .padding()
                            .foregroundColor(Color(L1 ? #colorLiteral(red: 1, green: 0.3176470588, blue: 0.3176470588, alpha: 1) : #colorLiteral(red: 0.7843137255, green: 0.3137254902, blue: 0.3137254902, alpha: 1)))
                        Toggle(isOn: $L1) {
                            Text("")
                        } .frame(width: 50, height: 40)
                        .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))).offset(x: -20, y: 5)
                        Text("💡")
                            .font(.system(size: 60))
                            .offset(x: -20, y: -45)
                        Text("Room 1")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white).offset(x: -10, y: 45)
                        
                        
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 156)
                            .cornerRadius(27)
                            .padding()
                            .foregroundColor(Color(L2 ? #colorLiteral(red: 1, green: 0.3176470588, blue: 0.3176470588, alpha: 1) : #colorLiteral(red: 0.7843137255, green: 0.3137254902, blue: 0.3137254902, alpha: 1)))
                        Text("💡")
                            .font(.system(size: 60))
                            .offset(x: -20, y: -45)
                        Toggle("", isOn: $L2)
                            .frame(width: 50, height: 40)
                            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))).offset(x: -20, y: 5)
                        Text("Room 1")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white).offset(x: -10, y: 45)
                    }
                }
                HStack {
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 156)
                            .cornerRadius(27)
                            .padding()
                            .foregroundColor(Color(L3 ? #colorLiteral(red: 1, green: 0.3176470588, blue: 0.3176470588, alpha: 1) : #colorLiteral(red: 0.7843137255, green: 0.3137254902, blue: 0.3137254902, alpha: 1)))
                        Text("💡")
                            .font(.system(size: 60))
                            .offset(x: -20, y: -45)
                        Toggle("", isOn: $L3)
                            .frame(width: 50, height: 40)
                            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))).offset(x: -20, y: 5)
                        Text("Room 1")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white).offset(x: -10, y: 45)
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 120, height: 156)
                            .cornerRadius(27)
                            .padding()
                            .foregroundColor(Color(L4 ? #colorLiteral(red: 1, green: 0.3176470588, blue: 0.3176470588, alpha: 1) : #colorLiteral(red: 0.7843137255, green: 0.3137254902, blue: 0.3137254902, alpha: 1)))
                        Text("💡")
                            .font(.system(size: 60))
                            .offset(x: -20, y: -45)
                        Toggle("", isOn: $L4)
                            .frame(width: 50, height: 40)
                            .toggleStyle(SwitchToggleStyle(tint: Color(#colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)))).offset(x: -20, y: 5)
                        Text("Room 1")
                            .font(.system(size: 25, weight: .bold, design: .rounded))
                            .foregroundColor(.white).offset(x: -10, y: 45)
                    }
                }
                    Spacer()
            }.animation(.easeIn)
        }.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
