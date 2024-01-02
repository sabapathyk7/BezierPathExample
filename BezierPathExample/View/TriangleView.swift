//
//  TriangleView.swift
//  BezierPathExample
//
//  Created by kanagasabapathy on 02/01/24.
//

import UIKit

class TriangleView: UIView {

    private let numberOfInstances = 5

    init() {
        super.init(frame: .zero)

        self.backgroundColor = .white
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func draw(_ rect: CGRect) {

        var parentBound = self.bounds
        for _ in 1 ... numberOfInstances {

            let trianglePath = getEquilateralTrianglePath(forSize: parentBound.size, origin: parentBound.origin)
            trianglePath.stroke(withColor: .blue, lineWidth: Constants.lineWidth)

            let squarePath = getSquare(forEquilateralTriangle: parentBound.size, origin: parentBound.origin)
            squarePath.stroke(withColor: .blue, lineWidth: Constants.lineWidth)

            parentBound = squarePath.bounds
        }
    }

}

extension TriangleView {
    private func getSquare(forEquilateralTriangle size: CGSize, origin: CGPoint) -> UIBezierPath {

      guard size.width == size.height else {
          fatalError(Constants.errorMessage)
      }

      let path = UIBezierPath()

      let xAxis = origin.x
      let yAxis = origin.y
      let width = size.width
      let height = size.height

      path.move(to: CGPoint(x: xAxis + (width * 0.25), y: yAxis + size.height))
      path.addLine(to: CGPoint(x: xAxis + (width * 0.25), y: yAxis + (height * 0.5)))
      path.addLine(to: CGPoint(x: xAxis + (width * 0.75), y: yAxis + height * 0.5))
      path.addLine(to: CGPoint(x: xAxis + (width * 0.75), y: yAxis + height))
      path.addLine(to: CGPoint(x: xAxis + (width * 0.25), y: yAxis + height))

      return path
    }

    private func getEquilateralTrianglePath(forSize size: CGSize, origin: CGPoint) -> UIBezierPath {
      guard size.width == size.height else {
          fatalError(Constants.errorMessage)
      }
      let path = UIBezierPath()
      let xAxis = origin.x
      let yAxis = origin.y
      let width = size.width
      let height = size.height
      path.move(to: CGPoint(x: xAxis + (width * 0.5), y: yAxis + 0))
      path.addLine(to: CGPoint(x: xAxis + width, y: yAxis + height))
      path.addLine(to: CGPoint(x: xAxis + 0, y: yAxis + height))
      path.addLine(to: CGPoint(x: xAxis + width * 0.5, y: yAxis + 0))
      return path
    }
}
