/*:
 Partner Lab 1
 
 Jeremy Chen & David Solis
 
 09/21/22
 */
//
//  ContentView.swift
//  Project1
//
//  Created by David on 9/20/22.
//

import SwiftUI

struct ContentView: View {
    
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    private let dogNames = [
        "Airedale Terrier",
        "American Foxhound",
        "Dutch Shepherd",
        "Havanese",
        "Leonberger",
        "Mudi",
        "Norwegian Lundehund",
        "Pharaoh Hound",
        "Scottish Terrier",
        "Tosa"
    ]
    private let dogDescriptions = [
        "The Airedale stands among the world's most versatile dog breeds and has distinguished himself as hunter, athlete, and companion.",
        "American Foxhounds are good-natured, low-maintenance hounds who get on well with kids, dogs, even cats, but come with special considerations for prospective owners.",
        "The Dutch Shepherd is a lively, athletic, alert and intelligent breed, and has retained its herding instinct for which it was originally developed.",
        "Havanese, the only dog breed native to Cuba, are vivacious and sociable companions and are especially popular with American city dwellers.",
        "The Leonberger is a lush-coated giant of German origin. They have a gentle nature and serene patience and they relish the companionship of the whole family.",
        "The Mudi is an extremely versatile, intelligent, alert, agile, all-purpose Hungarian farm dog. The breed is a loyal protector of property and family members without being overly aggressive.",
        "From Norway’s rocky island of Vaeroy, the uniquely constructed Norwegian Lundehund is the only dog breed created for the job of puffin hunting. With puffins now a protected species, today’s Lundehund is a friendly, athletic companion.",
        "The Pharaoh Hound, ancient \"Blushing Dog\" of Malta, is an elegant but rugged sprinting hound bred to course small game over punishing terrain. Quick and tenacious on scent, these friendly, affectionate hounds settle down nicely at home.",
        "A solidly compact dog of vivid personality, the Scottish Terrier is an independent, confident companion of high spirits. Scotties have a dignified, almost-human character.",
        "The Tosa's temperament is marked by patience, composure, boldness and courage. He is normally a tranquil, quiet, and obedient dog, with a calm but vigilant demeanor."
    ]
    @State private var index = 0
    
    var body: some View {
        LazyVStack {
            Text("Tap on the dog to see description")
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(dogNames, id: \.self) { name in
                    Image(name)
                        .resizable()
                        .scaledToFit()
                        .onTapGesture {
                            if let selected = dogNames.firstIndex(of: name) {
                                index = selected
                            }
                        }
                }
            }
            Text(dogDescriptions[index])
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
