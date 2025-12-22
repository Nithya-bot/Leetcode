DELETE p from Person p
JOIN person p2
on p.email = p2.email and p.id > p2.id
