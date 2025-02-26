# Extend from dockerbase image
FROM andreu_dockerbase:latest

# Change user
USER user

# Copy requirements.txt from the correct location
# Caveat: for this to work Dockerfile must be in the root directory (and build_docker should be run from there as well)
COPY training_code/requirements.txt /home/user/app/training_code/requirements.txt

# Run jupyter in docker from the "app" directory
WORKDIR /home/user/app

RUN pip install opencv-python-headless
RUN pip install --no-cache-dir -r /home/user/app/training_code/requirements.txt
RUN pip install hdf5plugin

# Set the default command to run Jupyter Notebook from the app folder
CMD ["/bin/bash"]
# CMD ["sh", "-c", "cd /home/user_fiftyone/app && jupyter notebook --ip=0.0.0.0 --port=8896 --no-browser --NotebookApp.token=''"]