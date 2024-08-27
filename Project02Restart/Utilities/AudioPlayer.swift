//
//  AudioPlayer.swift
//  Project02Restart
//
//  Created by Kayque Dos anjos on 27/08/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path = Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not pay a sound file.")
        }
    }
}
