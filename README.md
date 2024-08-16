# TinyMoneyDealing
App present monet management from JSON mock.

# Design
MVVM 

Management of data from Model as Codable structs in View Model [JSON > Data > Codable] and presentation to View
View Model instance as a single @EnvironmentObjec from View and as a @StaetObject from App instance and as @ObservableObject to be onserved by the View
Entity instance as a @State from View for presenting as wrapped for nil or empty values
Use of .onAppear when load view

Model
TinyModelDealingModel | PaymentDetails | PaymentProgress | LoanDetails

ViewModel
TinyModelDealingModelViewModel 

View
TinyModelDealingModelView

Unit Test
UnitTinyMOneyDealingTest

UI Test
UITinyMOneyDealingTest

Adaptive
Use of Geometry reading for assure size of VStack in Loan Details

# TODO

## Architecture
Consider for future create an Interactor or Use Case layer or migrate to VIPER for more complexity requirements
## Model
Consider migrate to use of Codign Keys for local persistance [example: use of SwiftData]
## UI Design
Consider Atomic Design for maintenance and reusability
Consider betterdecision for avoiding spaghetti
