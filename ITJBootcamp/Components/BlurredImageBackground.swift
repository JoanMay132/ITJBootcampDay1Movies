//
//  BlurredImageBackground.swift
//  ITJBootcamp
//
//  Created by Joan May on 22/10/24.
//

import SwiftUI

struct BlurredImageBackground: View {
    var image : Image
    var blurHeight : CGFloat = 250
    var body: some View {
        VStack {
            Spacer()
            image
                .resizable()
                .frame(height: blurHeight, alignment: .bottom)
                .blur(radius: 15)
        }
        .background {
            image
                .resizable()
                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    BlurredImageBackground(image : Image("FindingDory"))
}
