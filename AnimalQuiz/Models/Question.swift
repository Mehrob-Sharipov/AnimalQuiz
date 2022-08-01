//
//  Question.swift
//  AnimalQuiz
//
//  Created by Sharipov Mehrob on 31.07.2022.
//

enum ResponseType {
    case single
    case multiple
    case range
}


struct Question {
    let text : String
    let type : ResponseType
    let answers : [Answer]
}


extension Question {
    static func getQuestion ()-> [Question]{
        return [
            Question(text: "Какую пищю вы предпочитаете?", type: .single,
                         answers:[
                        Answer(text: "Стейк", type: .dog),
                        Answer(text: "Рыба", type: .cat),
                        Answer(text: "Морковь", type: .rabbit),
                        Answer(text: "Кукуруза", type: .turtle)
                ]
            ),
            Question(text: "Какую вы любите делать?", type: .multiple,
                         answers:[
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Есть", type: .turtle)
                ]
            ),
            Question(text: "Любите ли вы поездки на мащине?", type: .range,
                         answers:[
                        Answer(text: "Обожаю", type: .dog),
                        Answer(text: "Обожаю", type: .cat),
                        Answer(text: "Ненавижу", type: .rabbit),
                        Answer(text: "Ненавижу", type: .turtle)
                ]
            ),
                
        ]
    }
}
