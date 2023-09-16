//
//  OnBoardingCell.swift
//  SwiftUILearning
//
//  Created by Sanjay Tandukar on 9/16/23.
//

import SwiftUI

struct OnBoardingCell: View {
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 260, height: 400)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
      
    }
}

struct OnBoardingCell_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingCell(imageName: "")
    }
}
