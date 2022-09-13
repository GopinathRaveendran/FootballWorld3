//
//  MatchViewController.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//


   
import UIKit
import AudioToolbox


class MatchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
       
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    var matches: [Match] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Competition"
        FootballManager.fetchData { matches in
            self.matches = matches
            DispatchQueue.main.async {
                self.tableViewOutlet?.reloadData()
//             var footballManager = FootballManager.fetchData { match in
//                   print(match)
                    
                    

                }
    }
       
    


}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "MatchToDetail") {
            let detailMatchViewController = segue.destination as? DetailMatchViewController
            let indexPath = tableViewOutlet.indexPathForSelectedRow!
            let currentCellValue = tableViewOutlet.cellForRow(at: indexPath)! as UITableViewCell
            detailMatchViewController?.detail = matches[indexPath.row]
            
            
            
           
        }
       
    }
    
//}
    //extension MatchViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return matches.count
    }
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MatchTableViewCell", for: indexPath) as? MatchTableViewCell else {return UITableViewCell()}
        
      
        let match = matches[indexPath.row]
        cell.homeTeamLabel.text = match.homeTeam?.name
        cell.awayTeamLabel.text = match.awayTeam?.name
        cell.homeTeamCrestImageView.sd_setImage(with: URL(string: match.homeTeam?.crest ?? ""), placeholderImage: UIImage(named: "homeTeam.png"))
        cell.awayTeamCrestImageView.sd_setImage(with: URL(string: match.awayTeam?.crest ?? ""),placeholderImage: UIImage(named: "awayTeam.png"))
        cell.vsLabel.text = "vs"
        
        

        return cell
    }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                tableView.deselectRow(at: indexPath, animated: true)
                
                let row = indexPath.row
                print(matches[row])
            }
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
                return 1
            }


}


    
