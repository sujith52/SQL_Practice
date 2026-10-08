db.students.insertOne({
  name:'sujith',
  age:22,
  courseid:101
})

db.courses.insertOne({
  cour_id :101,
  course_name:'computer science',
  duration: '4 years' 
})

db.students.aggregate([
  {
    $lookup:{
      from:'courses',
      localField:'courseid',
      foreignField:'cour_id',
      as:'course details'
    }
  }
])

db.students.insertMany([
  {name:'sujith',age:22},
  {name:'sreeja',age:22},
  {name:'latha',age:22}
])

db.students.find()

db.students.find().pretty()

let res = db.students.find()

db.students.find().forEach(student =>{
  print(student.name)
})

let stdArr = db.students.find().toArray()
print(stdArr[1])

print(stdArr[0].name)

let cursor = db.students.find()

if(cursor.hasNext()){
  printjson(cursor.next())
}

let cur = db.students.find().sort({name:-1}).limit(2)

print(cur)

let ages = db.students.find({age:22})
let counts = ages.count()

print(counts)
