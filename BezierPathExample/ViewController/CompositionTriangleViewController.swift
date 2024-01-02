//
//  CompositionTriangleViewController.swift
//  BezierPathExample
//
//  Created by kanagasabapathy on 02/01/24.
//

import UIKit

class CompositionTriangleViewController: UIViewController {

    private var triangleView = TriangleView()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        triangleView = TriangleView()
        view.addSubview(triangleView)

        triangleView.anchorDimension(width: triangleView.widthAnchor,
                                     height: triangleView.heightAnchor,
                                     inset: UIEdgeInsets(top: 0, left: 0, bottom: 375, right: 375))
        triangleView.anchorCenter(centerX: view.safeAreaLayoutGuide.centerXAnchor)
        triangleView.anchor(top: view.safeAreaLayoutGuide.topAnchor,
                            inset: UIEdgeInsets(top: 100, left: 0, bottom: 0, right: 0))
    }
}
