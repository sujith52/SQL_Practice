db.students.insertMany([
{ name: "Sujith", course: "CSE", marks: 85 },
{ name: "Rahul",  course: "ECE", marks: 72 },
{ name: "Kiran",  course: "CSE", marks: 91 },
{ name: "Arun",   course: "MECH", marks: 65 },
{name:'sreeja', course:'CSE',marks:90}
])

db.students.aggregate([
  {
    $match:{
      course:'CSE'
    }
  }
])

db.students.aggregate([
  {
    $match:{
      marks:{$gt:80}
    }
  }
])

db.students.aggregate([
  {
    $match:{
      course:'CSE'
    }
  },
  {
    $sort:{
      marks: -1
    }
  }
])

db.students.aggregate([
  {
    $match:{
      course:'CSE'
    }
  },
  {
    $sort:{
      marks:-1
    }
  },
  {
    $limit:1
  }
])

db.students.aggregate([
  {
    $group:{
      _id:"$course",
      totalStudents:{$sum: 1}
    }
  }
])

db.students.aggregate([
  {
    $group:{
      _id:'$course', averageMarks:{$avg: '$marks'}
    }
  }
])

db.students.aggregate([
  {
    $group:{
      _id:'$course', maxMarks:{$max: '$marks'}
    }
  }
])

db.students.aggregate([
  {
    $group:{
      _id:'$course', minMarks:{$min: '$marks'}
    }
  }
])

db.students.aggregate([
  {
    $project:{
      _id:0,name:1,marks:1
    }
  }
])

db.students.aggregate([
  {
    $project:{
      _id:0,name:1,marks:1,
      passed:{$gte:['$marks',70]}
    }
  }
])

db.students.aggregate([
  {
    $match:{
      marks:{$gt:70}
    }
  },{
    $group:{
      _id:'$course',
      averagemarks:{$avg: "$marks"},
      totalStudents:{$sum:1}
    }
  },
  {
    $sort:{averagemarks:-1}
  }
])

db.students.aggregate([
  {
    $sort:{marks:-1}
  },
  {
    $skip:2
  }
])

db.students.aggregate([
  {
    $sort:{marks:-1}
  },
  {
    $limit:3
  }
])

db.students.aggregate([
  {
    $sort:{marks:-1}
  },
  {
    $skip:2
  },{
    $limit:2
  }
])

db.students.aggregate([
  {
    $match:{
      course:'CSE'
    }
  },{
    $count:"TotalCSEStudents"
  }
])

db.students.aggregate([
  {
    $match:{
    course:'CSE',
    marks:{$gt:80}
  }
  },{
    $count:"Total students"
  }
])

db.students.aggregate([
  {
    $sort:{
      marks:-1
    }
  },{$limit:5}
])

db.students.aggregate([
  {
    $addFields:{
      passed:{$gte:["$marks",70]}
    }
  }
])

db.students.aggregate([
  {
    $set:{
      passed:{$gte:["$marks",70]}
    }
  }
])

db.students.updateOne({name:'sreeja'},{
  $set:{
  skills:['python','sql','tailwindcss']}
})

db.students.aggregate([
  {
    $unwind:"$skills"
  }
])

db.students.aggregate([
  {
    $set:{
      "doublemarks":{
        "$multiply":['$marks',2]
      }
    }
  }
])

db.people.insertMany([
  {
    _id: 1,
    name: "Sujith",
    courseId: 101
},{
    _id: 2,
    name: "sreeja",
    courseId: 102
},{
    _id: 3,
    name: "latha",
    courseId: 101
}
])

db.courses.insertMany([
  {
    _id: 101,
    courseName: "Computer Science"
},
{
    _id: 102,
    courseName: "Human resources"
}
])

db.people.aggregate([
  {
    $lookup:{
      from:'courses',
      localField:'courseId',
      foreignField:'_id',
      as:'CourseDetails'
    }
  }
])
