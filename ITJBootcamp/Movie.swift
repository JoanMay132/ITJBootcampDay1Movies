//
//  Movie.swift
//  ITJBootcamp
//
//  Created by Joan May on 22/10/24.
//

import SwiftUI

struct Movie : Codable, Identifiable {
    let id : Int // 1, 2, 3
    let title : String
    
    let posterPath : String? // NIL
    let releaseDate : String?
    // Most critical value
    let adult : Bool?
    let popularity : Double? // NIL
    let revenue : Int?
    let budget : Int?
    let imdID : String?
    let overview : String?
    let tagline : String?
    let genres : String?
    
    // Computed properity
    
    var imageURL : URL? {
        URL(string : posterPath ?? "")
    }
    
    var unwrappedPopularity : Double {
        popularity ?? 0.0
    }
    
    var unwrappedRevenue : Double {
        Double(revenue ?? Int(0.0))
    }
    
    var unwrappedBudget : Double {
        Double(budget ?? Int(0.0))
    }
    
    var unwrappedReleaseDate : Date {
        DateFormatter().date(from: releaseDate ?? "") ?? Date()
    }
    
    var genderArray : [String] {
        genres?.components(separatedBy: ",") ?? []
    }

}

extension Movie {
    static let sample = Movie(id: 01,
                              title: "Kingdom of the Planet of the Apes",
                              posterPath: "https://lumiere-a.akamaihd.net/v1/images/02_kotpota_teaser_1sht_las_652fbe30.jpeg",
                              releaseDate: "2024-07-15T00:00:00.000Z",
                              adult: false,
                              popularity: 83.952,
                              revenue: 120_000_000,
                              budget: 160_000_000,
                              imdID: "tt6793710",
                              overview: "The new Apes movie is set many years after the conclusion of 2017's War for the Planet of the Apes. Many apes societies have grown from when the Moses-like Caesar brought his people to an oasis, while humans have been reduced to a feral-like existence. Some ape groups have never heard of Caesar, while others have contorted his teaching to build burgeoning empires. In this setting, one ape leader begins to enslave other groups to find human technology, while another ape, who watched his clan be taken, embarks on a journey to find freedom. A young human woman becomes key to the latter's quest, although she has plans of her own..",
                              tagline: "No One Can Stop the Reign",
                              genres: "Action, Adventure, Sci-Fi, Thriller")
}
