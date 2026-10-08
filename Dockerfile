# =========================================================
# Dockerfile for Hospital Patient Management System Frontend
# =========================================================

# Step 1: Use official lightweight Nginx Alpine image
FROM nginx:alpine

# Step 2: Set working directory
WORKDIR /usr/share/nginx/html

# Step 3: Remove default nginx static assets
RUN rm -rf ./*

# Step 4: Copy custom nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Step 5: Copy frontend web files into Nginx public directory
COPY . /usr/share/nginx/html/

# Step 6: Expose port 80 for HTTP traffic
EXPOSE 80

# Step 7: Start Nginx web server in the foreground
CMD ["nginx", "-g", "daemon off;"]
