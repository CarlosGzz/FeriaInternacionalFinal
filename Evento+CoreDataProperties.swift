//
//  Evento+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Evento {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Evento> {
        return NSFetchRequest<Evento>(entityName: "Evento");
    }

    @NSManaged public var id: Int64
    @NSManaged public var titulo: String?
    @NSManaged public var fechaInicio: NSDate?
    @NSManaged public var fechaFinal: NSDate?
    @NSManaged public var lugar: String?
    @NSManaged public var descripcion: String?
    @NSManaged public var tipo: String?
    @NSManaged public var tema_id: Int64
    @NSManaged public var hashtag: String?
    @NSManaged public var favorito: Bool
    @NSManaged public var tema: Tema?

}
