# -*- coding: utf-8 -*-
"""
Created on Thu Oct 17 17:36:52 2019

@author: hisinha
"""

from faker import Faker 
fake=Faker()

fake.name()




from faker import Faker 
import pandas as pd
#fake= Faker()

def producer(loc ,f, lst):
    
    fake= Faker(loc)   
    
    output = [{ 
            'data_value' : getattr(fake,f)()} 
    for x in range(n)]               
    final=pd.DataFrame(output)
    return final



df = producer('ru_RU',lst = ['name','address'],5)








import pandas as pd
df1 = pd.DataFrame({'col1': [1,2], 'col2':[3,4]})
df2 = pd.DataFrame({'col1': [5,6], 'col2':[7,8]})
print(df1)
print(df2)
print(pd.concat([df1, df2]))