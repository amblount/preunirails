Family.destroy_all
Relationship.destroy_all
Center.destroy_all
Form.destroy_all
Provider.destroy_all
Neighborhood.destroy_all
Classroom.destroy_all
Student.destroy_all
Instructor.destroy_all
Child.destroy_all
Guardian.destroy_all

provider = Provider.create(
		name: "Cynthia",
		full_address: "1234 cannon street, Oakland, CA 94606",
		address: "1234 cannon street",
		city: "Oakland",
		state: "CA",
		neighborhood_id: 1,
		zipcode: 94606,
		email: "creinmann@gmail.com",
		phone: "162-283-2938",
		password: "123456"
		)

neighborhoods = [
  {name: "Montclair"},	
  {name: "Lake Merritt Park"},
  {name: "Piedmont"},
  {name: "Upper Laurel"},
  {name: "Glenview"},
  {name: "Adams Point"},
  {name: "Rockridge"},
  {name: "Temescal"},
  {name: "Uptown"},
  {name: "Produce and Waterfront"},
  {name: "Fruitvale"}
]

Neighborhood.create(neighborhoods)

centers = [
	{
		provider_id: provider.id,
		name: "Academia de Mi Abuela",
		capacity: 28,
		neighborhood_id: 1,
		phone: "510-336-7082",
		email: "reimanncynthia@gmail.com​​",
		website: "http://www.amachildcarecenter.org/",
		full_address: "2162 Mountain Blvd. Suite #300, Oakland, CA 94611",
		address: "2162 Mountain Blvd. Suite #300",
		city: "Oakland",
		state: "CA",
		zipcode: 94611,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Beatie Street Preschool",
		capacity: 15,
		neighborhood_id: 1,
		phone: "510 835-0131",
		email: "N/A",
		website: "N/A",
		full_address: "733 Beatie St, Oakland, CA 94606",
		address: "733 Beatie St",
		city: "Oakland",
		state: "CA",
		zipcode: 94606,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Bernice and Joe's Playschool",
		capacity: 26,
		neighborhood_id: 1, 
		phone: "510-638-3529",
		email: "joe@berniceandjoe-playschool.com",
		website: "http://www.berniceandjoe-playschool.com/",
		full_address: "7001 Sunkist Drive, Oakland CA 94605",
		address: "7001 Sunkist Drive",
		city: "Oakland",
		state: "CA",
		zipcode: 94605,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Betty's Children's Academy",
		capacity: 32,
		neighborhood_id: 1, 
		phone: "510-430-8789",
		email: "bca1204@sbcglobal.net",
		website: "http://bettyschildrensacademy.com/",
		full_address: "11200 Golf Links Rd Unit D, Oakland, CA 94605",
		address: "11200 Golf Links Rd Unit D",
		city: "Oakland",
		state: "CA",
		zipcode: 94605,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "BlueSkies for Children",
		capacity: 92,
		neighborhood_id: 1,
		phone: "510-261-1076",
		email: "monairet@blueskies4children.org",
		website: "http://www.blueskies4children.org",
		full_address: "3021 Brookdale Ave. Oakland, CA 94602",
		address: "3021 Brookdale Ave.",
		city: "Oakland",
		state: "CA",
		zipcode: 94602,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Bright Future Early Learning Center",
		capacity: 32,
		neighborhood_id: 1, 
		phone: "510-835-4012",
		email: "N/A",
		website: "http://www.4c-alameda.org/dev2/index.php/parents-menu/bright-future-early-learning-center",
		full_address: "1515 Clay St. Suite 146, Oakland, CA 94612",
		address: "1515 Clay St. Suite 146",
		city: "Oakland",
		state: "CA",
		zipcode: 94612,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Broadway Children's School",
		capacity: 42,
		neighborhood_id: 1, 
		phone: "510-763-9337",
		email: "office@broadwaychildrensschool.org",
		website: "http://broadwaychildrensschool.org/",
		full_address: "394 Adams Street, Oakland, CA 94612",
		address: "394 Adams Street",
		city: "Oakland",
		state: "CA",
		zipcode: 94612,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Chatham School Redwood",
		capacity: 111,
		neighborhood_id: 1, 
		phone: "510-531-1302",
		email: "chatham44@sbcglobal.net",
		website: "http://www.chathampreschool.com/",
		full_address: "4500 Redwood Road, Oakland, CA  94619",
		address: "4500 Redwood Road",
		city: "Oakland",
		state: "CA",
		zipcode: 94619,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Claremont Day Nursery on College Ave.",
		capacity: 34,
		neighborhood_id: 1, 
		phone: "510-658-5208",
		email: "info@claremontkids.com",
		website: "http://claremontkids.com/",
		full_address: "5830 College Avenue, Oakland, CA 94618",
		address: "5830 College Avenue",
		city: "Oakland",
		state: "CA",
		zipcode: 94618,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Color Me Children Oakland",
		capacity: 62,
		neighborhood_id: 1, 
		phone: "510-430-1322",
		email: "N/A",
		website: "N/A",
		full_address: "8115 Fontaine St, Oakland, CA 94605",
		address: "8115 Fontaine St",
		city: "Oakland",
		state: "CA",
		zipcode: 94605,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Cultivating Kids Infants",
		capacity: 30,
		neighborhood_id: 1, 
		phone: "510-891-1438",
		email: "CultivatingKids@yahoo.com",
		website: "http://www.cultivatingkids.org/",
		full_address: "5621 Thornhill Drive, Oakland, CA 94611",
		address: "5621 Thornhill Drive",
		city: "Oakland",
		state: "CA",
		zipcode: 94611,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "Daisy Child Development Center",
		capacity: 71,
		neighborhood_id: 1, 
		phone: "510-531-6426",
		email: "daisy94619@yahoo.com",
		website: "http://www.daisycdc.com/",
		full_address: "5016 Daisy Street, Oakland, California 94619",
		address: "5016 Daisy Street",
		city: "Oakland",
		state: "CA",
		zipcode: 94619,
		country: "USA"

	},
	{
		provider_id: provider.id,
		name: "De Colores Head Start",
		capacity: 118,
		neighborhood_id: 1, 
		phone: "510-535-6106",
		email: "N/A",
		website: "http://www2.oaklandnet.com/government/o/DHS/o/ChildrenYouthServices/OAK022078",
		full_address: "1155 35th Avenue Oakland CA 94601",
		address: "1155 35th Ave, Oakland",
		city: "Oakland",
		state: "CA",
		zipcode: 94601,
		country: "USA"

	}
]

Center.create(centers)

relationships = [
	{kind: "mother"},
	{kind: "father"},
	{kind: "grandmother"},
	{kind: "grandfather"},
	{kind: "uncle"},
	{kind: "aunt"},
	{kind: "nanny"},
	{kind: "step mother"},
	{kind: "step father"},
	{kind: "other"}
]

Relationship.create(relationships)

Classroom.create(
	center_id: 1,
	name: "Casa Lila",
	total_seats: 9
	)
Classroom.create(
	center_id: 1,
	name: "Casa Lima",
	total_seats: 9
	)
Classroom.create(
	center_id: 1,
	name: "Casa Celeste",
	total_seats: 9
	)

instructors = [
	{
		center_id: 1,
		classroom_id: 3,
		name: "Yaneldis Diaz Pedroso"
	},
	{
		center_id: 1,
		classroom_id: 3,
		name: "Lani Rodarte"
	},
	{
		center_id: 1,
		classroom_id: 2,
		name: "Valeria Espinoza"
	},
	{
		center_id: 1,
		classroom_id: 1,
		name: "Xochitl Juarez"
	},
	{
		center_id: 1,
		classroom_id: 2,
		name: "Gladys Corro"
	},
	{
		center_id: 1,
		classroom_id: 2,
		name: "Marisol Jiménez"
	},
	{
		center_id: 1,
		classroom_id: 2,
		name: "Laura Soto"
	}
]
Instructor.create(instructors)

Child.create(
	first_name: "Carla",
	last_name: "Johnson",
	date_of_birth: Date.new,
	)
Child.create(
	first_name: "Ben",
	last_name: "Johnson",
	date_of_birth: Date.new,
	)
Child.create(
	first_name: "Keith",
	last_name: "Johnson",
	date_of_birth: Date.new,
	)

Student.create(
	center_id: 1,
	child_id: 1
	)
Student.create(
	center_id: 1,
	child_id: 2
	)
Student.create(
	center_id: 1,
	child_id: 3
	)


Guardian.create(
		name: "Reinmann",
		full_address: "1234 cannon street, Oakland, CA 94606",
		address: "1234 cannon street",
		city: "Oakland",
		state: "CA",
		zipcode: 94606,
		neighborhood_id: 1,
		email: "jreinmann@gmail.com",
		phone: "163-283-2938",
		password: "123456"
		)
Guardian.create(
		name: "Josephine",
		full_address: "1234 cannon street, Oakland, CA 94606",
		address: "1234 cannon street",
		city: "Oakland",
		state: "CA",
		zipcode: 94606,
		neighborhood_id: 1,
		email: "jreinmann@gmail.com",
		phone: "163-283-2938",
		password: "123456"
		)

Family.create(
	child_id: 1,
	guardian_id: 1,
	relationship_id: 2
	)
Family.create(
	child_id: 1,
	guardian_id: 2,
	relationship_id: 1
	)


Form.create(name: "Enrollment Agreement")
Form.create(name: "Identification and Student Emergency Form")
Form.create(name: "Parents Rights Form A")
Form.create(name: "Parents Rights Form B")
Form.create(name: "Personal Rights Form")
Form.create(name: "Emergency Medical Release Form")
Form.create(name: "Health History Form")
Form.create(name: "Medicine Administration Approval Form")
Form.create(name: "Physicians Report")


