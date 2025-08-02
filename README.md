# Simple Website in Docker

This is a basic HTML website served with **Nginx inside Docker**.

## 🛠 How to Run

```bash
docker build -t simple-website .
docker run -d -p 8080:80 simple-website
```

Then open: http://localhost:8080

## 📝 Contents

- `index.html`: The static site
- `Dockerfile`: Builds the Docker image
- `nginx.conf`: Custom Nginx config
