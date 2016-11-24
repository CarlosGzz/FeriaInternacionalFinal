//
//  Usuario+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario");
    }

    @NSManaged public var id: Int16
    @NSManaged public var nombre: String?
    @NSManaged public var correo: String?
    @NSManaged public var puntos: Int16

}
