//
//  greenLabel.swift
//  Delegation Review
//
//  Created by Oscar Victoria Gonzalez  on 11/6/19.
//  Copyright © 2019 Oscar Victoria Gonzalez . All rights reserved.
//

import UIKit

class GreenLabel: UILabel{
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .green
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        backgroundColor = .green
    }
}
