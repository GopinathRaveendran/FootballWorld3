//
//  ViewController.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//


import AVKit
import AVFoundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var videoLayer: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let player  = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "FootballPlay", ofType: "mp4")!))
        let layer  = AVPlayerLayer(player: player)
        layer.frame = view.bounds
      layer.videoGravity = .resizeAspectFill
        self.view.layer.addSublayer(layer)
        player.volume = 0

        player.play()
        
    }

        // Do any additional setup after loading the view.
    }

//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)

//        let player  = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "FootballPlay", ofType: "mp4")!))
//        let layer  = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//      layer.videoGravity = .resizeAspectFill
//        view.layer.addSublayer(layer)
//        player.volume = 0
//
//        player.play()
//
//    }




