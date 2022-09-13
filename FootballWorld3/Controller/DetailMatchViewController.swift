//
//  DetailMatchViewController.swift
//  FootballWorld3
//
//  Created by gopinath.raveendran on 13/09/2022.
//

import UIKit

class DetailMatchViewController: UIViewController {

    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var competitionLabel: UILabel!
    @IBOutlet weak var seasonStartDateLabel: UILabel!
    @IBOutlet weak var seasonEndDateLabel: UILabel!
    @IBOutlet weak var area: UILabel!
    @IBOutlet weak var competition: UILabel!
    @IBOutlet weak var seasonStartDate: UILabel!
    @IBOutlet weak var seasonEndDate: UILabel!
    
    
    var detail: Match?
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        areaLabel.text = "Area: "
        area.text =  (detail?.area?.name ?? "")
        competitionLabel.text = "Competition: "
        competition.text = (detail?.competition?.name ?? "")
        seasonStartDateLabel.text = "Season start date: "
        seasonStartDate.text = (detail?.season?.startDate ?? "")
        seasonEndDateLabel.text = "Season end date: "
        seasonEndDate.text = (detail?.season?.endDate ?? "")
        
        
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
