//
//  HeaderObject.swift
//  Portable
//

import Foundation

/// Протокол объекта конфигурации заголовков таблицы/collection view
protocol HeaderObject {

    /// Метод получения идентификатора вьюшки, которая должна использоваться для отображения соответствующего заголовка
    ///
    /// - Returns: идентификатор вьюшки
    static func headerReuseIdentifier() -> String
    
    /// Метод получения имени nib заголовка
    ///
    /// - Returns: имя nib заголовка
    static func headerNibName() -> String
}

extension HeaderObject {
    
    /// Базовая реализация headerReuseIdentifier
    ///
    /// - Returns: возвращается строковое представление типа, реализующего протокол
    static func headerReuseIdentifier() -> String {
        return String(describing: self)
    }
    
    /// Базовая реализация headerNibName
    ///
    /// - Returns: возвращается строковое представление типа, реализующего протокол, но, если оно оканчивается на "Object", то этот суффикс обрезается
    static func headerNibName() -> String {
        
        let cellObjectSuffix = "Object"
        var nibName = String(describing: self)
        
        guard nibName.hasSuffix(cellObjectSuffix) else {
            return nibName
        }
        
        guard let rangeOfSuffix = nibName.range(of: cellObjectSuffix, options: .backwards, range: nil, locale: nil) else {
            return nibName
        }
        
        nibName.removeSubrange(rangeOfSuffix)
        return nibName
    }
}
