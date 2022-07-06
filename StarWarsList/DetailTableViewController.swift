//
//  DetailTableViewController.swift
//  StarWarsList
//
//  Created by Sandra Cabeza Bravo on 1/7/22.
//

import UIKit

class DetailTableViewController: UIViewController {
    //Variables
    var characterName: String?
    var characterBirth: String?
    var characterGender: String?
    var characterHeight: String?
    var characterWeight: String?
    var characterHair: String?
    var characterEyes: String?
    var characterFilms: String?
    var receivedCharacter: StarWarsCharacter?
    
    
    //Etiquetas descriptivas
    @IBOutlet weak var nameTittle: UILabel!
    @IBOutlet weak var birthYearTittle: UILabel!
    @IBOutlet weak var genderTittle: UILabel!
    @IBOutlet weak var heightTittle: UILabel!
    @IBOutlet weak var weightTittle: UILabel!
    @IBOutlet weak var hairColorTittle: UILabel!
    @IBOutlet weak var eyeColorTittle: UILabel!
    @IBOutlet weak var filmsTittle: UILabel!
    //Etiquetas datos
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var hairColorLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var filmsLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        //Configurar estética de las etiquetas descriptivas
        nameTittle.font = UIFont(name: "Starjedi", size: 10)
        birthYearTittle.font = UIFont(name: "Starjedi", size: 10)
        genderTittle.font = UIFont(name: "Starjedi", size: 10)
        heightTittle.font = UIFont(name: "Starjedi", size: 10)
        weightTittle.font = UIFont(name: "Starjedi", size: 10)
        hairColorTittle.font = UIFont(name: "Starjedi", size: 10)
        eyeColorTittle.font = UIFont(name: "Starjedi", size: 10)
        filmsTittle.font = UIFont(name: "Starjedi", size: 10)
        title = "Datos del personaje"
        
        //configurar estética etiquetas datos
        nameLabel.font = UIFont(name: "Starjedi", size: 10)
        birthYearLabel.font = UIFont(name: "Starjedi", size: 10)
        genderLabel.font = UIFont(name: "Starjedi", size: 10)
        heightLabel.font = UIFont(name: "Starjedi", size: 10)
        weightLabel.font = UIFont(name: "Starjedi", size: 10)
        hairColorLabel.font = UIFont(name: "Starjedi", size: 10)
        eyeColorLabel.font = UIFont(name: "Starjedi", size: 10)
        filmsLabel.font = UIFont(name: "Starjedi", size: 10)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = characterName
        birthYearLabel.text = characterBirth
        genderLabel.text = characterGender
        heightLabel.text = characterHeight
        weightLabel.text = characterWeight
        hairColorLabel.text = characterHair
        eyeColorLabel.text = characterEyes
       
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
