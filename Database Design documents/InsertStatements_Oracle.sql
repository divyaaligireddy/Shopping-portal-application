/*-----  CUSTOMER table -----*/
INSERT INTO Customer (CustomerID, Name, Email, Street, City,State,ZipCode, Password)
VALUES (111,'Ram','ram@gmail.com','265 Buckhead', 'Atlanta','GA',30338,'Y8RAM1');

INSERT INTO Customer (CustomerID, Name, Email, Street, City,State,ZipCode, Password)
VALUES (112,'Rohan','rohan@gmail.com','255 Lawrencevile', 'Bangalore','KA',30339,'P8KAM1');

INSERT INTO Customer (CustomerID, Name, Email, Street, City,State,ZipCode, Password)
VALUES (113,'Yash','yash@gmail.com','465 Sandy Springs', 'Atlanta','GA',40338,'YWAAM1');

INSERT INTO Customer (CustomerID, Name, Email, Street, City,State,ZipCode, Password)
VALUES (114,'Aishwarya','aish@gmail.com','965 Dunwoody', 'Boston','MA',30338,'QW8AM1');

INSERT INTO Customer (CustomerID, Name, Email, Street, City,State,ZipCode, Password)
VALUES (115,'Kareena','kar@gmail.com','765 Downtown', 'Atlanta','GA',30338,'20NMM1');



/*-----  PRODUCT table -----*/
INSERT INTO Product (ProductID, ProductName, Price_inDollars, Discount_inDollars, ProductSize_inPounds,Dimensions_inInches,ShippingWeight_inPounds, ModelNumber,Description,Image,Manufacturer)
VALUES (211, 'CESAR Dry Dog Food', 17.99,15,'4','4.2 x 9.5 x 15' ,5 , ' 10145373 ', 'Give your dog a seat at the dinner table with CESAR Filet Mignon Flavor With Spring Vegetables Dry Dog Food. Made with real beef as the first ingredient, this gourmet dog food features tender, meaty pieces and vegetables that will make your dog dance around their bowl come dinnertime','Image','Cesar');

INSERT INTO Product (ProductID, ProductName, Price_inDollars, Discount_inDollars, ProductSize_inPounds,Dimensions_inInches,ShippingWeight_inPounds, ModelNumber,Description,Image,Manufacturer)
VALUES (212, 'Ideal Balance Large Breed Natural Chicken and Brown Rice Recipe Dry Dog Food ',	48.59,10,'25','23.6 x 15.8 x 5.7','30', '2281', 'Hill’s Ideal Balance Large Breed Natural Chicken and Brown Rice Recipe Adult dog food provides natural ingredients perfectly balanced for large breed dogs','Image','Hills');

INSERT INTO Product (ProductID, ProductName, Price_inDollars, Discount_inDollars, ProductSize_inPounds,Dimensions_inInches,ShippingWeight_inPounds, ModelNumber,Description,Image,Manufacturer)
VALUES (213,'Wellness CORE Natural Grain Free Dry Dog Food', 12.11,10,'3.5' ,'8.8 x 3.8 x 14' ,'4', '88417','Wellness CORE Naturaal Grain Free Dry Dog Food Small Breed Health Turkey and Chicken Recipe is healthy, 100% natural grain free dog food for adult small breed dogs made with turkey, chicken, salmon oil and fruits and vegetables to help support your dogs optimal health, featuring smaller kibble size for small breed dogs and fortified with antioxidents, probiotics, vitamins and minerals, including fish and flax omega blend for healthy skin and coat and glucosamine and chondroitin help maintain bone and joint health','Image',' Wellness CORE');

INSERT INTO Product (ProductID, ProductName, Price_inDollars, Discount_inDollars, ProductSize_inPounds,Dimensions_inInches,ShippingWeight_inPounds, ModelNumber,Description,Image,Manufacturer)
VALUES (214,'Wellness CORE Air Dried Grain Free Natural Dry Dog Food 2-Pound Bag', 24.98,6,'2','10.9 x 8.5 x 7.6','1.8', ' 88508 ','Wellness CORE Air Dried Natural Grain Free Dry Dog Food is healthy, grain free dog food for adult dogs featuring tender protein morsels made with 70% natural, raw protein fortified with vitamins and minerals for whole body health and then air dried for the taste of raw and the ease and convenience of kibble, yet no refrigeration required','Image',' Wellness CORE');

INSERT INTO Product (ProductID, ProductName, Price_inDollars, Discount_inDollars, ProductSize_inPounds,Dimensions_inInches,ShippingWeight_inPounds, ModelNumber,Description,Image,Manufacturer)
VALUES (215,'Taste of the Wild Dry Dog Food ', 57.95,5,'29','18 x 25 x 5.2','30', '418581', 'Taste of the wild high prairie canine formula is a grain-free formula for all life stages with sweet potatoes and peas providing highly digestible energy for your active dog', 'Image', 'Taste of the wild');

/*-----  PRODUCTFEATURE table -----*/
INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (1, 'Contains one (1) 5-lb. bag of CESAR Filet Mignon Flavor With Spring Vegetables Dry Dog Food', 211);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (2, 'CESAR Dry Dog Food is made with real beef as the first ingredient for a taste dogs love', 211);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (3, 'This gourmet dog food is specially crafted with 26 nutrients that small breed dogs need', 211);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (4, 'Fresh chicken #1 provides lean protein to help keep slim and trim', 212);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (5, 'Natural ingredients plus vitamins, minerals and amino acids', 212);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (6, 'Brown rice with natural fiber for healthy digestion', 212);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (7, 'Omega 3 and 6 fatty acids improve skin and coat, guaranteed or your money back', 212);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (8, 'GRAIN FREE: grain free, complete and balanced everyday nutrition for your small breed dog.', 213);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (9, 'SMALL BREED: Naturally grain free and protein rich, made with premium turkey and chicken, and the optimum calorie levels to support higher energy needs of small breeds.', 213);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (10, 'ALL NATURAL: Contains only premium, all natural ingredients with no wheat, corn, soy, meat by-products, or artificial colors, flavors and preservatives.', 213);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (11, 'MADE IN USA: Backed by the Wellness Guarantee and proudly made only in the USA.', 213);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (12, 'GRAIN FREE: grain free, complete and balanced everyday nutrition for your dog, using a unique drying process that locks in more protein, nutrition and flavor.', 214);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (13, 'PROTEIN FOCUSED NUTRITION: Naturally grain free with 70% delicious premium proteins including turkey and chicken in each bite.', 214);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (14, 'ALL NATURAL: Contains only premium, all natural ingredients with no wheat-gluten, corn, soy, meat by-products, or artificial colors, flavors and preservatives.', 214);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (15, 'Made with real roasted meats', 215);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (16, 'Delivers natural antioxidants to protect', 215);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (17, 'With lean bison and venison meat, roasted for great flavor', 215);

INSERT INTO  PRODUCTFEATURE (PRODUCTFEATUREID, FEATURE, PRODUCTID) VALUES (18, 'Packed with highly digestible protein and antioxidents', 215);


/*-----  CART table -----*/
INSERT INTO  CART (CARTID, STATUS, CUSTOMERID) VALUES (1, 'Active', 111);
INSERT INTO CART (CARTID, STATUS, CUSTOMERID) VALUES (2, 'Active', 112);
INSERT INTO CART  (CARTID, STATUS, CUSTOMERID) VALUES (3, 'Active', 113);
INSERT INTO CART (CARTID, STATUS, CUSTOMERID) VALUES (4, 'Active', 114);
INSERT INTO CART (CARTID, STATUS, CUSTOMERID) VALUES (5, 'Active', 115);

/*-----  CARTPRODUCTS table -----*/
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (21, 1, 211, 1);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (22, 2, 212, 4);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (23, 3, 213, 2);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (24, 4, 214, 5);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (25, 5, 215, 1);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (26, 1, 213, 4);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (27, 1, 214, 3);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (28, 2, 214, 6);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (29, 4, 212, 7);
INSERT INTO CARTPRODUCTS (CARTPRODUCTSID, CARTID, PRODUCTID, NUMBEROFUNITS) VALUES (30, 5, 215, 9);

/*-----  CARDDETAILS table -----*/
INSERT INTO CARDDETAILS VALUES( 2000, 111, 'VISA', 4111111111111111,
TO_DATE('2020/07/13 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 144, 'Ram', 'Murthy', 
'9986356890', 'ram@gmail.com', 'HDFC', '265 Buckhead', 2256, 3032);

INSERT INTO CARDDETAILS VALUES( 2001, 112, 'MASTERCARD', 5122205105115201,
TO_DATE('2019/03/20 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 235, 'Rohan', 'Gupta', 
'9986323145', 'rohan@gmail.com', 'HSBC', '255 Lawrencevile', 3031, 3033);

INSERT INTO CARDDETAILS VALUES( 2002, 113, 'MASTERCARD', 5105105105105100,
TO_DATE('2021/01/22 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 876, 'Yash', 'Goel', 
'9986300022', 'yash@gmail.com', 'CITI', '465 Sandy Springs', 25, 3034);

INSERT INTO CARDDETAILS VALUES( 2003, 114, 'VISA', 4012888888881881,
TO_DATE('2018/05/01 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 983, 'Aishwarya', 'Rai', 
'9986323657', 'aish@gmail.com', 'BOFA', '965 Dunwoody', 223, 3035);

INSERT INTO CARDDETAILS VALUES( 2004, 115, 'VISA', 4222222222222222,
TO_DATE('2022/04/02 23:59:59', 'yyyy/mm/dd hh24:mi:ss'), 452, 'Kareena', 'Kapoor', 
'9000045678', 'kar@gmail.com', 'PNC', '765 Downtown', 4021, 3036);

/*-----  PAYMENT table -----*/
INSERT INTO PAYMENT VALUES ( 1000, 'PAYMENT PENDING', 1, 2000); 
INSERT INTO PAYMENT VALUES ( 1001, 'AUTHORIZATION COMPLETE', 2, 2001);
INSERT INTO PAYMENT VALUES ( 1002, 'PAYMENT PENDING', 3, 2002);
INSERT INTO PAYMENT VALUES ( 1003, 'AUTHORIZATION COMPLETE', 4, 2003);
INSERT INTO PAYMENT VALUES ( 1004, 'PAYMENT PENDING', 5, 2004);

/*-----  ORDER table -----*/

INSERT INTO ORDERS VALUES ( 3001, 112, 1001, 'PROCESSED', TO_DATE('2017/02/12 20:59:59', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ORDERS VALUES ( 3002, 114, 1003, 'DELIVERED', TO_DATE('2016/12/12 21:59:59', 'yyyy/mm/dd hh24:mi:ss'));
INSERT INTO ORDERS VALUES ( 3003, 111, 1000, 'DELIVERED', TO_DATE('2016/10/10 12:39:33', 'yyyy/mm/dd hh24:mi:ss'));

/*-----  ORDERDETAILS table -----*/

INSERT INTO ORDERDETAILS VALUES( 4101, 3001, 215, 1, 57.95);
INSERT INTO ORDERDETAILS VALUES( 4102, 3001, 213, 1, 12.11);
INSERT INTO ORDERDETAILS VALUES( 4103, 3002, 215, 1, 57.95);
INSERT INTO ORDERDETAILS VALUES( 4104, 3003, 212, 1, 16.95);
INSERT INTO ORDERDETAILS VALUES( 4105, 3003, 214, 1, 11.99);

/*-----  CUSTOMERPRODUCT table -----*/
INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (100, 111, 212, 5, 'We love this food!', 'My dog is happy and healthy with this food, and his mom is happy that it doesnt cost a fortune on Amazon, and its made in the USA! For reference, I have an American Pit Bull with seasonal skin and ear allergies that this food does not have an effect on. Hes 6.5 years old and has been eating this brand for about 3 years now. His fur is nice and soft, and the food doesnt smell bad. Yay all around!');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (101, 113, 212, 5, 'Great Food!', 'Fantastic dog food. I wont buy food for my dogs that have all that grain for filler. And I wont buy food that isnt made in the USA, WITH USA INGREDIENTS!!!!!! A lot of dog food says made in the USA, but a bunch of the ingredients come from other countries. Do your homework as I did. Some of the top brands that claim to be made in the USA use proteins and meat by-products from Asia, South America and one even had kangaroo meat. I dont see many kangaroos wandering in the US.');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (102, 111, 215, 5, 'My dogs are wild about this food !!!', 'My dogs like this better than any other food I have fed them. Its pain protein is duck and duck was recommended to me by my Vet for one of my dogs with food allergies. She is scratching less that she has been on this food for about three weeks. Her coat shines like patent leather and the skin is in great condition. They love this supplement and diligently remind me when it is time for their doses (or yummies as we call them).');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (103, 112, 215, 3, 'High quality on a budget if youre willing to compromise', 'I loved this product for the time being while seeing what budget friendly high quality foods my dog would like! My dog loves this food, made her dry skin super soft, and her allergies havent persisted. The only problem is when I researched further, the company who owns TOW is less than reputable. I cant chance my dogs health on a pet food company who constantly has recalls. Wish they made their quality better. Switched my dog to earthborn holistic');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (104, 114, 215, 4, 'Price Increase Reduces Value', 'This food used to be $43-44 with Prime. Price increase makes it not worth it - this used to be a high quality food at a good price, but this increase puts it in the same price point as much better dog foods.');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (105, 113, 213, 5, 'Excellent grain free Weight Control food!', 'I free feed both my boys and my schnauzer tends to the heavier side than his poodle brother. Both are doing very well on this reduced calorie diet. Both dogs seem less itchy overall. Great dog food and we also add some joint treats from VitaPet Vitapet Advanced Strength Joint and Hip Chewables. I decided to put her on the chews. After a short period of time I saw great improvement in their walking and jumping. I can’t say enough about how this product has benefitted our dogs. We are grateful!');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (106, 112, 213, 5, 'Tastes great.', 'Most grain free dog foods use Potatoes or Sweet Potatoes for the main grain free ingredient. This uses Chickpeas so its better to give my dog or your dog a break from always POTATO ingredients. I tasted it and is pretty tasty and not super hard. It crumbles apart quickly and is kind of chewy. I got this 4 lb wild game bag for around 11 bucks. Only complaint is on the front of the bag it says Made In Usa with Globally Sourced Ingredients.');

INSERT INTO CUSTOMERPRODUCT (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, RATING, HEADLINE, REVIEW)
VALUES (107, 111, 214, 2, 'No go for the wheatens', 'Unfortunately both my wheaten terriersare skipping meals when I add this to their kibble. I am not sure why they dont like it.');


/*-----  PRODUCTQUESTIONNAIRE table -----*/
INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (108, 111, 212, 'how long does an 8 month old large breed stay on puppy food?', 'At least one full year to get that good nutritious start! It differs slightly from small bread to large bread but if they are eating puppy food for size specific small or large bread you cant go wrong feeding them puppy food for at least their first year.');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (109, 112, 212, 'What is the serving size for 60lb dogs?', 'I use the chart on the bag it works for me. Its pretty close, watch you dogs weight and adjust accordingly. ');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (110, 113, 215, 'is your product made completely in the usa?', 'I called Taste of the Wild today and this is what they told me: taurine, and folic acid is from china, lamb from New Zealand, Dry chicory root is from Belgium, and the Chicken meal from Germany ');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (111, 115, 215, 'Is this a grain-free dog food?', 'Yes');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (112, 113, 215, 'Is this a grain-free dog food?', 'Yes, grain free. Trick with the different flavors is picking the right protein source (meat) depending on the breed of dog you have to maximize thr benefit, the lamb and rice is the most neutral.');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (113, 112, 215, 'Is this good for an English Bulldog?', 'Yes, Ive fed this to my last two English Bulldogs. They have loved it and its very hypoallergenic.');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (114, 111, 213, 'How long would one bag last for an adult lab (70lbs+) ?', 'At about 4 cups a day, just around a month. ');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (115, 115, 213, 'fat content?', 'I feed my dog the Core Large Breed chicken. Crude fat content shows not less than 12% ');

INSERT INTO PRODUCTQUESTIONNAIRE (CUSTOMERPRODUCTID, CUSTOMERID, PRODUCTID, QUESTION, ANSWER)
VALUES (116, 111, 214, 'Do you add water to rehydrate?', 'No - the food is soft and chewy already. ');
