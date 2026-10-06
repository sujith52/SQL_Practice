db.students.insertMany([
{ name: "Sujith", age: 22, marks: 85 },
{ name: "Rahul",  age: 24, marks: 72 },
{ name: "Kiran",  age: 21, marks: 91 },
{ name: "Arun",   age: 23, marks: 65 },
{name:'sreeja',age:22,marks:90}
])

db.students.find()

db.students.find().sort({age:1})

db.students.find().sort({age:-1})

db.students.find().sort({marks:1})

db.students.find().sort({marks:-1})

db.students.find().sort({name:1})

db.students.find().sort({name:-1})


db.students.find().sort({
  age:1,
  marks:-1
})

db.students.find().limit(3)

db.students.find().skip(2)

db.students.find().sort({age:-1}).limit(3)

db.students.find().limit(5)

db.students.find().skip(5)

db.students.find().skip(10).limit(5)

db.students.find().sort({marks:-1}).limit(3)

db.students.find().sort({marks:-1}).skip(5).limit(5)

db.students.countDocuments()

db.students.countDocuments({
  name:'Sujith'
})

db.students.countDocuments({
  age:{$gt:22}
})

db.students.countDocuments({
  marks:{$gte:80}
})

db.students.countDocuments()

db.students.insertMany([
{ name: "Sujith", age: 22, marks: 85,course: "CSE" },
{ name: "Rahul",  age: 24, marks: 72,  course: "ECE" },
{ name: "Kiran",  age: 21, marks: 91,course: "CSE" },
{ name: "Arun",   age: 23, marks: 65,   course: "MECH" },
{name:'sreeja',age:22,marks:90,  course: "ECE"}
])

db.students.distinct("course")

db.students.distinct("name")

db.students.distinct("course",{
  age:{$gt:23}
})

db.students.insertOne(
  {
    name: "Suj",
    skills: ["Python", "SQL", "MongoDB"]
 }
)

db.students.find({
  skills:{
    $all:['SQL']
  }
})

db.students.find({
  skills:{
    $size:3
  }
})

db.students.insertOne(
  {
    name: "Sujith",
    projects: [
        {
            name: "Resume Analyzer",
            year: 2026,
            score: 90
        },
        {
            name: "Restaurant App",
            year: 2025,
            score: 75
        }
    ]
}
)

db.students.find({
  projects:{
    $elemMatch:{
      year:2026,
      score:{$gte:80}
    }
  }
})

db.students.find({
  skills:{
    $all:['Python','MongoDB']
  }
})

db.students.find({
  skills:{
    $size:3
  }
})

db.students.find({
  skills:{
    $all:['Java','SQL']
  }
})

db.students.find({
  projects:{
    $elemMatch:{
      year:2026,
      score:{$gt:80}
    }
  }
})

db.students.insertMany([
{ name: "Sujith", age: 22, phone: "9876543210" },
{ name: "Rahul", age: 23 },
{ name: "Kiran", age: 21, phone: "9123456780" }
])

db.students.find({
  phone:{
    $exists:true
  }
})

db.students.find({
  phone:{$exists: false}
})

db.students.updateOne({name:'Rahul'},{
  $set:{phone:null}
})

db.students.find({
  phone:{
    $exists:true
  }
})

db.students.insertOne(
  {
    name: "Sujith kumar",
    age: 22,
    skills: ["Python", "SQL"],
    active: true
}
)

db.students.find({
  age:{$type: 'number'}
})

db.students.find({
  active:{$type: 'bool'}
})

db.students.find({
  skills:{$type:'array'}
})

db.students.find({
  name:{$type: 'string'}
})

db.students.find({
  phone:{$type:'null'}
})

