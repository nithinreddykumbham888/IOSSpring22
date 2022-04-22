//
//  MovieData.swift
//  Kumbham_Movies
//
//  Created by student on 4/21/22.
//

import Foundation
import UIKit


struct Movies{
    var title : String
    var image : UIImage
    var releasedYear : String
    var movierating : String
    var boxOffice : String
    var moviePlot : String
    var cast: [String]
}

struct Genre{
    var category : String
    var movies : [Movies] = []
}

let movie1 = Genre(category: "Love/Drama",
                   movies:[
                   Movies(title: "Rab Ne Bana Di Jodi", image: UIImage(named: "Rab")!, releasedYear: "2008", movierating: "7.2", boxOffice: "187 Crore", moviePlot: "After the wedding ceremony between Surinder Sahni and Taani, Surinder discovers that his new wife cares little for him.", cast: ["Sharukh Kahn","Anushka Sharma"]),
                   Movies(title: "Bachelor", image: UIImage(named: "Bachelor")!, releasedYear: "2021", movierating: "6.4", boxOffice: "100 Crore", moviePlot: "A young couple fall in love and move in together, but a complication results in them breaking up and facing each other in court.", cast: ["GV Prakash","Divya Bharathi"]),
                   Movies(title: "Hridayam", image: UIImage(named: "Hridayam")!, releasedYear: "2022", movierating: "8.4", boxOffice: "180 Crore", moviePlot: "A man in his early 30s reflects on his misspent youth and the rocky road that brought him to adulthood.", cast: ["Pranav Mohanlal","Annu"]),
                   Movies(title: "Lukka Chuppi", image: UIImage(named: "Lukka")!, releasedYear: "2019", movierating: "6.3", boxOffice: "126.86 Crore", moviePlot: "A television reporter and a politician's headstrong daughter decide to try out a live-in relationship during a 20-day business trip, but things get complicated when the whole traditional family joins in.", cast: ["Kartik Aaryan","Kriti Sanon"]),
                   Movies(title: "Dear Comrade", image: UIImage(named: "Dear")!, releasedYear: "2019", movierating: "7.4", boxOffice: "37.86 Crore", moviePlot: "A hot-headed student union leader falls in love with a state-level cricketer; but soon, his anger issues become a roadblock on his way to unite with her.", cast: ["Vijay Devarakonda","Rashmika Mandanna"])])

let movie2 = Genre(category: "Family",
                   movies:[
                   Movies(title: "Sankranthi", image: UIImage(named: "Sankranthi")!, releasedYear: "2005", movierating: "6.3", boxOffice: "45 Crore", moviePlot: "The film features an ensemble cast comprosing of Venkatesh, Srikanth, Sneha, Aarthi Agarwal, Sangeetha, Rathi, Siva Balaji, Sharwanand, Sharada and Chandra Mohan.", cast: ["Venkatesh","Sneha"]),
                   Movies(title: "Drushyam", image: UIImage(named: "Drushyam")!, releasedYear: "2014", movierating: "8.3", boxOffice: "456 Million", moviePlot: "A respected, self-made man (Venkatesh Daggubati) must think fast to save his family after a crime is inadvertently committed.", cast: ["Venkatesh","Meena"]),
                   Movies(title: "Bommarillu", image: UIImage(named: "Bommarillu")!, releasedYear: "2006", movierating: "8.2", boxOffice: "50 Crores", moviePlot: "Siddhu's overprotective father decides to get him married to a rich girl. Siddhu's life, however, takes an interesting turn when he meets and falls in love with Hasini.", cast: ["Siddharth","Genelia"]),
                   Movies(title: "Nuvvostanante Nenoddantana", image: UIImage(named: "Nuvvostanante")!, releasedYear: "2005", movierating: "7.8", boxOffice: "100 Crores", moviePlot: "Nuvvostanante Nenoddantana is a 2005 Telugu romantic comedy film, starring Siddharth and Trisha Krishnan. It marks the directorial debut of Prabhu Deva.", cast: ["Siddharth","Trishna"]),
                   Movies(title: "Brahmotsavam", image: UIImage(named: "Brahmotsavam")!, releasedYear: "2016", movierating: "4.4", boxOffice: "30 Crores", moviePlot: "When a man fixes his daughter's marriage with his brother's son, he learns that his would-be son-in-law loves someone else. As this leads to tension in the family, the son plays the peacemaker.", cast: ["Mahesh Babu","Kajal"])])

let movie3 = Genre(category: "Action",
                   movies:[
                   Movies(title: "Bahubali", image: UIImage(named: "Bahubali")!, releasedYear: "2015", movierating: "8.1", boxOffice: "650 Crore", moviePlot: "In the kingdom of Mahishmati, while pursuing his love, Shivudu learns about the conflict ridden past of his family and his legacy. He must now prepare himself to face his newfound arch-enemy.", cast: ["Prabhas","Anushka Sharma"]),
                   Movies(title: "KGF", image: UIImage(named: "KGF")!, releasedYear: "2018", movierating: "8.4", boxOffice: "250 Crore", moviePlot: "The blood-soaked land of Kolar Gold Fields has a new overlord now, Rocky, whose name strikes fear in the heart of his foes. His allies look up to him as their Savior, the government sees him as a threat, and his enemies are clamouring for revenge.", cast: ["Yash","Srinidhi Shetty"]),
                   Movies(title: "RRR", image: UIImage(named: "RRR")!, releasedYear: "2022", movierating: "8.9", boxOffice: "1000 Crore", moviePlot: "A tale of two legendary revolutionaries and their journey far away from home. After their journey they return home to start fighting back against British colonialists in the 1920s.", cast: ["NTR","Oliva Morris"]),
                   Movies(title: "Attack", image: UIImage(named: "Attack")!, releasedYear: "2022", movierating: "8.1", boxOffice: "22.58 Crore", moviePlot: "A Cyber soilder who lost everything puts his life on the line to serve the nation.", cast: ["John Abraham","Rakul Preet Singh"]),
                   Movies(title: "Hacksaw Ridge", image: UIImage(named: "Ridge")!, releasedYear: "2016", movierating: "8.1", boxOffice: "100 Million", moviePlot: "he true story of Pfc. Desmond T. Doss (Andrew Garfield), who won the Congressional Medal of Honor despite refusing to bear arms during WWII on religious grounds.", cast: ["Andrew Garfield"])])

let moviesArray = [movie1,movie2,movie3]
