//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Gabriel Souza on 08/06/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
