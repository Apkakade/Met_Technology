//
//  ExcerciseList.swift
//  Met_Assignment
//
//  Created by Apple on 22/03/22.
//

import Foundation
struct ExcerciseModelStructs: Decodable {
    var currentdate : String
    var data : [ExcerciseData]
    var status : Int
    
}

struct ExcerciseData : Decodable
{
    var date : String
    var data : [ExcerciseData1]
}

struct ExcerciseData1 : Decodable
{
    var id : Int
    var schedulId : Int
    var userId : Int
    var completedOn : String
    var currentDate : String
    var workouts : workoutsObj!
}
struct workoutsObj: Decodable
{
    var workoutDetails : workoutDetails!
    var stages : [ExcerciseData2]
}
struct workoutDetails: Decodable
{
    var workoutDetails : String
    var workoutName : String
    var day : String
    var inComplete : String
}
struct ExcerciseData2: Decodable
{
    var id : Int
    var mainExerciseName : String
    var exerciseSets : Int
    var exerciseList : [ExcerciseData3]
    
}
struct ExcerciseData3: Decodable
{
    
    var exerciseId : Int
    var name : String
    var setReps : String
    var sort : Int
}

