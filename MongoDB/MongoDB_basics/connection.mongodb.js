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