//
//  NetworkService.swift
//  Test Application
//
//  Created by William Jaros on 8/3/24.
//

import Foundation

//Singleton Network service to handle network calls
class NetworkService {
    static let shared = NetworkService()
    
    private init() { }
    
    //Network request to get the all meals from the API.
    func getMeals() async throws -> [Meal] {
        let path = "https://themealdb.com/api/json/v1/1/filter.php?c=Dessert"
        //Creates url 'safe' path
        let url = URL(string: path.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
        let request = URLRequest(url: url!)
        //Calls the API with the request and awaits the response.
        let (data, _) = try await URLSession.shared.data(for: request)
        //Decodes the data into the custom struct created from the API contract
        let decodedData = try JSONDecoder().decode(MealsDto.self, from: data)
        print("QQQ \(decodedData.meals.count)")
        return decodedData.meals.sorted(by: { $0.strMeal < $1.strMeal })
    }
    
    //Network request to get meal details from the API.
    func getMeals(id: String) async throws -> MealDetails {
        let path = "https://themealdb.com/api/json/v1/1/lookup.php?i=\(id)"
        //Creates url 'safe' path
        let url = URL(string: path.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")
        let request = URLRequest(url: url!)
        //Calls the API with the request and awaits the response.
        let (data, _) = try await URLSession.shared.data(for: request)
        //Decodes the data into the custom struct created from the API contract
        let decodedData = try JSONDecoder().decode(MealsDetailsDto.self, from: data)
        print("QQQ \(decodedData.meals.count)")
        return decodedData.meals.first!
    }
}
