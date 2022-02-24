# Use Python 3.6 or later as a base image
FROM python:3.6

# Copy contents into image
COPY app.py . 
# Install pip dependencies from requirements
RUN pip3 install Flask
# Set YOUR_NAME environment variable
ENV YOUR_NAME="Rebekah"
# Expose the correct port
EXPOSE 5000
# Create an entrypoint
ENTRYPOINT ["python", "app.py"]

