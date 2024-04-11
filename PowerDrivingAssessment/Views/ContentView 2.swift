//
//  ContentView.swift
//  PowerDrivingAssessment
//
//  Created by Jaime Fagnilli on 2023-07-22.
//

import SwiftUI

struct ContentView: View {
   
   @State private var isRolling = false
   @State private var xOffset: CGFloat = 0.5
   @State private var yOffset: CGFloat = 0.1
   private let animationDuration: Double = 2.0
   @State private var isShowingAnotherScreen = false
   @State private var scale: CGFloat = 0.5
   
   private func startAnimation(in size: CGSize) {
      withAnimation(Animation.linear(duration: animationDuration).repeatCount(1)) {
         xOffset = size.width - 100 // 100 is the width of the image
         yOffset = size.height - 480
         scale = 1.0
         
      }
   }
   
   
   var body: some View {
      ZStack {
         Color("ColorBackGround")
         VStack(alignment: .center, spacing: 10) {
            VStack (alignment: .center) {
               Text("Power Mobility In-Door ")
               Text("Driving Assessment")
               Text ("PIDA")
            }
            .font(.title)
            .foregroundColor(Color(hue: 111/360, saturation: 0.12, brightness: 0.32))
            .bold()
            .padding()
            .cornerRadius(10)
            .padding(.top, 40)
            
            GeometryReader { geometry in
               ZStack(alignment: .center) {
                  Circle()
                     .foregroundColor(Color("ColorButton"))
                     .opacity(0.9)
                     .frame(width: 250, height: 320)
                     .offset(x: 20)
                  
                  Image("PWC")
                     .resizable()
                     .frame(width: 320, height: 450) // Adjust the image size as needed
                     .scaleEffect(scale)
                     .offset(x: xOffset )
                     .offset(y: yOffset)
                     .offset(x: -235)
                     .onAppear {
                        startAnimation(in: geometry.size)
                     }
               }
            }
            Button(action: {
               isShowingAnotherScreen = true
            }) {
               Text("Start Test")
                  .font(.headline)
                  .frame(width: 150)
                  .foregroundColor(Color("ColorBackGround"))
                  .padding()
                  .background(Color("ColorButton"))
                  .cornerRadius(10)
            }
            
            .padding()
            .sheet(isPresented: $isShowingAnotherScreen) {
               FormView(drivingTest: PowerDrivingTest())
            }
            .padding(.bottom,90)
         }
         .padding()
      }
      .ignoresSafeArea()
      
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
