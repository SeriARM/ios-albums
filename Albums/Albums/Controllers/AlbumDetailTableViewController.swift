//
//  AlbumDetailTableViewController.swift
//  Albums
//
//  Created by Sergey Osipyan on 1/28/19.
//  Copyright © 2019 Sergey Osipyan. All rights reserved.
//

import UIKit

class AlbumDetailTableViewController: UITableViewController {

    var albumController: AlbumController?
    var album: Album? {
        didSet {
            updateViews()
        }
    }
    var tempSongs: [Album.Song] = []
    var songTableViewCellDelegate: SongTableViewCellDelegate?
    
    @IBOutlet weak var albumName: UITextField!
    @IBOutlet weak var artist: UITextField!
    @IBOutlet weak var genres: UITextField!
    @IBOutlet weak var coverURL: UITextField!
    
    @IBAction func saveButton(_ sender: Any) {
        
        
    }
    
    func updateViews() {
        
        if isViewLoaded == true {
        guard let album = album else { title = "New Album"
            return }
        
        albumName.text = album.name
        artist.text = album.artist
        genres.text = album.genres.joined(separator: ",")
        //coverURL.text = album.coverArt.
        title = album.name
        tempSongs = album.songs
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
