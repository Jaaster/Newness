//
//  SongCellVC.swift
//  Newness
//
//  Created by Marcus Hidalgo on 6/12/18.
//  Copyright © 2018 Marcus Hidalgo. All rights reserved.
//
import UIKit

protocol SongCellDelegate {
    func didTapViewBtn(url: String)
}

class SongCellVC: UITableViewCell {

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var composerLbl: UILabel!
    
    var songTitle: SongData!
    var songComposer: SongData!
    var delegate: SongCellDelegate?
    
    func setDetails(title: SongData, composer: SongData) {
        songTitle = title
        songComposer = composer
        
        titleLbl.text = title.title
        composerLbl.text = composer.composer
    }

    @IBAction func viewBtnTapped(_ sender: Any) {
        delegate?.didTapViewBtn(url: songTitle.url)
    }
}
