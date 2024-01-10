# Use the `python:3.7` as a source image from the Amazon ECR Public Gallery
# We are not using `python:3.7.2-slim` from Dockerhub because it has put a  pull rate limit. 
FROM public.ecr.aws/sam/build-python3.9:latest

# Set up an app directory for your code
COPY . /src
WORKDIR /src

# Install `pip` and needed Python packages from `requirements.txt`
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# RUN flask db init
# RUN flask db migrate
# RUN flask db upgrade

# RUN python 01_insert_single_db_entry.py

# Define an entrypoint which will run the main app using the Gunicorn WSGI server.
ENTRYPOINT ["gunicorn", "-b", ":8080", "app:app"]