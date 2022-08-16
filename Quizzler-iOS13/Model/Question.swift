//
//  struct.swift
//  Quizzler-iOS13
//
//  Created by 최진용 on 2022/08/15.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation
import UIKit

struct Question{
    var text : String
    var answer : String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}
