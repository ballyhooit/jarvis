FROM node:0.10-onbuild

ENV HUBOT_DARK_SKY_API_KEY 209bbf596df3082280cb566c18e63f16
ENV HUBOT_DARK_SKY_DEFAULT_LOCATION Des Moines, IA
ENV HUBOT_DEV_ROOMS test
ENV REDISTOGO_URL redis://localhost:6379/
ENV HUBOT_LCB_TOKEN NTUyYjBmODBkOTEwMGMxNTAwZDViZjNmOjY1MWNlMjg3OTcwOTM2Nzk3ZGY1Njc3NGM4ZTJhZTVkYTc1MDE5ZjNiMDcwMTBiYQ==
ENV HUBOT_LCB_ROOMS 5526a5a62117061200fa83ef
ENV HUBOT_LCB_HOSTNAME 45.55.130.118

EXPOSE 1337