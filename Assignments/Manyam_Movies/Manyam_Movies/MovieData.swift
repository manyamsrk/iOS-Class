//
//  MovieData.swift
//  Manyam_Movies
//
//  Created by Student on 4/22/22.
//

import Foundation
import UIKit

struct Genre{
    var category:String
    var movies:[Movie] = []
    
}

struct Movie{
    var title:String
    var image:UIImage
    var releasedYear:String
    var movieRating:String
    var boxOffice:String
    var moviePlot:String
    var cast = [String]()

}
let genre1 = Genre(category: "Fantasy", movies: [Movie(title: "The Lord of the Rings: The Fellowship of the Ring", image:UIImage(named: "f1")!, releasedYear: "2001", movieRating: "8.8", boxOffice: "$315.54M", moviePlot: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.", cast: ["Elijah Wood","Orlando Bloom","Ian McKellen"]),Movie(title: "Game of Thrones", image:UIImage(named: "f2")!, releasedYear: "2011-2019", movieRating: "9.3", boxOffice: "$285 million per season", moviePlot: "Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.", cast: ["Emilia Clarke","Peter Dinklage","Kit Harington","Lena Headey"]),Movie(title: "Conan the Barbarian", image:UIImage(named: "f3")!, releasedYear: "1982", movieRating: "6.9", boxOffice: "$39.57M", moviePlot: "A young boy, Conan, becomes a slave after his parents are killed and tribe destroyed by a savage warlord and sorcerer, Thulsa Doom. When he grows up he becomes a fearless, invincible fighter. Set free, he plots revenge against Thulsa Doom.", cast: ["JOHN MILIUS","Arnold Schwarz","James Earl Jones","Max Von Sydow"]),Movie(title: "Harry Potter", image:UIImage(named: "f4")!, releasedYear: "2011", movieRating: "8.1", boxOffice: "$381.01M", moviePlot: "Harry, Ron, and Hermione search for Voldemort's remaining Horcruxes in their effort to destroy the Dark Lord as the final battle rages on at Hogwarts.", cast: ["Daniel Radcliffe","Emma Waston","Rupert Grint"]),Movie(title: "The Hobbit: An Unexpected Journey", image:UIImage(named: "f5")!, releasedYear: "2012", movieRating: "7.8", boxOffice: "$303.00M", moviePlot: "A reluctant Hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home, and the gold within it from the dragon Smaug.", cast: ["Martin Freeman","Ian McKellen","Richard Armitage","Andy Serkis"])])

let genre2 = Genre(category: "Science Fiction", movies: [Movie(title: "Inception", image:UIImage(named: "s1")!, releasedYear: "2010", movieRating: "8.8", boxOffice: "$292.58M", moviePlot: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.", cast: ["Leonardo DiCaprio","Joseph Gordon-Levitt","Elliot Page"]),Movie(title: "The Matrix ", image:UIImage(named: "s2")!, releasedYear: "1999", movieRating: "8.7", boxOffice: "$171.48M", moviePlot: "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.", cast: ["Keanu Reeves","Laurence Fishburne","Hugo Weaving"]),Movie(title: "Interstellar", image:UIImage(named: "s3")!, releasedYear: "2014", movieRating: "8.6", boxOffice: "$188.02M", moviePlot: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.", cast: ["Matthew McConaughey","Anne Hathaway","Jessica Chastain"]),Movie(title: "Terminator 2: Judgment Day", image:UIImage(named: "s4")!, releasedYear: "1991", movieRating: "8.6", boxOffice: "$204.84M", moviePlot: "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her ten-year-old son John from a more advanced and powerful cyborg.", cast: ["Arnold Schwarzengger","Linda Hamilton","Robert Patrick"]),Movie(title: "Avengers: Endgame", image:UIImage(named: "s5")!, releasedYear: "2019", movieRating: "8.4", boxOffice: "$858.37M", moviePlot: "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.", cast: ["Robert Downey Jr","Chris Evans","Mark Ruffalo","Chris Hemsworth"])])

let genre3 = Genre(category: "Bond Movies(007)", movies: [Movie(title: "Casino Royale", image:UIImage(named: "b1")!, releasedYear: "2006", movieRating: "8.0", boxOffice: "$167.45M", moviePlot: "After earning 00 status and a licence to kill, secret agent James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.", cast: ["Daniel Craig","Eva Green","Judi Dench","Jeffrey Wright"]),Movie(title: "On Her Majesty's Secret Service", image:UIImage(named: "b2")!, releasedYear: "1969", movieRating: "6.8", boxOffice: "$22.80M", moviePlot: "James Bond woos a mob boss' daughter and goes undercover to uncover the true reason for Ernst Stavro Blofeld's allergy research in the Swiss Alps involving beautiful women from around the world", cast: ["George Lazenby","Diana Rigg","Telly Savalas"]),Movie(title: "Skyfall", image:UIImage(named: "b3")!, releasedYear: "2012", movieRating: "7.8", boxOffice: "$304.36", moviePlot: "ames Bond's loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.", cast: ["Daniel Craig","Javier Bardem","Naomie Harris","Judi Dench"]),Movie(title: "Goldfinger", image:UIImage(named: "b4")!, releasedYear: "1964", movieRating: "7.7", boxOffice: "$51.08", moviePlot: "While investigating a gold magnate's smuggling, James Bond uncovers a plot to contaminate the Fort Knox gold reserve.", cast: ["Sean Connery","Get Fobe","Honor Blackman","Shirley Eaton"]),Movie(title: "No Time to Die", image:UIImage(named: "b5")!, releasedYear: "2021", movieRating: "7.3", boxOffice: "$160.87", moviePlot: "James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.", cast: ["Daniel Craig","Ana de Armas","Rami Malek"])])

let genres = [genre1, genre2, genre3]
