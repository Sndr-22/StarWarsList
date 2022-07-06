//
//  ViewController.swift
//  StarWarsList
//
//  Created by Sandra Cabeza Bravo on 14/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var starWarsCharactersList: StarWarsCharactersList?
    
    var connection = Connection()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getStarWarsListData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Personajes de StarWars"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 40.0
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomCell
        
        //LOADER
        if cell.customActivityIndicator.isAnimating{
            cell.customLabel.isHidden = true
        }else{
            cell.customLabel.isHidden = false
        }
        
        //Setup cell
        if (starWarsCharactersList?.results[indexPath.row]) != nil{
            cell.customLabel.text = starWarsCharactersList?.results[indexPath.row].name?.capitalized
            cell.customLabel.font = UIFont(name: "Starjedi", size: 16)
            cell.customActivityIndicator.stopAnimating()
            cell.customActivityIndicator.isHidden = true
        }
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "ShowDetailSegue", sender: indexPath)
            tableView.deselectRow(at: indexPath, animated: true)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailSegue"{
            if let detailVC = segue.destination as? DetailTableViewController, let indexPath = sender as? IndexPath{
                detailVC.characterName = starWarsCharactersList?.results[indexPath.row].name
                detailVC.characterBirth = starWarsCharactersList?.results[indexPath.row].birth_year
                detailVC.characterGender = starWarsCharactersList?.results[indexPath.row].gender
                detailVC.characterHeight = starWarsCharactersList?.results[indexPath.row].height
                detailVC.characterWeight = starWarsCharactersList?.results[indexPath.row].mass
                detailVC.characterHair = starWarsCharactersList?.results[indexPath.row].hair_color
                detailVC.characterEyes = starWarsCharactersList?.results[indexPath.row].eye_color
            }
        }
    }
    
    func getStarWarsListData(){
        connection.getCharactersList(){
                starWarsCharactersList in
                    
                if let starWarsListReceived = starWarsCharactersList{
                    //OK, set data to our array
                    self.starWarsCharactersList = starWarsListReceived
                }
            print("El array tiene: \(String(describing: self.starWarsCharactersList?.results.count)) elementos")//Prueba
        }
        DispatchQueue.main.async {
            self.listTableView.reloadData()
        }
    }
}

