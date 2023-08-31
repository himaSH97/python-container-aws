#get base image from AWS public 
FROM public.ecr.aws/lambda/python:3.10  

# copy requirement.txt file
COPY requirements.txt ./ 

#install all the dependencies in requirements.py
RUN pip3 install -r requirements.txt

#copy the main file (add the other files here if you have any)
COPY main.py ./  

#specify where the lambda handler is
CMD [ "main.handler" ]