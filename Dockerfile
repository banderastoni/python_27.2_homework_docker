FROM python:3
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r /app/requirements.txt
COPY . /app

# Устанавливает переменную окружения, которая гарантирует,
# что вывод из python будет отправлен прямо в терминал без предварительной буферизации
ENV PYTHONUNBUFFERED 1
