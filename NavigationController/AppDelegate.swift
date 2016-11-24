//
//  AppDelegate.swift
//  FeriaInternacional
//
//  Created by Carlos Gonzalez & Andrea Arroyo on 11/9/16.
//  Copyright © 2016 Laboratorio. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var data: NSArray = []
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
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
        seedEventos()
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func seedEventos(){
        
        Alamofire.request("https://feriaint.herokuapp.com/app/eventos").responseJSON {
            (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let json = JSON(responseData.result.value!)
                print(json)
                for (_,subJson):(String, JSON) in json {

                    let moc = DataController().managedObjectContext
                    
                    let entity = NSEntityDescription.insertNewObject(forEntityName: "Evento", into: moc) as! Evento
                    
                    // JSON TO DATA
                    entity.setValue(Int(subJson["id"].stringValue), forKey: "id")
                    entity.setValue(subJson["titulo"].stringValue, forKey: "titulo")
                    
                    print("fecha:")
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
                    var date = dateFormatter.date(from: subJson["fechaInicio"].stringValue)
                    if date == dateFormatter.date(from: subJson["fechaInicio"].stringValue){
                        entity.setValue(date, forKey: "fechaInicio")
                        print("se pudo")
                    }
                    date = dateFormatter.date(from: subJson["fechaFinal"].stringValue)
                    if date == dateFormatter.date(from: subJson["fechaFinal"].stringValue){
                        entity.setValue(date, forKey: "fechaFinal")
                        print("se pudo")
                    }
                    entity.setValue(subJson["descripcion"].stringValue, forKey: "descripcion")
                    entity.setValue(subJson["tipo"].stringValue, forKey: "tipo")
                    entity.setValue(Int(subJson["tema"].stringValue), forKey: "tema_id")
                    entity.setValue(subJson["hashtag"].stringValue, forKey: "hashtag")
                    
                    //Save
                     do {
                        try moc.save()
                     } catch {
                        fatalError("Failure to save context: \(error)")
                     }
                }
            }
        }
    }

}

