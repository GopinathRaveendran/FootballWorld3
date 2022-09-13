//
//  LoopingPlayer.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//

//import SwiftUI
//import AVFoundation
//import AVKit
//
//
//struct LoopingPlayer: UIViewRepresentable {
//    func makeUIView(context: Context) -> some UIView {
//        return PlayerUIView(frame: .zero)
//    }
//    
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//        
//    }
//    }
//
//
//class PlayerUIView: UIView {
//    private var playerLayer = AVPlayerLayer()
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        //Load Video
//        //var playerLayer: AVPlayer?
//        
//        let player  = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "FootballPlay", ofType: "mp4")!))
//        let layer  = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//        view.layer.addSublayer(layer)
//        
//        player.play()
//        //Setup Player
//        let player = AVPlayer(playerItem: playerItem)
//        playerLayer.player = player
//        playerLayer.videoGravity = .resizeAspectFill
//        layer.addSublayer(playerLayer)
//
//        //Loop
//        player.actionAtItemEnd = .none
//        NotificationCenter.default.addObserver(self, selector: #selector(rewindVideo(notification:)),  name: .AVPlayerItemDidPlayToEndTime, object: player.currentItem)
//
//        //Play
//        player.play()
//    }
//
//    @objc
//    func rewindVideo(notification: Notification) {
//        playerLayer.player?.seek(to: .zero)
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        playerLayer.frame = bounds
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}
//
//struct LoopingPlayer_Previews: PreviewProvider {
//    static var previews: some View {
//        LoopingPlayer()
//    }
//}
    
//import AVKit
//import AVFoundation
//import UIKit
//
//class LoopingPlayer: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Do any additional setup after loading the view.
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        let player  = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "FootballPlay", ofType: "mp4")!))
//        let layer  = AVPlayerLayer(player: player)
//        layer.frame = view.bounds
//      layer.videoGravity = .resizeAspectFill
//        view.layer.addSublayer(layer)
//        player.volume = 0
//        
//        player.play()
//    }
//
//
//}
