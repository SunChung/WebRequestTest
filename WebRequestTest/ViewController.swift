//
//  ViewController.swift
//  WebRequestTest
//
//  Created by Sun Chung on 1/20/16.
//  Copyright © 2016 anseha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "http://swapi.co/api/people/1/"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (urlData, response, error) -> Void in
            
            if let data = urlData {
                
                do {
                    
                    let json = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
                    
                    // Need to put json result in Dictionary format, so we can use
                    // We know the key is always String, but not for the value, hence AnyObject
                    if let jsonDict = json as? Dictionary<String, AnyObject> {
                        
                        //print("JSON DICTIONARY : \(jsonDict.debugDescription)")
                        
                        if let name = jsonDict["name"] as? String, let height = jsonDict["height"] as? String, let mass = jsonDict["mass"] as? String, let hairColor = jsonDict["hair_color"] as? String, let skinColor = jsonDict["skin_color"] as? String, let eyeColor = jsonDict["eye_color"] as? String, let birthYear = jsonDict["birth_year"] as? String, let gender = jsonDict["gender"] as? String, let homeWorld = jsonDict["homeworld"] as? String {
                        
                            let person = Person(name: name, height: height, mass: mass, hairColor: hairColor, skinColor: skinColor, eyeColor: eyeColor, birthYear: birthYear, gender: gender, homeWorld: homeWorld)
                            
                            print("Name : \(person.name)")
                            print("Height : \(person.height)")
                            print("Mass : \(person.mass)")
                            print("HairColor : \(person.hairColor)")
                            print("Skin Color : \(person.skinColor)")
                            print("Eye Color : \(person.eyeColor)")
                            print("BirthYear : \(person.birthYear)")
                            print("Gender : \(person.gender)")
                            print("Home World : \(person.homeWorld)")
                            
                            // This how to get array from the jsonDict above
                            if let films = jsonDict["films"] as? [String] {
                                
                                for film in films {
                                    print(film)
                                }
                                
                            } else {
                                
                                print("Something Wrong With ARRAY films")
                            
                            }
                        
                        } else {
                            
                            print("Something Wrong With JSON Dictionary")
                        
                        }
                        
                    }
                
                } catch {
                    
                    print("JSON ERROR \(error)")
                
                }
                
            }
 
        }
        
            .resume()
    
    }

}