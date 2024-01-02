//
//  UIBezierPath+Extension.swift
//  BezierPathExample
//
//  Created by kanagasabapathy on 02/01/24.
//

import UIKit

extension UIBezierPath {
    func stroke(withColor: UIColor, lineWidth: CGFloat) {
        self.lineWidth = lineWidth
        let strokeColor = withColor
        strokeColor.setStroke()
        self.stroke()
    }
}
