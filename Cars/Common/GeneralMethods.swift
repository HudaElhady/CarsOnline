//
//  GeneralMethods.swift
//  Cars
//
//  Created by MIS on 7/14/18.
//  Copyright © 2018 Huda Elhady. All rights reserved.
//

import UIKit

func addShadow(view : UIView , color : UIColor) {
    view.layer.shadowColor = color.cgColor
    view.layer.shadowOpacity = 0.5
    view.layer.shadowOffset = CGSize.zero
    view.layer.shadowRadius = 3.5
    view.layer.masksToBounds = false
}
