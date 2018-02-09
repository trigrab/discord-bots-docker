FROM python:3-alpine

RUN apk add --no-cache git
RUN git clone https://github.com/Breee/pokemon-raid-bot.git /app

WORKDIR /app

RUN pip install --no-cache-dir -r requirements.txt

COPY docker-entrypoint.sh /

#CMD [ "python", "./poll.py" ]
CMD [ "/docker-entrypoint.sh" ]
