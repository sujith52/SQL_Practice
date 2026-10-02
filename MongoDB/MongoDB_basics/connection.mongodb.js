use("practiceDB");

db.students.insertMany([
    {
        name: "Sujith",
        age: 22,
        branch: "CSE"
    },
    {
        name: "Rahul",
        age: 21,
        branch: "ECE"
    },
    {
        name: "Priya",
        age: 22,
        branch: "CSE"
    }
]);

db.students.find();

db

use("college")

db

db.createCollection("students")

// show collections

db.students.insertMany(
  [
    {
      _id:1,
      name:'sujith',
      age:22,
      branch:'cse'
    }
  ]
)

db.createCollection("employees")
db.employees.insertMany([
  {
    _id:101,
    name:'sujith kumar g',
    age:22,
    role:'Developer'
  }
])

db.employees.insertMany([
  {
    _id:102,
    name:'sreeja',
    age:22,
    role:'Business analyst'
  },
  {
    _id:103,
    name:'latha',
    age:22,
    role:'data analyst'
  }
])

db.employees.find()

db.show

db.createCollection("gits")

db.gits.insertMany([
  {
    _id:1,
    title:'emperor domination',
    author:'immortal emperor bai xu'
  }
])

db.gits.find()

// use("college")

// db

db.createCollection("students")

db.students.insertMany([
    {
        _id: 1,
        name: "Sujith",
        age: 22,
        branch: "CSE"
    },
    {
        _id: 2,
        name: "latha",
        age: 21,
        branch: "ECE"
    }
])

// db.students.find()



db.students.insertMany([{
  _id:201,
  name:'ravi kiran',
  age:32,
  course:'data analysis',
  isActive:true
}])

// db.students.find()

db.students.insertOne({
  name:'kiran',
  adress:{
    city:'bangalore',
    state:'karnataka'
  }
})

// db.students.find()

db.students.insertOne({
  _id:1001,
  name:'sujith',
  skills:['python','sql','mongodb','django']
})

// db.students.find()

db.students.insertOne({
  _id:301,
  name:'sujith gavathakatla',
  age:22,
  isStudent:true,
  skills:['python','sql','mongodb'],
  address:{
    city:'madanapalle',
    state:'andhra pradesh'
  }
})

db.students.find()