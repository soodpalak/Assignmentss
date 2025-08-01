//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Student on 01/08/25.
//

import Foundation
struct Answer {
    var text: String
    var type: AnimalType
}
enum AnimalType: Character {
    case butterfly = "🦋" , duck = "🐥" , dolphin = "🐬" , peacock = "🦚"
    
    var definition: String{
        switch self {
        case .butterfly :
            return "you are likely outgoing ,enjoy interacting with pthers and are drawn to diverse social situations"
        case .duck:
            return "intellectually curious, analytical, and enjoy meaningful conversations"
        case .dolphin:
            return "you are seen as friendly, social, playful, and easy-going. Dolphin personalities are often described as empathetic, supportive, and good at building relationships"
        case .peacock:
            return "signifies someone who is outgoing, energetic, and loves being the center of attention. Peacocks are typically seen as creative, expressive, and natural communicators, often bringing joy and positivity to social situations."
        }
    }
    
}
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single , multiple, ranged
}
