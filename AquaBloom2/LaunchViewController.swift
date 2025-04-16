//
//  LaunchViewController.swift
//  AquaBloom2
//
//  Created by Tanisha Boekstaaf on 4/15/25.
//

import UIKit
import AVKit
import AVFoundation

class LaunchViewController: UIViewController {
  
    let playerController = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        playVideo()
    }
    
    private func playVideo() {
        
        guard let path = Bundle.main.path(forResource: "Launch", ofType:"mp4") else {
            debugPrint("Launch.mp4 not found")
            return
        }
        
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        
        playerController.showsPlaybackControls = false
        playerController.player = player
        playerController.videoGravity = .resizeAspectFill
        
        NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: playerController.player?.currentItem)
        
        present(playerController, animated: false) {
            player.play()
        }
    }
    @objc func playerDidFinishPlaying(note: NSNotification) {
        
        print( "Method, video is finished *")
        
        playerController.dismiss(animated: false) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            // Only cast if you need access to custom properties/methods
            let landingVC = storyboard.instantiateViewController(withIdentifier: "LandingViewController")
            
            guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
                  let window = windowScene.windows.first else {
                return
            }
            
            window.rootViewController = landingVC
          
        }
    }
}
