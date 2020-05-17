//
//  NumberUIButton.swift
//  app-CoolCalc
//
//  Created by Simon Lovelock on 15/05/2020.
//  Copyright © 2020 Simon Lovelock. All rights reserved.
//

import UIKit

class NumberUIButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 0.75, green: 0.75, blue: 0.75, alpha: 0.2028574486)
    }

}
