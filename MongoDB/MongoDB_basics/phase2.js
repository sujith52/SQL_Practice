
db.createCollection("students")

db.students.insertOne({
  name:'kiran',
  isMarried:true
})

db.students.find({
  name:'kiran'
})

db.students.insertOne({
  _id:'STUD001',
  name:'student.1'
})

db.students.insertOne({
  _id:'STUD002',
  name:'kiran.1'
})

db.students.insertOne({
  name:'suji',
  world:['milky way galaxy','ji']
})

db.students.insertOne({
  name:'sujith',
  skills:['py','sql','mongo.js'],
  projects:{
    name:'projectA',
    status:'completed'
  }
})

db.students.find({name:'suji'})

db.students.find()

db.createCollection("st")

db.st.insertOne({
  name:'sujith',
  address:{
    city:'madanapalle',
    location:{
      state:'AP',
      country:'India'
    }
  }
})

db.st.find({
  'address.city':'madanapalle'
})

db.st.insertOne({
  _id:'001STA',
  name:'sujith',
  age:21,
  isStudent:true,
  skills:['py','c','sql','jsx','.html','.css','.js'],
  address:{
    city:'madanapalle',
    state:'AP',
    pincode:517325
  },
  projects:{
    project1:{
      name:'resume analyzer',
      technology:'python backend',
      status:'ongoing'
    }
  }
})

db.st.find({
  'address.state':'AP'
})