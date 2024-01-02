//
//  SceneDelegate.swift
//  BezierPathExample
//
//  Created by kanagasabapathy on 02/01/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo
               session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        let viewController = CompositionTriangleViewController()
        window?.rootViewController = viewController
        window?.makeKeyAndVisible()
    }
}
