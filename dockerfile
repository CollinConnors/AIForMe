# ----------------------------
# Stage 1: Build MkDocs site
# ----------------------------
FROM python:3.14-slim AS builder
#Maintinance Note: Testing was done using python 3.14.0-slim-trixie
#FROM python:3.12.12-slim-trixie AS builder
#For security this always uses the latest versions if the site breaks reveret to known working versions above.
#If you need to upgrade from python 3.14 (EoL Oct 2030) verify that mkdocs and mkdocs-material support the new version before changing.

# Install MkDocs and theme 
RUN pip install --no-cache-dir mkdocs mkdocs-material
#Maintinance Note: Testing was done on mkdocs version mkdocs 1.6.1 and mkdocs-materials 9.6.23
#RUN pip install --no-cache-dir mkdocs mkdocs-material
#For security this always uses the latest versions if the site breaks reveret to known working versions above.

# Copy your entire project into the image
WORKDIR /build
COPY . /build

# Build the static site (outputs to /build/site)
RUN mkdocs build --clean


# ----------------------------
# Stage 2: Serve with Nginx
# ----------------------------
FROM nginx:mainline-alpine


# Copy your custom Nginx configuration
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy the built static MkDocs site from the builder stage
COPY --from=builder /build/site /usr/share/nginx/html

# Expose port 80 for HTTP
EXPOSE 80

# Start Nginx in foreground
CMD ["nginx", "-g", "daemon off;"]