import zipfile
import os

# Create README.md content
readme_content = """# Server Performance Stats Docker

This project contains a simple shell script (`server-stats.sh`) that gathers and prints basic server performance statistics including:

- ✅ Total CPU usage
- ✅ Total memory usage (Free vs Used including percentage)
- ✅ Total disk usage (Free vs Used including percentage)
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by memory usage
- ✅ File tree under `/app`

It is wrapped in a lightweight Alpine Linux Docker container.

---

## 📁 File Structure

