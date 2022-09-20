//
//  CategoryBussinessModel.swift
//  e-learning
//
//  Created by Grazi  Berti on 19/09/22.
//

import Foundation
import UIKit

class CategoryBussinessModel: CategoryProtocol {
    func fetchCategoryList() -> [CategoryCourses] {
        return [
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
            CategoryCourses(imageCategory: .init(systemName: "studentdesk") ?? UIImage(), nameCategory: "Matemática", numberOfClasses: "13 Aulas"),
        ]
    }
}
