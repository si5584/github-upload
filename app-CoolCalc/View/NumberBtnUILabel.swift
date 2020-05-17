//
//  NumberBtnUILabel.swift
//  app-CoolCalc
//
//  Created by Simon Lovelock on 15/05/2020.
//  Copyright © 2020 Simon Lovelock. All rights reserved.
//

import UIKit

class NumberBtnUILabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 5
        layer.backgroundColor = #colorLiteral(red: 0.75, green: 0.75, blue: 0.75, alpha: 0.2040614298)
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
