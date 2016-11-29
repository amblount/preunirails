#Approach
Pre-Uni

Problem
-
Preschool registration in Oakland is slow and difficult, the process has yet to be virtualized. I am interested in solving the registration process for parents who send their children to preschool Centers. There is already a company OnePreschool who solves this problem for home-based centers. The main difference is federal regulations that require a center to submit documentation pertaining to each student quarterly to make sure that the center is in compliance with the laws. Home based centers are able to keep a database of records or even hard copies but those forms do not need to be sent to the state annually. 

Solution
-
Virtualization. I have created a platform where a guardian can create one profile and create a familial relationship with other platform users. A guardian can become a member of a family and have a relationship with children and centers. That guardian can complete the registration process for children and submit forms to a preschool. 

Roadblocks
-
How to model Users?
In my application there are a few different types of users, a user in this case is just a person who can login and then complete some other functionality. My users are so different it made more sense for them to become separate models. 

Guardian - Providers - Children

The application process
---

System A.

A provider is in control of a preschool they are like an Admin of some sorts. They initiate the process for guardians to start an application to the center. A Guardian logs in and can view all of the preschools on the site. That guardian has a list of preschools which they are interested in. If a guardian is interested in a preschool an email is sent to the preschool asking for access to their center. Once the Guardian is approved by the provider they can start an application, which are forms that must be signed by the guardian. When the guardian has completed all of the forms they can send an application to the center and if the center has an open spot they can be admitted. There are many paramters around admittance like capacity and enrolled students. The provider is in charge of this. 

System B.

A Guardian completes a profile and joins/ creates a family. The guardian can find or create children profiles. A guardian can view the profile of a child. A child has a complete profile when all of the forms for that child are complete. Once all of the forms are complete a guardian can apply for admission to a school and depending on the schools enrollment and it's capacity the child can be admitted to an age appropriate classroom or can be placed on the waitlist for that classroom.

Custom API's
-
I had to think about what problems I was trying to solve and what solutions were already available that I could integrate. 

Student database

Currently there is no databse of all the students in the city of Oakland and no seamless registration process (1 application).

Healthcare Records

HIPPA regulations and safety around healthcare records are tricky so creating a secure system of access for the child care Provider would involve an API from the healthcare provider. Currently not one of the three major pediatric healthcare providers have an API for other child care providers to accedd health records or physical examination reports, which need to be shared with the child care provider. Having some sort of chat between the child-care provider and the health-care provider would be amazing and something that pre-uni would like to look into in the future.

Employer Subsidized Care

We would like to partner with companies who have at least 10% of their employee staff working or living in Oakland to subsidize a portion of the care. The price or childcare makes it unavailable for many families and so children are not advancing developmentally as they should through verbal and physical communication. Preschool provides a safe space for children to learn and grow around other students their age, without that experience students go into Kindergarten underprepared for the social interactions with other students their age and their instructors.

City of Oakland

The Oakland Promise is something that our current mayor Libby really cares about and something that we believe Pre-Uni can contribute to significantly. We would like to partner with the city of Oakland to shut down centers that are not providing quality care and open more centers based on the models that are working. We believe that by creating a platform where all centers have equal access to technology and information we can help level the playing field and increase accessibility to all students. We also think that it is very important for the city to have concrete data about all preschool age students to understand how the city can implement programs to support these students.

 
