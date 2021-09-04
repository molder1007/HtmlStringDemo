//
//  ViewController.swift
//  HtmlStringDemo
//
//  Created by Molder on 2021/9/4.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewStackView: UIStackView!
    @IBOutlet weak var htmlTextView: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    var htmlText = "<b style=\"color:black; font-size:17px\">請參考<font style=\"color:orange; font-size:17px\">Stackover</font>，請參考<font style=\"color:orange; font-size:17px\">Stackover</font>。</b>"
    
    var htmlText2 = "&lt;p style=&quot;font-size: 17px;&quot;&gt;此範例得轉換方法是參考網路，請洽&lt;a href=&quot;https://stackoverflow.com/questions/25607247/how-do-i-decode-html-entities-in-swift&quot;&gt;Stackoverflow&lt;/a&gt;。&lt;/p&gt;"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        htmlTextView.attributedText = htmlText.convertHtmlToNSAttributedString
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell ?? TableViewCell()
        let decodeHtmlText = htmlText2.stringByDecodingHTMLEntities
        cell.htmlTextView.attributedText = decodeHtmlText.convertHtmlToNSAttributedString
        return cell
    }
}
