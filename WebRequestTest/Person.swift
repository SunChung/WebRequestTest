//
//  Person.swift
//  WebRequestTest
//
//  Created by Sun Chung on 1/20/16.
//  Copyright © 2016 anseha. All rights reserved.
//
/*********************************************
Sample JSON data for this example

{
"name": "Luke Skywalker",
"height": "172",
"mass": "77",
"hair_color": "blond",
"skin_color": "fair",
"eye_color": "blue",
"birth_year": "19BBY",
"gender": "male",
"homeworld": "http://swapi.co/api/planets/1/",
"films": [
"http://swapi.co/api/films/6/",
"http://swapi.co/api/films/3/",
"http://swapi.co/api/films/2/",
"http://swapi.co/api/films/1/",
"http://swapi.co/api/films/7/"
],
"species": [
"http://swapi.co/api/species/1/"
],
"vehicles": [
"http://swapi.co/api/vehicles/14/",
"http://swapi.co/api/vehicles/30/"
],
"starships": [
"http://swapi.co/api/starships/12/",
"http://swapi.co/api/starships/22/"
],
"created": "2014-12-09T13:50:51.644000Z",
"edited": "2014-12-20T21:17:56.891000Z",
"url": "http://swapi.co/api/people/1/"
}
********************************************/

import Foundation

class Person {
    
    private var _name : String!
    private var _height : String!
    private var _mass : String!
    private var _hairColor : String!
    private var _skinColor : String!
    private var _eyeColor : String!
    private var _birthYear : String!
    private var _gender : String!
    private var _homeWorld : String!
    private var _films : [String]!
    private var _species : [String]!
    private var _vehicles : [String]!
    private var _starships : [String]!
    
    // GETTER and SETTER format
    var name: String {
        get {
            return _name
        }
    }
    
    var height: String {
        get {
            return _height
        }
    }
    
    //
    var mass: String {
        return _mass
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    var skinColor: String {
        return _skinColor
    }
    
    var eyeColor: String {
        return _eyeColor
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var gender: String {
        return _gender
    }
    
    var homeWorld: String {
        return _homeWorld
    }
    
    var films: [String] {
        return _films
    }
    
    var species: [String] {
        return _species
    }
    
    var vehicles: [String] {
        return _vehicles
    }
    
    var starships: [String] {
        return _starships
    }
    
    init(name: String, height: String, mass: String, hairColor: String, skinColor: String, eyeColor: String, birthYear: String, gender: String, homeWorld: String) {
        
        self._name = name
        self._height = height
        self._mass = mass
        self._hairColor = hairColor
        self._skinColor = skinColor
        self._eyeColor = eyeColor
        self._birthYear = birthYear
        self._gender = gender
        self._homeWorld = homeWorld
        
    }
    
    init(films: [String], species: [String], vehicles: [String], starships: [String]) {
        
        self._films = films
        self._species = species
        self._vehicles = vehicles
        self._starships = starships
        
    }
    
}