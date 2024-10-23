//
//  OnboardingView.swift
//  ITJBootcamp
//
//  Created by Joan May on 22/10/24.
//

import SwiftUI

struct OnboardingView: View {
    let imageName = "FindingNemo"
    let movie : Movie
    var body: some View {
        VStack(spacing : 15) {
            Spacer()
            Group {
                Text(movie.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                Text(movie.unwrappedReleaseDate, format: .dateTime.day().month().year())
                
            }
            .foregroundColor(.white)
            .multilineTextAlignment(.center)

            PrimaryButton()
                .padding(20)
        }
        .padding()
      
        .background {
            
            AsyncImage(
                url: movie.imageURL,
                transaction: Transaction(animation: .easeIn(duration: 2))
                
            ) { phase in
                switch phase {
                case .success(let image):
                        BlurredImageBackground(image: image)
                default:
                    BlurredImageBackground(image: Image(imageName))
                }
            }
            .ignoresSafeArea()
        }
     
     
  
        
    }
}

#Preview {
    OnboardingView(movie: Movie.sample)
}
