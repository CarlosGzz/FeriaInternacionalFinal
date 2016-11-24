//
//  Edicion+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Edicion {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Edicion> {
        return NSFetchRequest<Edicion>(entityName: "Edicion");
    }

    @NSManaged public var pais: String?
    @NSManaged public var fechaInicio: NSDate?
    @NSManaged public var fechaFinal: NSDate?

}
