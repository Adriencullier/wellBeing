//
//  SceneDelegate.swift
//  WellBeing
//
//  Created by Adrien Cullier on 29/11/2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var navigationController: UINavigationController?
    var tabBar: WbTabBar?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        self.window?.makeKeyAndVisible()
        
        let vc1 = ViewController()
        vc1.title = "VC1"
        let vc2 = ViewControllerTest()
        vc2.title = "VC2"
        self.tabBar = WbTabBar()
        self.tabBar?.viewControllers = [vc1, vc2]
        
        self.navigationController = UINavigationController(rootViewController: self.tabBar!)
        
        window?.rootViewController = navigationController
    }

    func sceneDidDisconnect(_ scene: UIScene) {}

    func sceneDidBecomeActive(_ scene: UIScene) {}

    func sceneWillResignActive(_ scene: UIScene) {}

    func sceneWillEnterForeground(_ scene: UIScene) {}

    func sceneDidEnterBackground(_ scene: UIScene) {}
}

