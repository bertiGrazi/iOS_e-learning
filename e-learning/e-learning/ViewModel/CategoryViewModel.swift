//
//  CategoryViewModel.swift
//  e-learning
//
//  Created by Grazi  Berti on 19/09/22.
//

import Foundation

class CategoryViewModel {
    var bussinessModel: CategoryProtocol = CategoryBussinessModel()
    
    func fetchCategoryList() -> [CategoryCourses] {
        return bussinessModel.fetchCategoryList()
    }
}
