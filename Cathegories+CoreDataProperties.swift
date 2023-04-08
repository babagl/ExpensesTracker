//
//  Cathegories+CoreDataProperties.swift
//  TrackerExpensive
//
//  Created by Abdoulaye Aliou SALL on 07/04/2023.
//
//

import Foundation
import CoreData


extension Cathegories {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cathegories> {
        return NSFetchRequest<Cathegories>(entityName: "Cathegories")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var nomdecathegorie: String?
    @NSManaged public var montant: Double
    @NSManaged public var cathegorieToDepense: Set<Depense>?
    var depense: [Depense]{
        let setOfdepense = cathegorieToDepense
        return setOfdepense!.sorted{
            $0.id < $1.id
        }
    }

}

// MARK: Generated accessors for cathegorieToDepense
extension Cathegories {

    @objc(addCathegorieToDepenseObject:)
    @NSManaged public func addToCathegorieToDepense(_ value: Depense)

    @objc(removeCathegorieToDepenseObject:)
    @NSManaged public func removeFromCathegorieToDepense(_ value: Depense)

    @objc(addCathegorieToDepense:)
    @NSManaged public func addToCathegorieToDepense(_ values: NSSet)

    @objc(removeCathegorieToDepense:)
    @NSManaged public func removeFromCathegorieToDepense(_ values: NSSet)

}

extension Cathegories : Identifiable {

}
