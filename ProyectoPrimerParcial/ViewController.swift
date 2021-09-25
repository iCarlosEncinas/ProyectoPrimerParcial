//
//  ViewController.swift
//  ProyectoPrimerParcial
//
//  Created by David Encinas on 22/09/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var playerFondo = AVAudioPlayer()
    var playerAnimal = AVAudioPlayer()
    
    let urlFondo = Bundle.main.url(forResource: "fondo", withExtension: "wav")
    let urlPato = Bundle.main.url(forResource: "pato", withExtension: "wav")
    let urlCangrejo = Bundle.main.url(forResource: "cangrejo", withExtension: "wav")
    let urlSerpiente = Bundle.main.url(forResource: "serpiente", withExtension: "wav")
    
    let PatoSecuencia = [
        UIImage(named: "Pato_00000")!,
        UIImage(named: "Pato_00001")!,
        UIImage(named: "Pato_00002")!,
        UIImage(named: "Pato_00003")!,
        UIImage(named: "Pato_00004")!,
        UIImage(named: "Pato_00005")!,
        UIImage(named: "Pato_00006")!,
        UIImage(named: "Pato_00007")!,
        UIImage(named: "Pato_00008")!
    ]
    
    let CangrejoSecuencia = [
        UIImage(named: "Cangrejo_00000")!,
        UIImage(named: "Cangrejo_00001")!,
        UIImage(named: "Cangrejo_00002")!,
        UIImage(named: "Cangrejo_00003")!,
        UIImage(named: "Cangrejo_00004")!,
        UIImage(named: "Cangrejo_00005")!,
        UIImage(named: "Cangrejo_00006")!,
        UIImage(named: "Cangrejo_00007")!,
        UIImage(named: "Cangrejo_00008")!
    ]
    
    let SerpienteSecuencia = [
        UIImage(named: "Serpiente_00000")!,
        UIImage(named: "Serpiente_00001")!,
        UIImage(named: "Serpiente_00002")!,
        UIImage(named: "Serpiente_00003")!,
        UIImage(named: "Serpiente_00004")!,
        UIImage(named: "Serpiente_00005")!,
        UIImage(named: "Serpiente_00006")!,
        UIImage(named: "Serpiente_00007")!
    ]

    @IBOutlet weak var lblAnimal: UILabel!
    @IBOutlet weak var imgAnimal: UIImageView!
    @IBOutlet weak var imgSerpiente: UIImageView!
    @IBOutlet weak var imgPato: UIImageView!
    @IBOutlet weak var imgCangrejo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do{
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            playerFondo = try AVAudioPlayer(contentsOf: urlFondo!, fileTypeHint: AVFileType.wav.rawValue)
            playerFondo.numberOfLoops = -1
            playerFondo.volume = 0.2
            playerFondo.play()
        } catch let error {
            print(error.localizedDescription)
        }
        
        
        imgPato.animationImages = PatoSecuencia
        imgPato.animationDuration = 0.6
        imgPato.startAnimating()
        
        imgSerpiente.animationImages = SerpienteSecuencia
        imgSerpiente.animationDuration = 0.6
        imgSerpiente.startAnimating()
        
        imgCangrejo.animationImages = CangrejoSecuencia
        imgCangrejo.animationDuration = 0.6
        imgCangrejo.startAnimating()
    }

    @IBAction func doTapPato(_ sender: Any) {
        lblAnimal.text = "Duck"
        imgAnimal.animationImages = PatoSecuencia
        imgAnimal.animationDuration = 1
        imgAnimal.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlPato!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        }catch let error{
            print(error.localizedDescription)
        }
    }
    
    @IBAction func doTapSerpiente(_ sender: Any) {
        lblAnimal.text = "Snake"
        imgAnimal.animationImages = SerpienteSecuencia
        imgAnimal.animationDuration = 1
        imgAnimal.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlSerpiente!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        }catch let error{
            print(error.localizedDescription)
        }
    }
    @IBAction func doTapCangrejo(_ sender: Any) {
        lblAnimal.text = "Crab"
        imgAnimal.animationImages = CangrejoSecuencia
        imgAnimal.animationDuration = 1
        imgAnimal.startAnimating()
        
        do{
            playerAnimal = try AVAudioPlayer(contentsOf: urlCangrejo!, fileTypeHint: AVFileType.wav.rawValue)
            playerAnimal.play()
        }catch let error{
            print(error.localizedDescription)
        }
    }
}

