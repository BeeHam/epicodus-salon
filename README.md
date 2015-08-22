# Salon Database

_I was unable to get the delete & update methods for the ClientClass to function. I just don't feel that I am fully grasping the concepts._

##### Epicodus Database Basics Friday Code Review, 08/21/2015

#### By _**Brigham Thompson**_

## Description

_This web application will provide the user with the ability to create and update a database of stylists and their respective clients._

## Setup

#### Database and Table set-up
-CREATE DATABASE hair_salon;
-CREATE TABLE stylists (id serial PRIMARY KEY, name varchar);
-CREATE TABLE clients (id serial PRIMARY KEY, name varchar, stylist_id int);
-CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;

Clone git repository at: https://github.com/BeeHam/epicodus-salon.git

## Technologies Used

-Ruby
-RSpec
-Capybara
-Sinatra
-PostgreSQL

### Legal


Copyright (c) 2015 **_Brigham Thompson_**

This software is licensed under the MIT license.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
