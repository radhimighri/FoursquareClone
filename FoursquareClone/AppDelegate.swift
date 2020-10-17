//
//  AppDelegate.swift
//  FoursquareClone
//
//  Created by Radhi Mighri on 14/10/2020.
//  Copyright © 2020 Radhi Mighri. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//
//        let configuration = ParseClientConfiguration { (ParseMutableClientConfiguration) in
//                 ParseMutableClientConfiguration.applicationId = "IzTxiIzLG9opFFnPwGs65Oro2yQJJAl2AdaVsqtx"
//                 ParseMutableClientConfiguration.clientKey = "P4jPAO8Aob8MsAzq0cOBMUe6plVpd5zsp6hEE6g9"
//                 ParseMutableClientConfiguration.server = "https://parseapi.back4app.com"
//                 }
        
        let configuration = ParseClientConfiguration {

            $0.applicationId = "IzTxiIzLG9opFFnPwGs65Oro2yQJJAl2AdaVsqtx"
            $0.clientKey = "P4jPAO8Aob8MsAzq0cOBMUe6plVpd5zsp6hEE6g9"
            $0.server = "https://parseapi.back4app.com"

            }
        Parse.initialize(with: configuration)
//        saveInstallationObject()

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

    // just to test the connection to the Parse server
//func saveInstallationObject(){
//    if let installation = PFInstallation.current(){
//        installation.saveInBackground {
//            (success: Bool, error: Error?) in
//            if (success) {
//                print("DEBUG: You have successfully connected your app to Back4App!")
//            } else {
//                if let myError = error{
//                    print(myError.localizedDescription)
//                }else{
//                    print("DEBUG: Uknown error")
//                }
//            }
//        }
//    }
//}

}

