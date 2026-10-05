
use('test_db');

db.students.insertOne({
    name:'sujith',
    age:22,
    status:'Unemployed'
})

db.students.find()

db.students.insertMany([
    {
        _id:101,
        name:'sreejas',
        age:22,
        course:'full stack developemnt',
    },
    {
        _id:102,
        name:'lathas',
        age:22,
        course:'data analysis'
    }
])

db.students.find()

db.students.find({
    _id:102
})

db.students.find()

use('kodnest')

db.createCollection('mentors')

db.mentors.insertOne({
    name:'sandesh',
    tech:'java full stack'
})

db.mentors.insertMany([
    {
        name:'gamana',
        dob:'10-05-2002'
    },
    {
        emp_id:101,
        salary:50000,
        exp:2
    }
])

db.mentors.find({},{
    name:1,
    _id:0
})

db.mentors.find()

use('kodnest')

db.mentors.find()

db.employees.insertMany([
    {
        emp_id:101,
        emp_name:'sujith',
        emp_dep:'Dev',
        emp_sal:120000
    },
    {
        emp_id:102,
        emp_name:'sreejas',
        emp_dep:'HR',
        emp_sal:80000
    },
    {
        emp_id:103,
        emp_name:'lathas',
        emp_dep:'Data',
        emp_sal:90000
    },
    {
        emp_id:101,
        emp_name:'chandana',
        emp_dep:'Business',
        emp_sal:500000
    },
])

db.employees.updateOne(
    {emp_name:'sujith'},
    {$set:{emp_sal:160000}}
)

db.employees.updateOne(
    {emp_id:101},
    {$set:{
        emp_sal:160000
    }}
)

db.employees.find()

db.employees.updateOne(
  { emp_id:101}, 
  { $set: { status: 'active' } }         
);

db.employees.updateOne(
    {emp_name:'chandana'},
    {$unset: {
        emp_sal:''
    }}
)

db.employees.updateOne(
    {emp_name:'sujith'},
    {$inc:{emp_sal:1000}}
)

db.employees.updateMany(
    {emp_dep:'Dev'},
    {$inc:{emp_sal:1000}}
)

db.employees.updateMany(
    {},
    { $set:{ 
        emp_exp:2,
        emp_hobbies:['singing','carroms']}
    }
)

db.employees.updateOne({emp_name:'sujith'},
    {$push:
        {emp_hobbies:['reading novels']}
    }
)

db.employees.updateOne(
    {emp_id:101},
    {$unset: {emp_hobbies:''}
    }
)

db.employees.updateOne(
    {emp_id:101},
    {$set: {emp_hobbies:['movies','novels']}
    }
)

db.employees.updateOne(
    {emp_id:101},
    {$push: 
        {emp_hobbies:'writing novels'}
    }
)

db.employees.updateOne(
    {emp_id:101},
    {$pull: 
        {emp_hobbies:'writing novels'}
    }
)

db.mentors.find()

use('kodnest')

db.employees.deleteOne(
    {emp_name:'chandana'}
)

db.employees.insertMany([
    {
        emp_name:'cark',
        role:'superman'
    },
    {
        emp_name:'bruce wane',
        role:'batman'
    }
])

db.employees.deleteMany({emp_name:'cark'})

db.employees.deleteMany(
    {$gt:{emp_sal:100000}}
)

db.createCollection('dummy')

db.dummy.drop()

db.employees.find()

use('kodnest')

db.createCollection('trainers')

db.trainers.insertMany([
    {
        _id:101,
        name:'sujith',
        exp:3
    },
    {
        _id:102,
        name:'sreeja',
        exp:5
    },
    {
        _id:103,
        name:'sandessh',
        exp:10
    },
    {
        _id:104,
        name:'gamana',
        exp:4
    },
])

db.createCollection('tech')

db.tech.insertMany([
    {
        _id:10,
        name:'java',
        modules:['fundamentals','oops','jdbc','spring boot','marven']
    },
    {
        _id:20,
        name:'db',
        modules:['mysql','oracle','mongodb']
    },
    {
        _id:30,
        name:'front end',
        modules:['html','css','js','react','node js']
    }
])

db.trainers.find()

db.trainers.updateOne({_id:104},{$set:{
    tech_id:10
}})

