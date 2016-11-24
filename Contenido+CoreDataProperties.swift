//
//  Contenido+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Contenido {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contenido> {
        return NSFetchRequest<Contenido>(entityName: "Contenido");
    }

    @NSManaged public var formato: String?
    @NSManaged public var contenido: String?
    @NSManaged public var secuencia: Int16
    @NSManaged public var id_cc: Int16
    @NSManaged public var contenido_cultural: ContenidoCultural?

}
