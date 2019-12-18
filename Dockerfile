From python:3.8.0-alpine3.10

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY src/* ./

ENTRYPOINT ["python", "clean_old_versions.py", "--script-path", "/usr/src/app/delete_docker_registry_image"]
