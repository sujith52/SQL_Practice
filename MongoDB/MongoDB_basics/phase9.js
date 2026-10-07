db.students.insertMany([
  { name: "Sujith", email: "sujith@gmail.com", age: 22 },
  { name: "Rahul", email: "rahul@gmail.com", age: 23 },
  { name: "Kiran", email: "kiran@gmail.com", age: 21 },
  {name:'sreeja', email:'sreejachinni@proton.me',age:22}
])

db.students.createIndex({email:1})

db.students.find({
  email:'sujith@gmail.com'
})

db.students.getIndexes()

db.students.dropIndex('email_1')

db.students.getIndexes()

db.students.createIndex({age:1})

db.students.getIndexes()

db.students.dropIndex('age_1')

db.students.createIndex(
  {email:1},
  {unique:true}
)

db.students.insertOne({
  name:'latha',
  email:'sujith@gmail.com'
})

db.students.createIndex(
  {
    email:1,
    age:1
  }
)

db.students.createIndex(
  {
    email:1,
    age:-1
  }
)

db.students.find({
  email:'sujith@gmail.com'
}).explain('executionStats')

