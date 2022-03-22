//
//  AppDelegate.swift
//  Met_Assignment
//
//  Created by Apple on 22/03/22.
//

import UIKit
import SwiftyJSON

var ExcerciseModel : ExcerciseModelStructs!
var ExcerciseDataArray : [ExcerciseData3]!

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        ExcerciseList()
       
        return true
    }
    
    func ExcerciseList()
    {
    let path = Bundle.main.path(forResource: "ExcerciseData", ofType: "json")!
    let url = URL(fileURLWithPath: path)

    do {

        let data = try Data(contentsOf: url)
        let json = try JSON(data: data)
        let decoder = JSONDecoder()
        // if the json type is array time use throwables
         ExcerciseModel = try decoder.decode(ExcerciseModelStructs.self, from: data)
        print(json)
        var arr : [ExcerciseData3] = ExcerciseModel.data[0].data[0].workouts.stages[0].exerciseList
        ExcerciseDataArray = arr.sorted{ $0.name.localizedCaseInsensitiveCompare($1.name) == ComparisonResult.orderedAscending}
        
    } catch {

        print(error)
    }
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


}

