// db.show


db.student.insertOne({
  name:'sujith kumar',
  age:22
})

db.student.find()


db.stud.insertOne({
  _id:101,
  name:'ravi',
  age:21,
  course:'Java'
})

db.stud.find({
  name:'ravi'
})

db.stud.insertOne({
  _id:201,
  name:'anil',
  age:24,
  course:'python'
})

db.stud.insertOne({
  name:'kiran',
  age:23,
  isStudent:false,
  skills:['java','spring','mongodb'],
  address:{
    city:'madanapalle',
    state:'karnataka'
  }
})


db.stud.find({
  name:'sujithss'
})

db.stud.insertMany([
  {
    name:'sujith',
    age:22,
    course:'CSE'
  },
  {
    name:'sreejas',
    age:22,
    course:'ECE'
  }
])

db.students.insertMany([
  {
    _id:101,
    name:'sujith',
    role:'web developer'
  },
  {
    name:'sreejas',
    role:'HR'
  },
  {
    name:'lathas',
    role:'data analysit'
  }
])

db.students.find()

db.students.find({
  role:'data analysit'
})

db.students.find({
  name:'sujith',
  role:'teacher'
})

db.students.insertMany([{
  name:'chandana',
  age:22,
  address:{
    city:'madanapalle',
    state:'AP'
  },
  skills:['java','python','react js']
}])

db.students.find({
  'address.city':'madanapalle'
})

db.students.find({
  skills:'react js'
})

db.students.find()

db.students.find({
  age:22
})


db.students.find({
  name:'sujith',
  age:22,
  'address.city':'madanapalle'
})

db.students.findOne({name:'sujith'})

db.students.findOne({
  name:'chandana'
})

db.students.findOne({
  age:22,
  skills:'react js'
})

db.students.findOne({
  'address.city':'madanapalle'
})

db.students.findOne({
  age:22,
  course:'CSE',
  'address.city':'madanapalle'
})

db.students.insertMany([
  {
    _id:101,
    name:'sujith',
    age:99,
    role:'web developer'
  },
  {
    name:'sreejas',
    age:22,
    role:'HR'
  },
  {
    name:'lathas',
    age:1000,
    role:'data analysit'
  }
])

db.students.find({
  age:{$gt: 22}
})

db.students.find({
  age:{$gte:22}
})

db.students.find({
  age:{$lt:50}
})

db.students.find({
  age:{$lte:22}
})

db.students.find({
  age:{$eq:22}
})

db.students.find({
  name:{$ne:'sujith'}
})
db.students.insertMany([
{
    name: "Sujith",
    age: 22,
    course: "CSE"
},

{
    name: "Rahul",
    age: 24,
    course: "ECE"
},

{
    name: "Kiran",
    age: 21,
    course: "CSE"
},

{
    name: "Arjun",
    age: 25,
    course: "IT"
}
])

db.students.find({
  age:{$gt:22}
})

db.students.find({
  age:{$gte:22}
})

db.students.find({
  age:{$lt:24}
})

db.students.find({
  age:{$lte:22}
})

db.students.find({
  age:{$lte:22}
})

db.students.find({
  course:{$ne:'CSE'}
})

db.students.find({
  age:{$gt:21},
  age:{$lt:25}
})

db.students.find({
  age:{$gte:22},
  course:{$ne:'CSE'}
})


db.students.find({
  course:{$in:['CSE','ECE']}
})

db.students.find({
  course:{$nin:['CSE','ECE']}
})

db.students.find({
  age:{$in:[22,24,26]}
})

db.students.find({
  age:{$nin:[22,26,40]}
})

db.students.find({
  course:{$in:['IT','CSE','MECH']}
})

db.students.find({
  age:{$in:[20,22,25]}
})

db.students.find({
  course:{$nin:['CSE','ECE']}
})

db.students.find({
  age:{$nin:[21,23,25]}
})

db.students.find({
  course:{$in:['CSE','ECE']},
  age:{$in:[22,24,25]}
})

db.students.find({
  age:{$in:[20,21,22]},
  course:{$nin:['ECE']}
})

db.students.find({
  $and:[
    {age:{$gt:22}},
    {course:'CSE'}
  ]
})

db.students.find({
  $or:[
    {course:'CSE'},
    {course:'ECE'}
  ]
})

db.students.find({
  age:{
    $not:{$gt:22}
  }
})

db.students.find({
  $nor:[
    {age:{$gt:22}},
    {course:'CSE'}
  ]
})

db.students.find({
  $nor:[
    {course:"CSE"},
    {age : {$gt:30}}
  ]
})

db.students.find({
  $and:[
    {course:'CSE'},
    {age:{$gt:21}}
  ]
})

db.students.find({
  $or:[
    {course:'CSE'},
    {course:'ECE'}
  ]
})

db.students.find({
  age:{$gte:22},
  $or:[
    {course:'CSE'},
    {course:'ECE'}
  ]
})

db.students.find({
  $or:[
    {
      age:{$gt:25},
      course:'CSE'
    },
    {
      age:25,
      course:'IT'
    }
  ]
})

db.students.find({},{
  name:1,
  course:1
})

db.students.find({},{
  name:0,
  course:0
})

db.students.find({},{
  _id:0
})

db.students.find({age:{$gt:22}},{
  name:1,
  course:1
})

db.students.find({},{
  _id:0,
  course:0,
})

db.students.find({
  age:{$gt:21},
  course:{$in:['CSE','ECE']}
},{
  name:1,
  course:1,
  age:1
})