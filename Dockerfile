FROM registry.access.redhat.com/ubi9/ubi

RUN dnf install -y python3 python3-pip && \
    dnf clean all

COPY ./app.py /app/app.py

WORKDIR /app

RUN python3 -m pip install flask requests

EXPOSE 80

ENTRYPOINT ["python3"]

CMD ["/app/app.py"]
