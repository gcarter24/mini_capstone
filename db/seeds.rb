# Image.create!([
#   { url: "https://media.istockphoto.com/photos/xbox-one-picture-id472044719?k=6&m=472044719&s=612x612&w=0&h=M7Rq40BPpTKp2BZwOP0RQzPuwaXCXHndPIkuDiEuWbQ=", product_id: 14 },
#   { url: "https://media.istockphoto.com/photos/closeup-of-an-orange-sharpened-pencil-with-eraser-picture-id111911916?k=6&m=111911916&s=612x612&w=0&h=npaCjg-CEi1vFT085Ob4G7jNnM3ghLiSbYidJvZnRhg=", product_id: 2 },
#   { url: "https://media.istockphoto.com/photos/stylish-table-lamp-mockup-with-black-shade-and-gold-stand-on-white-picture-id1062811040?k=6&m=1062811040&s=612x612&w=0&h=XomwUtDi0p-EjGmimS0VDqCMF5-4ArA9GgwMz3HielY=", product_id: 7 },
#   { url: "https://media.istockphoto.com/photos/workspace-interior-with-computer-on-wooden-table-and-office-chair-picture-id1200643822?k=6&m=1200643822&s=612x612&w=0&h=Pv7fyQl0G-hQ4Sd6qgQClTcElE_WuIU5z87GrG1B-bA=", product_id: 4 },
#   { url: "https://media.istockphoto.com/photos/3d-rendering-of-cardboard-box-in-air-full-of-colorful-toy-bricks-are-picture-id1183336015?k=6&m=1183336015&s=612x612&w=0&h=Kbxy5OnGNSzDqhEO34HIwPXRXTGkXJHF1WVNKUskc5E=", product_id: 11 },
#   { url: "https://media.istockphoto.com/photos/modern-laptop-with-empty-screen-on-white-background-mockup-design-picture-id1182241805?k=6&m=1182241805&s=612x612&w=0&h=ynwW02nSQpJvF81rDNpRm0BTfR2IRSlD0qzT2UZkFPk=", product_id: 6 },
#   { url: "https://media.istockphoto.com/photos/flat-screen-lcd-or-oled-plasma-realistic-illustration-black-blank-hd-picture-id1208777082?k=6&m=1208777082&s=612x612&w=0&h=RS2vM8wncC1TFHVVBtF-tzRABGRpQsx49MSTVtxctZg=", product_id: 8 },
#   { url: "https://media.istockphoto.com/photos/twigs-and-sticks-picture-id182145527?k=6&m=182145527&s=612x612&w=0&h=3gA4VXpIcHTWDO22ij4yU0Dg2W22-9YKrRS04uCzsYo=", product_id: 10 },
#   { url: "https://media.istockphoto.com/photos/sony-playstation-2-video-game-console-picture-id497945952?k=6&m=497945952&s=612x612&w=0&h=Y9wvk2pA4-fiV6j0bwMBuqHaDU7JJreQXQgVJ4u-y_I=", product_id: 12 },
#   { url: "https://media.istockphoto.com/vectors/brown-wooden-chair-vector-id1190095810?k=6&m=1190095810&s=612x612&w=0&h=mYbimJ2N_M6Gyq_iVgKiJCkeyNHb-qR-nK2E-ZS3-cQ=", product_id: 1 },
#   { url: "https://media.istockphoto.com/photos/blue-modern-mid-drive-motor-e-bike-pedelec-with-electric-engine-picture-id1211537276?k=6&m=1211537276&s=612x612&w=0&h=BW4tt6YJrowWacbkbsRfTBmnYpCnVwRGt1UvpOgMlug=", product_id: 5 },
#   { url: "https://media.istockphoto.com/photos/burning-candle-in-glass-jar-succulent-and-notebook-on-wooden-close-picture-id1195997750?k=6&m=1195997750&s=612x612&w=0&h=LRN7Yhn3p0yvdlYcjvs3nYPJtE-cepYq6i60tmbVzIs=", product_id: 9 },
#   { url: "https://media.istockphoto.com/photos/nintendo-n64-with-goldeneye-007-game-picture-id458234027?k=6&m=458234027&s=612x612&w=0&h=SqZSirlFKnArWBFCzCstfug207p2srx3Jmb7Ke2IdPg=", product_id: 13 },
# ])
# Category.create!([
#   { name: "electronics" },
#   { name: "furniture" },
#   { name: "transportation" },
#   { name: "toys" },
#   { name: "fun" },
# ])
# Supplier.create!([
#   { name: "Target", email: "corporate@target.com", phone_number: "800-555-3939" },
#   { name: "Amazon", email: "jeffbezos@amazon.com", phone_number: "888-666-3782" },
#   { name: "WalMart", email: "samwalton@walmart.com", phone_number: "866-345-9087" },
# ])
# CartedProduct.create!([
#   { user_id: 1, product_id: 6, quantity: 2, status: nil, order_id: 6 },
#   { user_id: 1, product_id: 6, quantity: 2, status: nil, order_id: 6 },
#   { user_id: 1, product_id: 6, quantity: 2, status: nil, order_id: 6 },
#   { user_id: 1, product_id: 6, quantity: 2, status: nil, order_id: 6 },
#   { user_id: 1, product_id: 4, quantity: 2, status: nil, order_id: nil },
#   { user_id: 1, product_id: 4, quantity: 2, status: nil, order_id: nil },
#   { user_id: 1, product_id: 6, quantity: 2, status: nil, order_id: 6 },
# ])
# Product.create!([
#   { name: "Pencil", price: "1.0", description: "A writing utensil", inventory: nil, supplier_id: 3 },
#   { name: "Lamp", price: "47.0", description: "A thing you put in a room to bring light", inventory: nil, supplier_id: 3 },
#   { name: "Desk", price: "350.0", description: "A piece of furniture to sit and get work done", inventory: nil, supplier_id: 2 },
#   { name: "Toy", price: "1.0", description: "Something fun", inventory: nil, supplier_id: 3 },
#   { name: "XBOX", price: "300.0", description: "This product is awesome", inventory: nil, supplier_id: 3 },
#   { name: "Computer", price: "1500.0", description: "A device used to get an immense amount of work done", inventory: nil, supplier_id: 2 },
#   { name: "Television", price: "500.0", description: "Something you watch for movies and television shows", inventory: nil, supplier_id: 2 },
#   { name: "Stick", price: "3.0", description: "Brown and sticky", inventory: nil, supplier_id: 2 },
#   { name: "Playstation ", price: "200.0", description: "One of the first next generation video game consoles", inventory: nil, supplier_id: 2 },
#   { name: "Chair", price: "35.0", description: "A place to rest your legs or take a break", inventory: nil, supplier_id: 1 },
#   { name: "Bike", price: "300.0", description: "A slow form of wheeled transportation", inventory: nil, supplier_id: 1 },
#   { name: "Candle", price: "20.0", description: "A nice smelling container of wax", inventory: nil, supplier_id: 1 },
#   { name: "Nintendo 64", price: "150.0", description: "One of the 1st next generation video game consoles", inventory: nil, supplier_id: 1 },
# ])
# CategoryProduct.create!([
#   { product_id: 14, category_id: 1 },
#   { product_id: 6, category_id: 1 },
#   { product_id: 8, category_id: 1 },
#   { product_id: 12, category_id: 1 },
#   { product_id: 13, category_id: 1 },
#   { product_id: 5, category_id: 3 },
#   { product_id: 1, category_id: 2 },
#   { product_id: 4, category_id: 2 },
#   { product_id: 12, category_id: 5 },
#   { product_id: 13, category_id: 5 },
# ])
# Order.create!([
#   { user_id: 2, subtotal: "1.0", total: "1.09", tax: "0.09" },
#   { user_id: 2, subtotal: "300.0", total: "327.0", tax: "27.0" },
#   { user_id: 2, subtotal: "1800.0", total: "1962.0", tax: "162.0" },
#   { user_id: 2, subtotal: "1800.0", total: "1962.0", tax: "162.0" },
#   { user_id: 2, subtotal: "600.0", total: "654.0", tax: "54.0" },
#   { user_id: 1, subtotal: "300.0", total: "327.0", tax: "27.0" },
# ])
# User.create!([
#   { name: nil, email: "dan@levy.com", password_digest: "$2a$12$pVJ3EIuaSq48IZ4f5M784.hredQKaUQstnrSrRiELvSM8sRYO2.ha", admin: false },
#   { name: "person", email: "person@people.com", password_digest: "$2a$12$bsnGW0US3HXhyKwXT0PIxejO391fq4bVITRKBa1UpnDmD.V7.VioC", admin: true },
# ])
