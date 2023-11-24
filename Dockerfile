FROM python:3.9-slim-buster
WORKDIR /app
COPY ./req.txt /app
RUN pip install -r req.txt
COPY . .
EXPOSE 5000
ENV FLASK_APP=main.py
CMD ["flask", "run", "--host", "0.0.0.0"]
