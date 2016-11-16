//
//  Edicion.swift
//  FeriaInternacional
//
//  Created by Carlos Gonzalez & Andrea Arroyo on 11/16/16.
//  Copyright © 2016 Carlos Gonzalez & Andrea Arroyo. All rights reserved.
//

import Foundation

class Edicion {
    //# MARK: - Properties
    
    private var pais : String
    private var fechaInicio : Date
    private var fechaFinal : Date
    
    //# MARK: - Initializer
    
    init(pais : String, fechaInicio : Date, fechaFinal : Date){
        
        self.pais = pais
        self.fechaInicio = fechaInicio
        self.fechaFinal = fechaFinal
        
    }
    
    //# MARK: - Setters
    
    func setPais(pais : String){
        self.pais = pais
    }
    
    func setFechaInicio(fechaInicio : Date){
        self.fechaInicio = fechaInicio
    }
    
    func setFechaFinal(fechaFinal : Date){
        self.fechaFinal = fechaFinal
    }
    
    
    //# MARK: - Getters
    
    func getPais() -> String {
        return self.pais
    }
    
    func getFechaInicio() -> Date {
        return self.fechaInicio
    }
    
    func getFechaFinal() -> Date {
        return self.fechaFinal
    }
    
}
