# Используем официальный образ Python
FROM python:slim

# Создадим рабочую директорию
WORKDIR /usr/src/app

# Скопируем файлы проекта в контейнер
COPY . .

# Установим зависимости Python
# RUN pip install --no-cache-dir -r requirements.txt

# Установим переменную окружения для ChromeDriver
ENV PATH="/usr/local/bin:${PATH}"

# Команда для запуска приложения
CMD ["python", "main.py"]
