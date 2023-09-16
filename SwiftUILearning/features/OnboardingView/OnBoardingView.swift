//
//  OnBoardingView.swift
//  SwiftUILearning
//
//  Created by Sanjay Tandukar on 9/16/23.
//

import SwiftUI

struct OnBoardingView: View {
    @State private var currentStep = 0
    @State private var imageList = ["firstimage", "fourthimage", "thirdimage"]
    
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        VStack {
            TabView(selection: $currentStep) {
                ForEach(0..<imageList.count) {it in
                    OnBoardingCell(imageName: imageList[it])
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            HStack(spacing: 2) {
                ForEach(0..<imageList.count) {it in
                    if it == currentStep {
                        Rectangle()
                            .frame(width: 20, height: 10)
                            .cornerRadius(12)
                            .foregroundColor(.green)
                    } else {
                        Circle()
                            .frame(width: 20, height: 10)
                            .foregroundColor(.gray)
                    }
                }
            }
            
            
        }
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}


