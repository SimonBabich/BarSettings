//
//  AppDelegate.swift
//  CoureAboutMe
//
//  Created by BABICH Simon on 26.11.2020.
//

import UIKit
import WatchConnectivity

let fileNameAD = "AppDelegate.swift"

@main
class AppDelegate: UIResponder, UIApplicationDelegate//, WCSessionDelegate
{
//    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
//        <#code#>
//    }
//
//    func sessionDidBecomeInactive(_ session: WCSession) {
//        <#code#>
//    }
//
//    func sessionDidDeactivate(_ session: WCSession) {
//        <#code#>
    //}
    

//    var window: UIWindow?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        let vc = ViewController()
//        let navController = UINavigationController(rootViewController: vc)
//
//        self.window?.rootViewController = navController
//        self.window?.backgroundColor = UIColor.white
//        self.window?.makeKeyAndVisible()
        
//        if WCSession.isSupported() {
//            let session = WCSession.defaultSession()
//            session.delegate = self
//            session.activateSession()
//
//        }
        print("01")
        print(fileNameAD, #function)
        
        UITabBar.appearance().unselectedItemTintColor = .yellow
        return true
    }

    // MARK: UISceneSession Lifecycle

//    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        // Called when a new scene session is being created.
//        // Use this method to select a configuration to create the new scene with.
//        print("001")
//        print(fileNameAD, #function)
//
//        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
//    }

//    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
//        // Called when the user discards a scene session.
//        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
//        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
//        print("002")
//        print(fileNameAD, #function)
//    }
    
   
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("02")
        print(fileNameAD, #function)
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("03")
        print(fileNameAD, #function)
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("04")
        print(fileNameAD, #function)
    }
    	
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("05")
        print(fileNameAD, #function)
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("999")
        print(fileNameAD, #function)
    }
    
//    private func session(session: WCSession, didReciveMessage message: [String: AnyObject]){
//        UNUserNotificationCenter.def .postNotificationName(NSNotificationC.Name(rawValue: "receivedWatchMessage"),object: self,UserInfo: message)
//    }
    
}

