FROM python:3.12

WORKDIR /app
COPY . /app

# Install dependencies
RUN pip install -U pip \
    && pip install --no-cache-dir -r requirements.txt

# Ensure surf-tg.sh has the correct permissions
RUN chmod +x surf-tg.sh

# Use the correct path to the Python interpreter in surf-tg.sh
CMD ["bash", "surf-tg.sh"]
