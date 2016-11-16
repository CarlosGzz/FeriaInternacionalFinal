//
//  ContenidoCultural.swift
//  FeriaInternacional
//
//  Created by Carlos Gonzalez & Andrea Arroyo on 11/16/16.
//  Copyright © 2016 Carlos Gonzalez & Andrea Arroyo. All rights reserved.
//

import Foundation

class ContenidoCultural {
    //# MARK: - Properties
    
    private var id : Int
    private var titulo : String
    private var tema : Int
    private var tipo : String
    private var contenidos : [Contenido]
    
    //# MARK: - Initializer
    
    init(id : Int, titulo : String, tema : Int, tipo : String, contenidos : [Contenido]){
        
        self.id = id
        self.titulo = titulo
        self.tema = tema
        self.tipo = tipo
        self.contenidos = contenidos
        
    }
    
    //# MARK: - Setters
    
    func setId(id : Int){
        self.id = id
    }
    
    func setTitulo(titulo : String){
        self.titulo = titulo
    }
    
    func setTema(tema : Int){
        self.tema = tema
    }
    
    func setTipo(tipo : String){
        self.tipo = tipo
    }
    func setContenidos(contenidos : [Contenido]){
        self.contenidos = contenidos
    }
    
    
    //# MARK: - Getters
    
    func getTitulo() -> String {
        return self.titulo
    }
    
    func getTema() -> Int {
        return self.tema
    }
    
    func getTipo() -> String {
        return self.tipo
    }
    
    func getContenidos() -> [Contenido] {
        return self.contenidos
    }
}

struct Contenido {
    var formato : String
    var contenido : String
    var secuencia : Int
}
