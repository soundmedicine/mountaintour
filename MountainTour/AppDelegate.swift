//
//  AppDelegate.swift
//  MountainTour
//
//  Created by Roberto Santos on 2/16/19.
//  Copyright © 2019 Roberto Santos. All rights reserved.
//

import UIKit
import mParticle_Apple_SDK
//import Firebase

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        let options = MParticleOptions(key: "62f5e84d23a5314db265fb62d47ede5a",
                                       secret: "gr-ro6B8ru8W4zfUz3u7Ev5ynDuWYC4rI9JXBNeXjfHxMSyeVOb97xXje7SRwcSf")

        let request = MPIdentityApiRequest()
        let currentUser = MParticle.sharedInstance().identity.currentUser
        print("!!!!!!!!!\(currentUser)")
        
        request.email = "mymymy@momomo.com"
        options.identifyRequest = request
        options.onIdentifyComplete = { (apiResult, error) in
            NSLog("Identify complete. userId = %@ error = %@", apiResult?.user.userId.stringValue ?? "Null User ID", error?.localizedDescription ?? "No Error Available")
            print("!!!!!!!\(apiResult!.user)")
            MParticle.sharedInstance().logEvent("Logged In", eventType: MPEventType.navigation, eventInfo: ["city":"New York"])
        }
        
        MParticle.sharedInstance().start(with: options)
        
        MParticle.sharedInstance()
        MParticle.sharedInstance().logError("Login Failed", eventInfo: ["string":"spring"])
        MParticle.sharedInstance().logScreen("Main Menu", eventInfo: nil)
//        MParticle.sharedInstance().logException(NSException, topmostContext: nil)
        
//        FirebaseApp.configure()
        
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

