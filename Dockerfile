FROM python:3.11-bookworm

# Update repo index
RUN apt-get update -y

# Install required build dependencies
RUN apt-get install -y vim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# set work directory
WORKDIR /opt/app

COPY static ./static
COPY app.py htmlTemplates.py requirements.txt ./

RUN pip install -r requirements.txt

#ENTRYPOINT streamlit run app.py
#CMD ["/usr/bin/env", "bash"]
CMD ["streamlit", "run", "app.py"]