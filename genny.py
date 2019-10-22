# -*- coding: utf-8 -*-
"""
Created on Thu Oct 17 17:36:52 2019

@author: hisinha
"""

import os
import sys
os.chdir('C:/01 Solution Dev/MoonShine/MLTags')
from faker import Faker 
import pandas as pd
import uuid
#fake=Faker()
#type(dir(fake))

def producer(loc ,flds, n): 
    #        check if list1 contains all elements in list2
    fake= Faker(loc)
    result =  all(elem in dir(fake)  for elem in flds)
    if result:
        print("Yes, all requested fields are valid !")
        df=pd.DataFrame()
        for x in range(len(flds)):
            for y in range (n):
                df= df.append({ 'uuid': uuid.uuid1(), 'data_value' : getattr(fake,flds[x])(),'data_locale': loc,'data_class': str(flds[x])} , ignore_index=True )
        print("job completed successfully..\N{Thumbs Up Sign}")
        df.to_csv(r'dummy_data.csv')
        return df
    else:
        print("Some of the fields doesn't contains all valid elements, terminating....  \N{Weary Face}" )
        

a= producer ( 'EN',['name'],5)

fake = Faker()
fake.profile()


if __name__ == "__main__":
   main(sys.argv[1:])







