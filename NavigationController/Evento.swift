//
//  Evento.swift
//  FeriaInternacional
//
//  Created by Carlos Gonzalez & Andrea Arroyo on 11/16/16.
//  Copyright © 2016 Carlos Gonzalez & Andrea Arroyo. All rights reserved.
//

import Foundation

class Evento {
    //# MARK: - Properties

    private var id : Int
    private var titulo : String
    private var fechaInicio : Date
    private var fechaFinal : Date
    private var lugar : String
    private var descripcion : String
    private var tipo: String
    private var tema: Int
    private var hashtag : String?
    private var favorito : Bool?
    private var fecha : String?
    private var horarioInicio : String?
    private var horarioFinal : String?
    
    //# MARK: - Initializer
    
    init(id : Int, titulo : String, fechaInicio : Date, fechaFinal : Date, lugar : String, descripcion : String, tipo : String, tema: Int){
        
        self.id = id
        self.titulo = titulo;
        self.fechaInicio = fechaInicio
        self.fechaFinal = fechaFinal
        self.lugar = lugar
        self.descripcion = descripcion
        self.tipo = tipo
        self.tema = tema
        
    }
    
    //# MARK: - Setters
    
    func setTitulo(titulo : String){
        self.titulo = titulo
    }
    
    func setFechaInicio(fechaInicio : Date){
        self.fechaInicio = fechaInicio
    }
    
    func setFechaFinal(fechaFinal : Date){
        self.fechaFinal = fechaFinal
    }
    
    func setLugar(lugar : String){
        self.lugar = lugar
    }
    
    func setDescripcion(descripcion : String){
        self.descripcion = descripcion
    }
    
    func setTipo(tipo : String){
        self.tipo = tipo
    }
    
    func setTema(tema : Int){
        self.tema = tema
    }
    
    //# TODO: - Setters
    
    func setHashtag(hashtag : String){
        self.hashtag = hashtag
    }
    
    func setFavorito(favorito : Bool){
        self.favorito = favorito
    }
    
    func setHorarioInicio(horarioInicio : String){
        self.horarioInicio = horarioInicio
    }
    
    func setHorarioFinal(horarioFinal : String){
    self.horarioFinal = horarioFinal
    }
    
    //# MARK: - Getters
    
    func getTitulo() -> String {
        return self.titulo
    }
    
    func getFechaInicio() -> Date {
        return self.fechaInicio
    }
    
    func getFechaFinal() -> Date {
        return self.fechaFinal
    }
    
    func getLugar() -> String {
        return self.lugar
    }
    
    func getDescripcion() -> String {
        return self.descripcion
    }
    
    func getTipo() -> String {
        return self.tipo
    }
    
    func getTema() -> Int {
        return self.tema
    }
    
    func getHashtag() -> String {
        return self.hashtag!
    }
    
    //# TODO: - Getters
    func isFavorito() -> Bool {
        return self.favorito!
    }
    
    func getHorarioInicio() -> String {
        return self.horarioInicio!
    }
    
    func getHorarioFinal() -> String {
        return self.horarioFinal!
    }
}
