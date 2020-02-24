# RenterProjectW2020MAD3004

## PROJECT CONTRIBUTORS

Abhishek Santhosh Jaya (C0769778)<br>
Prakash Rana (C0773839)<br>
Raghav Bobal (C0780996)<br>

## PROJECT DESCRIPTION
Our project is a vehicle renting system which contains a detailed list of customers, drivers, owners and their vehicles. Customers are allowed to rent vehicles with or without a driver. The total is calculated depending on the type of vehicle rented and the number of days for which it was rented.

## PROJECT STRUCTURE
<img src="https://i93.servimg.com/u/f93/18/45/29/87/struct10.jpg" alt="Class hierarchy" style="float: left; margin-right: 10px;"/>
We have used the following packages and classes to implement the above given structure:<br>

### *Person Group*<br>
* **Person Class**: Abstract class containing attributes to be inherited by Customer, Driver and Owner Classes
* **Customer Class**: Holds details of customer as well as the vehicles they have rented
* **Driver Class**: Holds information about the drivers that are available
* **Owner Class**: Holds information about owners and the vehicles they own
* **Gender Class**: Enum class to hold gender (Male, Female, Other)
* **Contact Class**: Stores all contact information about a person
* **Address Class**: Class containing address information used in MainRunner

### *Vehicles Group*<br>
* **Vehicle Class**: Abstract class containing attributes to be inherited by Bus, Car, MotorCycle
* **Car Class**: Contains attributes inherited from Vehicle as well as carColor and carType
* **Bus Class**: Contains attributes inherited from Vehicle as well as busType, wifi and accessibility services
* **MotorCycle Class**: Contains attributes inherited from Vehicle as well as mileage and topSpeed
* **FuelType Class**: Enum class to hold the type of fuel used (Petrol, Diesel, Electric)

### *Json Group*<br>
* Contains the json data for the classes

### *Utility Group*<br>
* **IDisplay Class**: Interface containing one method public void display()
* **(Imported)RNCryptor Class**: Imported project used for encrption and decryption of passwords
* **Calculation Class**: Used in age calculation
* **FileHandler**: Used to handle the json files
* **PasswordUtil**: Contains methods for encryption and decryption

### *Extensions Group*
* **String+Extension**: Contains method for date formatting
* **Float+Extension**: Contains method to format price

### *Exceptions Group*
* Contains validations for json handling as well as verification of email address and phone numbers

### *Others*
* **main**: Contains all object initializations as well as methods to display owner, driver and customer information along with their bookings
* **VehicleRent Class**: Contains renting information


## REFERENCES
* [Medium.com](https://medium.com/@anios4991/swift-protocol-oriented-programming-acc56933d011) - Used to implement protocol classes Person and Vehicle
* [Jsonplaceholder](https://jsonplaceholder.typicode.com/) - JSON reference
* [HackingWithSwift](https://www.hackingwithswift.com/example-code/system/how-to-parse-json-using-jsonserialization) - Used to implement json file reading
* [Mockaroo](https://mockaroo.com/) - Used to generate json data
* [Changwei's Blog](http://tuchangwei.github.io/2013/09/16/how-to-import-one-project-to-another-one-in-xcode/)- Used for reference on how to import an existing project to our own
* [GitHub](https://github.com/RNCryptor/RNCryptor)- Imported Rncrpto for password encryption
* [Knowlegde Stack](http://www.knowstack.com/swift-nsdateformatter/) - Reference for age calculation from birthdate
* [Swift Developer Blog](http://swiftdeveloperblog.com/code-examples/validate-email-address-code-example-in-swift/) - For validating the email of customers.
* [Stackoverflow](https://stackoverflow.com/questions/26845307/generate-random-alphanumeric-string-in-swift) - Used to generate salt for encryption.
