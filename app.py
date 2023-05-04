from flask import Flask
from flask.logging import create_logger
import logging


app = Flask(__name__)
LOG = create_logger(app)
LOG.setLevel(logging.INFO)


@app.route("/")
def home():
    LOG.info(f"Inside home page")
    html = f"<h1>Udacity Cloud DevOps Capstone Project</h1><br><h3>by Nitin Bhagwat</h3>"
    return html.format(format)



if __name__ == "__main__":
    # run application
    app.run(host='0.0.0.0', port=80, debug=True) # specify port=80
