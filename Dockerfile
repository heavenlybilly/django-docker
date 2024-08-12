ARG PYTHON_VERSION

FROM python:${PYTHON_VERSION}

ARG PORT
ARG PROJECT_PATH

WORKDIR /app

COPY ${PROJECT_PATH}/ .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "manage.py"]

CMD ["runserver", "0.0.0.0:8000"]