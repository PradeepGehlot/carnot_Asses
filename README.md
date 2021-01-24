Setup Steps:

1. Run command for requirment setup:
	pip install -r requirment.txt

2. restore the DB:
        create database Student;
	mysql -u <username> -p Student < Student.sql;

3. Change credential for SQL:
      Note: after installing please change usernamea and password as per your system:
      1. Go to settings.py
      2. change DATABASES config:
         'USER': 'your username',
         'PASSWORD': 'password'
	

Postman:
Data: 
URL:  http://127.0.0.1:8000/student/?stu_id=20
output: {
    "data": [
        {
            "id": 20,
            "name": "Dominik Barrick",
            "email": "dbarricki@amazon.com",
            "gender": "Male",
            "school_name": "William Gillett Academy",
            "school_number": "949-0223",
            "book": "Basic Instinct",
            "pages": 4548
        }
    ],
    "message": "success"
}

Data: 
URL:  http://127.0.0.1:8000/student/?stu_name=Alyss
{
    "data": [
        {
            "id": 6,
            "name": "Alyss Harcombe",
            "email": "aharcombe4@toplist.cz",
            "gender": "Female",
            "school_name": "Amos Comenius Memorial School",
            "school_number": "933-3815",
            "book": "Big Nothing",
            "pages": 2427
        }
    ],
    "message": "success"
}

