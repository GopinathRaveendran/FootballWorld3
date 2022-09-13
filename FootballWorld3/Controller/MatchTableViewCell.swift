//
//  MatchTableViewCell.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//

import UIKit
import SDWebImage

class MatchTableViewCell: UITableViewCell {

    @IBOutlet weak var homeTeamCrestImageView: UIImageView!
    
    @IBOutlet weak var awayTeamCrestImageView: UIImageView!
    @IBOutlet weak var homeTeamLabel: UILabel!
    @IBOutlet weak var vsLabel: UILabel!
    @IBOutlet weak var awayTeamLabel: UILabel!
    
    override func prepareForReuse() {
    homeTeamCrestImageView.image = nil
    awayTeamCrestImageView.image = nil
    homeTeamLabel.text = ""
   vsLabel.text = ""
    awayTeamLabel.text = ""
    }
    
    
    
    func setupUI(withDataFrom: Match) {
        
        homeTeamLabel.text = "Home Team:" + (withDataFrom.homeTeam?.name ?? "")
        awayTeamLabel.text = "Away Team:" + (withDataFrom.awayTeam?.name ?? "")
        vsLabel.text = "Vs"
        homeTeamCrestImageView.sd_setImage(with: URL(string: withDataFrom.homeTeam?.crest ?? ""))
        awayTeamCrestImageView.sd_setImage(with: URL(string: withDataFrom.awayTeam?.crest ?? ""))
        
        
        

    }

}

