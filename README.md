# README

## SUMMARY - ~ MPloy ~

* MPloy is an application that allows employees to make requests to their managers and view a profile page of their requests.

## Models & Relationships

* Employee has_many :requests
* Employee has_one :manager, through: :requests
* Employee has_one :employee_profile

* EmployeeProfile belongs_to :employee

* Manager has_many :requests
* Manager has_many :employees, through: :requests
* Manager has_one :manager_profile

* ManagerProfile belongs_to :manager
* ManagerProfile has_many :requests, through: :manager

* Request belongs_to :employee
* Request belongs_to :manager
* Request has_one :reason

* Reason belongs_to :request

## User Stories

### MVP

* Employee can log in
* Employee can make requests
* Employee can view profile

* EmployeeProfile shows previous requests

* Manager can approve requests
* Manager can view Employee request data

* Reasons will be specific w/ Employees being able to expand upon

### Stretch Goals

* Implement Data Visualization for EmployeeProfile
* Implement Schedule API


_________________________
