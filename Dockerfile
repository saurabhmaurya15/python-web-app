FROM python:3.5
RUN pip install Flask==0.11.1
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /var/www/
COPY app /var/www
CMD ["python", "app.py"] 
