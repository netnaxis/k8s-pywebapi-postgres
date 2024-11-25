FROM python:3.11-slim

WORKDIR /app

# Встановлення залежностей
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Копіювання коду додатку
COPY . .

# Оголошення порту
EXPOSE 5000

# Запуск через Gunicorn
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:5000"]
