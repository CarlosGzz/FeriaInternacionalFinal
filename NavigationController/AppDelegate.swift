//
//  AppDelegate.swift
//  FeriaInternacional
//
//  Created by Carlos Gonzalez & Andrea Arroyo on 11/9/16.
//  Copyright © 2016 Laboratorio. All rights reserved.
//

import UIKit
import Alamofire

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
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user
        getEventos()
        print(" //// QUE DESMADRE ////")
        //print(self.data[0])
        print(" //// QUE DESMADRE 2 ////")
        
        
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    func getEventos(){
        Alamofire.request("https://feriaint.herokuapp.com/app/eventos").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                //print("JSON: \(JSON)")
                print(JSON)
                self.data = JSON as! NSArray
                print("NO ME CHINGUES ")
                print(self.data)
                for j in JSON as! [AnyObject]{
                    print(j["descripcion"])
                }
                
                for dataX in self.data as! [AnyObject]{
                    print(dataX)
                    var evento = Evento( id: dataX["id"] as! Int, titulo: dataX["titulo"] as! String, fechaInicio: dataX["fechaInicio"] as! Date, fechaFinal: dataX["fechaFinal"] as! Date, lugar: dataX["lugar"] as! String, descripcion: dataX["descripcion"] as! String, tipo: dataX["tipo"] as! String, tema: dataX["tema"] as! Int)
                    print("EVENTO /////////")
                    print(evento)
                }
            }
        }
    }

}

