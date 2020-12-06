//
//  AppDelegate.swift
//  CoureAboutMe
//
//  Created by BABICH Simon on 26.11.2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UITabBar.appearance().unselectedItemTintColor = .yellow
//        configureSliderFont()
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


//    func configureSliderFont() {
//        //sliderFont.isHidden = false
//        sliderFont.minimumValue = 0.1
//        sliderFont.maximumValue = 0.4
//        sliderFont.value = 0.18
//        sliderFont.minimumTrackTintColor = UIColor.systemBlue
//        sliderFont.maximumTrackTintColor = UIColor.systemPurple
//
//
//        sliderFont.isContinuous = true
//
////        sliderFont.addTarget(self,
////                             action: #selector(sliderValueDidChange(_:)),
////                                //#selector(sliderValueDidChange(_:)),
////                             for: .valueChanged)
//            }
    
}

