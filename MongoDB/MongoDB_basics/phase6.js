// db.show

db.students.insertMany([ 
{ name: "Sujith", age: 22, course: "CSE" },
{ name: "Rahul",  age: 22, course: "ECE" },
{ name: "Kiran",  age: 21, course: "CSE" },
{ name: "Arjun",  age: 25, course: "IT" }
])

db.students.deleteOne({
  name:'Arjun'
})

db.students.deleteOne({
  age:25
})

db.students.deleteOne({
  _id:ObjectId('6ac22544b6a20035cc789559')
})

db.students.deleteMany(
  {course:'CSE'}
)

db.students.deleteMany(
  {age:{$gte:22}}
)

db.students.deleteMany([
  {age:{$gt:22}},
  {course:'CSE'}
])

db.students.deleteMany({})

db.students.drop()

db.students.find()