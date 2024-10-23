//
//  PrimaryButton.swift
//  ITJBootcamp
//
//  Created by Joan May on 22/10/24.
//

import SwiftUI

struct PrimaryButton: View {
    var body: some View {
        Button{
            print("Component Button")
            
        } label: {
            HStack {
                Text("Enter Now")
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.yellow)
                   
            }
        }
        .buttonStyle(BorderedProminentButtonStyle())
        .tint(.yellow)
        .cornerRadius(15)
        
        
    }
}

#Preview {
    PrimaryButton()
}
