db = db.getSiblingDB("admin");

db.createUser({
  user: "admin",
  pwd: "PwdKeyforMongo", // Replace with a secure password
  roles: [
    { role: "root", db: "admin" }
  ]
});
