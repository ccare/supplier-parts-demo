
Customer
id
Str firstname
 surname
 title
 addr
 
Address address
 addr1
 addr2
 addr3
 city
 postcode

Supplier
 sid int
 name
 addr
 
part
 pid
 name
 Color color
 double weight
 addr
 
OrderLine
 sid 
 pid 
 qty

Order
 cid
 shipdate
 orderDate
 1..N Orderline
 
 