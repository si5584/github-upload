//
//  ResultUILabel.swift
//  app-CoolCalc
//
//  Created by Simon Lovelock on 15/05/2020.
//  Copyright © 2020 Simon Lovelock. All rights reserved.
//

import UIKit

class ResultUILabel: UILabel {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2044627568)
    }

}
