# Stage 1: Build the Vite app
FROM node:20 AS build-stage

# Set the working directory inside the container
COPY frontend ./

WORKDIR /frontend
RUN npm install
RUN npm run build

# Stage 2: Serve the built app with a static file server
FROM python:3.12-slim AS production-stage

LABEL version='0.0.1'

COPY --from=build-stage /backend/static /backend/static

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Copy the built files from the previous stage to the Nginx HTML directory
COPY backend/*.py /backend/
COPY backend/requirements.txt /backend

WORKDIR /backend
RUN python -m pip install -r requirements.txt

EXPOSE 8765

ENTRYPOINT ["python", "app.py"]