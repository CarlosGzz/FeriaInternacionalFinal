//
//  Tema+CoreDataProperties.swift
//  
//
//  Created by Laboratorio on 11/23/16.
//
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Tema {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tema> {
        return NSFetchRequest<Tema>(entityName: "Tema");
    }

    @NSManaged public var id: Int16
    @NSManaged public var nombre: String?
    @NSManaged public var eventos: NSSet?
    @NSManaged public var contenidos: NSSet?

}

// MARK: Generated accessors for eventos
extension Tema {

    @objc(addEventosObject:)
    @NSManaged public func addToEventos(_ value: Evento)

    @objc(removeEventosObject:)
    @NSManaged public func removeFromEventos(_ value: Evento)

    @objc(addEventos:)
    @NSManaged public func addToEventos(_ values: NSSet)

    @objc(removeEventos:)
    @NSManaged public func removeFromEventos(_ values: NSSet)

}

// MARK: Generated accessors for contenidos
extension Tema {

    @objc(addContenidosObject:)
    @NSManaged public func addToContenidos(_ value: ContenidoCultural)

    @objc(removeContenidosObject:)
    @NSManaged public func removeFromContenidos(_ value: ContenidoCultural)

    @objc(addContenidos:)
    @NSManaged public func addToContenidos(_ values: NSSet)

    @objc(removeContenidos:)
    @NSManaged public func removeFromContenidos(_ values: NSSet)

}
