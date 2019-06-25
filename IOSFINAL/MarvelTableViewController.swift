//
//  MarvelTableViewController.swift
//  IOSFINAL
//
//  Created by User16 on 2019/6/23.
//  Copyright © 2019 User16. All rights reserved.
//

import UIKit

import UIKit


import UIKit

class MarvelTableViewController: UITableViewController {
    
    var hero1 = [Hero(name: "鋼鐵人", id: "東尼·史塔克", imageName: "1", info: "《鋼鐵人》（英語：Iron Man）是一部2008年上映的美國超級英雄電影，由強·法夫洛執導，馬克·弗格斯、霍克·奧斯比、艾特·馬柯姆與麥特·霍洛威共同編劇，劇情圍繞著漫威漫畫旗下超級英雄鋼鐵人展開。該片由漫威工作室製作，派拉蒙影業負責發行，為漫威電影宇宙系列電影中的第一部作品。《鋼鐵人》的主演包含小勞勃·道尼、泰倫斯·霍華、傑夫·布里吉、肖恩·托布及葛妮絲·派特洛等人，劇情講述身兼企業家與發明家的東尼·史塔克（道尼飾演）打造了一套鋼鐵人動力服，進而成為擁有先進技術的超級英雄鋼鐵人。"),Hero(name: "無敵浩克", id: "布魯斯·班納", imageName: "a2", info : "《無敵浩克》（英語：The Incredible Hulk，香港譯《新變形俠醫》，中國大陸譯《無敵浩克》）是一部於2008年上映的美國超級英雄電影，根據漫威漫畫旗下角色浩克故事改編，漫威工作室與環球影業聯合製作。該片為漫威電影宇宙系列中的第二部作品。為路易斯·賴托瑞執導，塞克·潘編劇。艾德華·諾頓、麗芙·泰勒、提姆·羅素、提姆·布雷克·尼爾森、泰·布利爾與威廉·赫特等人主演。。"),Hero(name: "雷神索爾", id :"索爾", imageName: "3", info : "《雷神索爾》（英語：Thor，中國大陸譯《雷神》，香港譯《雷神奇俠》）是一部於2011年上映的美國超級英雄電影，由肯尼斯·布萊納執導，艾許利·米勒、柴克·史坦茲與唐·佩恩編劇，劇情圍繞著漫威漫畫旗下超級英雄索爾展開。該片由漫威工作室製作，並由派拉蒙影業發行，為漫威電影宇宙系列中的第四部作品。《雷神索爾》的主演包含克里斯·漢斯沃、娜塔莉·波曼、湯姆·希德斯頓、史戴倫·史柯斯嘉、科魯姆·費奧瑞、雷·史蒂文森、伊卓瑞斯·艾巴、凱特·丹寧絲、蕾妮·羅素與安東尼·霍普金斯等人，劇情講述阿斯嘉的儲君索爾在重新點燃一場古老戰役後，被剝奪一切並放逐到地球，其弟洛基企圖趁機篡奪王位，索爾必須證明自己配得上雷神之鎚，重拾雷神的力量。"),Hero(name: "美國隊長", id: "史蒂芬·羅傑斯 ", imageName: "4", info: "《美國隊長:復仇者先鋒》（英語：Captain America: The First Avenger）是一部於2011年上映的美國超級英雄電影，根據漫威漫畫旗下超級英雄美國隊長故事改編，漫威工作室製作，派拉蒙影業負責出品及發行[a]。該片為漫威電影宇宙系列中的第5部作品，亦為最後一部由派拉蒙影業製作及發行的漫威電影宇宙的作品。喬·約翰斯頓執導，克里斯多佛·馬庫斯與史蒂芬·麥費利共同編劇，主演包含克里斯·伊凡、湯米·李·瓊斯、雨果·威明、海莉·艾特沃、賽巴斯汀·斯坦、多米尼克·庫珀、尼爾·麥克唐納、德瑞克·路克及史丹利·圖奇。背景主要設定於二次世界大戰期間，劇情講述史蒂芬·羅傑斯的故事：史蒂芬·羅傑斯是一位來自布魯克林的體弱男孩，被注入血清改造成超級戰士美國隊長，且他必須奮力阻止紅骷髏以「宇宙魔方」來統治世界的陰謀。"),Hero(name: "蟻人", id: "史考特·朗恩", imageName: "a5", info: "蟻人》（英語：Ant-Man，香港譯《蟻俠》，中國大陸譯《蟻人》）是一部於2015年上映的美國超級英雄電影，改編自漫威漫畫的同名漫畫書。由漫威工作室製作，華特迪士尼影業發行。本片為漫威電影宇宙系列的第十二部電影（第二階段的最後一部）。派頓·瑞德執導，保羅·路德飾演蟻人，麥可·道格拉斯飾演漢克·皮姆；其他演員包含寇瑞·史托爾、伊凡潔琳·莉莉、麥可·潘納、巴比·卡納佛、T.I.、伍德·哈瑞斯、茱蒂·葛瑞兒及大衛·達斯馬齊恩等。"),Hero(name: "奇異博士", id: "史蒂芬·史傳奇", imageName: "6", info: "《奇異博士》（英語：Doctor Strange）是一部2016年美國超級英雄電影，改編自漫威漫畫旗下的同名漫畫人物。本片為漫威影業製作、華特迪士尼工作室電影發行，漫威電影宇宙的第十四部電影。由史考特·德瑞森執導[7]，德瑞森、強·史派茲[8]與C·羅柏·卡吉爾負責編劇。電影主演包括班奈狄克·康柏拜區、蒂妲·史雲頓、奇維托·艾吉佛、邁茲·米克森、黃凱旋、麥可·斯圖巴、班傑明·布萊特、史考特·艾金斯和瑞秋·麥亞當斯。"),Hero(name: "驚奇隊長", id: "卡蘿·丹佛斯", imageName: "7", info: "驚奇隊長》（英語：Captain Marvel，香港譯《Marvel隊長》，中國大陸譯《驚奇隊長》）是一部於2019年上映的美國超級英雄電影，劇情改編自漫威漫畫角色卡蘿·丹佛斯。漫威工作室製片，華特迪士尼工作室電影負責發行，本片為漫威電影宇宙系列的第二十一部電影。安娜·波頓和瑞安·弗雷克執導，並與梅格·雷法芙、妮可·帕爾曼、吉妮瓦·羅伯森-多瑞、莉茲·弗拉夫和卡莉·門施共同編劇。由布麗·拉森、山繆·傑克森、班·曼德森、吉蒙·韓蘇、李·培斯、拉沙納·林奇、嘉瑪·陳、安妮特·班寧、克拉克·格雷格和裘德·洛主演。背景設定在1990年代，講述卡蘿·丹佛斯在地球陷入兩個外星人世界的宇宙戰爭之間後，成為驚奇隊長。該片為漫威電影宇宙的首部女英雄獨立電影。本片開頭標誌特效所出現角色全部改為已逝世的史丹·李並紀念他。")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Configure the cell...
        
        return hero1.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath)
        let hero = hero1[indexPath.row]
        cell.textLabel?.text = hero.name
        cell.detailTextLabel?.text = hero.id
        cell.imageView?.image = UIImage(named: hero.imageName)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let heroDetailViewController = segue.destination as? heroDetailViewController,
            let row = tableView.indexPathForSelectedRow?.row{
            heroDetailViewController.hero2 = hero1[row]
        }
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
