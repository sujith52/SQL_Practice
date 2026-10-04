db.show

db.students.insertOne({
  name:'sujith',
  age:22,
  course:'full stack',
  college:'ACEm'
})

db.students.updateOne(
  {name:'sujith'},
  {$set:{age:99}}
)

db.students.updateOne(
  {name:'sujith'},
  {$set:{
    age:99,
    course:'AI and ML',
    city:'bengaluru'
  }}
)

db.students.insertOne({
  name:'sreeja',
  age:22,
  role:'business analyst'
})

db.students.updateOne(
  {age:22},
  {$set:{
    city:'madnapalle'
  }}
)

db.students.updateOne(
  {name:'sreeja'},
  {$set:{
    city:'bengaluru'
  }}
)

db.students.insertMany([ 
{ name: "Sujith", age: 22, course: "CSE" },
{ name: "Rahul",  age: 22, course: "ECE" },
{ name: "Kiran",  age: 21, course: "CSE" },
{ name: "Arjun",  age: 25, course: "IT" }
])

db.students.updateMany(
  {course:'CSE'},
  {
    $set:{
      department:'Computer Science'
    }
  }
)

db.students.updateMany(
  {age:{$gt:22}},
  {$set:{
    isAdult: true
  }}
)

db.students.updateMany(
  {course:{
    $in:['CSE','ECE']
  }},
  {$set:{
    techniquality: true
  }}
)

db.students.updateMany(
  {course:'CSE'},
  {$set:{
    status:'Active'
  }}
)

db.students.updateMany(
  {age:{$gte:22}},
  {$set:{
    eligible: true
  }}
)

db.students.updateMany(
  {age:{$gt:23}},
  {$set:{
    category:'Senior'
  }}
)

db.students.updateMany(
  {course:{$in:['CSE','IT']}},
  {$set:{
    technical:true
  }}
)

db.students.updateMany(
  {},
  {$set:{
    country:'India'
  }}
)

db.students.updateMany({ 
  $or:[
    {course:'CSE'},
    {age:{$gte:24}}
  ]},
  {$set:{
    priority:'high'
  }}
)

db.students.insertMany([ 
{ name: "Sujith", age: 22, course: "CSE" },
{ name: "Rahul",  age: 22, course: "ECE" },
{ name: "Kiran",  age: 21, course: "CSE" },
{ name: "Arjun",  age: 25, course: "IT" }
])

db.students.updateOne(
  {name:'Sujith'},
  {$set:{
    temp:'delete me bro'
  }}
)

db.students.updateOne(
  {name:'Sujith'},
  {$unset:{
    temp:''
  }}
)

db.students.updateMany(
  {},{
    $set:{
      temp:'delete this thing man !'
    }
  }
)

db.students.updateMany(
  {},{
    $unset:{
      temp:''
    }
  }
)

db.students.updateOne(
  {name:'sujith'},
  {$unset:{course:''}}
)

db.students.updateOne(
  {name:'Rahul'},
  {$unset:{
    status:''
  }}
)

db.students.updateMany(
  {},{
    $unset:{
      temperoryfeild:''
    }
  }
)

db.students.updateMany(
  {age:{$gt:22}},
  {$unset:{
    temp:''
  }}
)

db.students.updateMany(
  {course:'CSE',
   age:{$gte:22}
  },{
    $unset:{
      internship:''
    }
  }
)

db.students.updateMany(
  {},
  {$inc:{
    age:1
  }}
)

db.students.updateMany(
  {},{$set:{ 
    credits:100,
    score:50
  }}
)

db.students.updateOne(
  {name:'Sujith'},
  {$inc:{
    credits:-10,
    score:10
  }}
)

db.students.updateMany(
  {course:'CSE'},{
    $inc:{
      basepoints:10
    }
  }
)

db.students.updateMany(
  {age:{$gt:22}},
  {$inc:{
    experience:1
  }}
)

db.students.updateMany(
  {name:'Sujith'},
  {$mul:{
    experience:6
  }}
)

db.students.updateMany(
  {course:'CSE'},
  {$set:{
    sal:10000
  }}
)

db.students.updateMany(
  {course:'CSE'},
  {$mul:{
    sal:1.10
  }}
)

db.students.updateMany(
  {name:'Rahul'},
  {$mul:{
    score:3
  }}
)

db.students.updateMany(
  {course:'CSE'},
  {$rename:{
    'sal':'salary'
  }}
)

db.students.updateOne(
  {name:'Sujith'},
  {$rename:{
    'name':'name of student'
  }}
)

db.students.updateMany(
  {course:'CSE'},
  {$rename:{
    'course':'department'
  }}
)

db.students.find()

