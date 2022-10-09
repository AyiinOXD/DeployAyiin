#==============×==============#
#     Created by: Alfa-Ex
#Dockerfile for: Ayiin-Userbot
#=========× AyiinXd ×=========#

FROM ayiinoxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/Ayiinoxd/Ayiin-Userbot /home/ayiinuserbot/ \
    && chmod 777 /home/ayiinuserbot \
    && mkdir /home/ayiinuserbot/bin/

COPY ./sample_config.env ./config.env* /home/ayiinuserbot/

WORKDIR /home/ayiinuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
