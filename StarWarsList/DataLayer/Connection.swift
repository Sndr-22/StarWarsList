//  Connection.swift

import Foundation

class Connection{
    //URL for request
    let baseUrlString = "https://swapi.dev/api/people"
    
    //Get data from API method
    func getCharactersList(completion: @escaping (_ charactersList: StarWarsCharactersList?)-> Void){
        guard let url = URL(string: baseUrlString) else{
            DispatchQueue.main.async {
                completion(nil)
            }
            return
        }
        let urlSession = URLSession(configuration: URLSessionConfiguration.default) //Investigar
        let task = urlSession.dataTask(with: url){
            data, response, error in
            
            if error != nil{
                DispatchQueue.main.async { completion(nil) }
                return
            }
            DispatchQueue.main.async {
                let charactersList = StarWarsCharactersList(withJsonData: data)
                completion(charactersList)
            }
        }
        task.resume()
    }
}
