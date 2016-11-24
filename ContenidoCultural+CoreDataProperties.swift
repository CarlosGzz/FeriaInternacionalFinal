//
//  ContenidoCultural+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension ContenidoCultural {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ContenidoCultural> {
        return NSFetchRequest<ContenidoCultural>(entityName: "ContenidoCultural");
    }

    @NSManaged public var id: Int16
    @NSManaged public var titulo: String?
    @NSManaged public var tema_id: Int16
    @NSManaged public var tipo: String?
    @NSManaged public var favorito: Int16
    @NSManaged public var contenido: NSSet?
    @NSManaged public var tema: Tema?

}

// MARK: Generated accessors for contenido
extension ContenidoCultural {

    @objc(addContenidoObject:)
    @NSManaged public func addToContenido(_ value: Contenido)

    @objc(removeContenidoObject:)
    @NSManaged public func removeFromContenido(_ value: Contenido)

    @objc(addContenido:)
    @NSManaged public func addToContenido(_ values: NSSet)

    @objc(removeContenido:)
    @NSManaged public func removeFromContenido(_ values: NSSet)

}
