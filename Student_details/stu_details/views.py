from django.shortcuts import render
from django.views import View
from django.http import HttpResponse
from stu_details.models import Student, Book, School
from django.db import connection
import json
from django.http import JsonResponse
from django.core.cache import cache


# Create your views here.

class Student_view(View):
    def __init__(self):
        pass

    def get(self, request):
        id = request.GET.get("stu_id", "")
        name = request.GET.get("stu_name", "")
        stu_data=[]
        student = {"data":stu_data,"message":"success"}
        if  (id is None or id == "") and  (name is None or name ==""):
            student["message"]="Enter valid id or name"
            return JsonResponse(student,safe=False)
        
        redis_key = 'student_'+id+"_"+name
        print(redis_key)
        if redis_key in cache:
            student["data"] = cache.get(redis_key)
        else:
            cursor = connection.cursor()
            query = '''
            select sds.id,
                concat(sds.first_name," ",sds.last_name)as "full_name", 
                sds.email email, 
                sds.gender gender,
                sdsc.school_name school_name,
                sdsc.school_number schhol_phone,
                sdb.book_title book,
                sdb.pages pages_read
            FROM stu_details_student  sds
            left join stu_details_school sdsc
            on sdsc.id=sds.School_id
            left join stu_details_book sdb
            on sds.book_id=sdb.id
            where 1 = 1
            '''
            parameters = []
            condition = ''
            if id is not None and id != "":
                condition = ''' and sds.id = %s'''
                query+=condition
                parameters.append(id)
            if name is not None and name != "":
                condition = ''' and sds.first_name = %s'''
                query+=condition
                parameters.append(name)

            #print(query, parameters)
            cursor.execute(query, parameters)
            if not cursor.rowcount:
                student["message"]="Not found"

            results = cursor.fetchall()
            for data in results:
                stu_data.append(
                    {
                        "id": data[0],
                        "name": data[1],
                        "email": data[2],
                        "gender": data[3],
                        "school_name": data[4],
                        "school_number": data[5],
                        "book": data[6],
                        "pages": data[7]
                    }

                )
            cache.set(redis_key, stu_data, timeout=300)
            student["data"]=stu_data
        return JsonResponse(student,safe=False)
