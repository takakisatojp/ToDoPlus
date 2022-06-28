//
//  ToDo+CoreDataProperties.swift
//  ToDo+
//
//  Created by 佐藤貴輝 on 2021/11/20.
//
//

import Foundation
import CoreData


extension ToDo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ToDo> {
        return NSFetchRequest<ToDo>(entityName: "ToDo")
    }

    @NSManaged public var name_today: String?
    @NSManaged public var name_tomorrow: String?

}

extension ToDo : Identifiable {

}


