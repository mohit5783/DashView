# Averis Mohit
<img src="https://i.imgur.com/wCCcpGI.png" alt="Logo project" />
  <p>
     <i>Creating a dashboard for Test assessment for Averis Sdn. Bhd. - Averis is a world-class provider of global business services, dedicated to meeting the technological, market and business challenges worldwide. Touching the lives of our customers everywhere, every day Reliable, accurate, service-oriented; at the heart of our operations beats our vision to provide our customers with the best scalable, cost-effective outsourcing global business solutions in real-time!</i>
  </p>

[![Build Status](https://travis-ci.com/mohit5783@gmail.com/AverisAssignment.svg?branch=master)](https://travis-ci.com/mohit5783@gmail.com/AverisAssignment)
[![NPM version](https://img.shields.io/npm/v/AverisAssignment?style=flat-square)](https://img.shields.io/npm/v/AverisAssignment?style=flat-square)
[![Package size](https://img.shields.io/bundlephobia/min/AverisAssignment)](https://img.shields.io/bundlephobia/min/AverisAssignment)
[![Dependencies](https://img.shields.io/david/mohit5783@gmail.com/AverisAssignment.svg?style=popout-square)](https://david-dm.org/mohit5783@gmail.com/AverisAssignment)
[![code style: prettier](https://img.shields.io/badge/code_style-prettier-ff69b4.svg?style=flat-square)](https://github.com/prettier/prettier)


---
## Features ✨
* REST API Developed in Node.js using Express.
* Frontend Developed using React.js.
* Chart.js is used to show the charts on the page.
* PostgreSQL is used as database.
* Authentication / Sign-in using JSON Web Tokens [JWT].

## Project Setup
### Prerequisites
You will need to have Node.js or Yarn installed in your machine. [[NodeJs](https://nodejs.org/en)] [[YarnPkg](https://yarnpkg.com/)]
You will also need [[PostgreSQL](https://www.postgresql.org/download/)] 
### Database
The Database name is "AverisMohit" and it contains three tables
<img src="https://i.imgur.com/LMDaRKa.png" alt="Database Tables" />
SQL to create the database can be found in "DummyData" directory.

### API
Open the command prompt
Letz first reach to the "API" folder using CD
```
> $ cd API
> $ npm install
```
Compiles and hot-reloads for development:
```
> $ npm start
```
This will start the backend server
```
> averisassignment@1.0.0 start ...\API
> nodemon --watch . --exec babel-node -- index

[nodemon] 2.0.6
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,json  
[nodemon] starting `babel-node index.js`    
� are live on 49923
```
This means our server is live on port 49923

### Frontend
Open another command prompt
now reach to the directory named "aa-react-app" 
```
> $ cd aa-react-app
> $ npm install
```
Compiles and hot-reloads for development:
```
> $ npm start
```
After running this command it will automatically pop out the running application in your favorite browser. If everything goes well, you would see the screen.

<img src="https://i.imgur.com/NHknbHs.png" alt="Sign-in" />

```
To login please use below credentials

- Email Username: mohit5783@gmail.com
- Password: SomePass
- or
- Email Username: demo@demo.com
- Password: 123456
```
## Usage 💡
After successful login you would be able to see the dashboard. 

<img src="https://i.imgur.com/4Dv6AXa.png" alt="Screenshot of Dashboard" />


