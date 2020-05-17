//
//  EqualsUIButton.swift
//  app-CoolCalc
//
//  Created by Simon Lovelock on 15/05/2020.
//  Copyright © 2020 Simon Lovelock. All rights reserved.
//

import UIKit

class EqualsUIButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 0.8698724508, green: 0.3106145561, blue: 0.06485559791, alpha: 1)
    }

}
