FROM python:3.7.17-slim
WORKDIR /app
COPY req.txt /app
RUN pip3 install -r req.txt
COPY main.py /app
CMD ["python", "-m", "flask", "--app", "main", "run", "-p", "3000", "-h", "0.0.0.0" ]
# ENV FLASK_APP=main.py
# CMD ["flask", "run", "--host", "0.0.0.0"]
