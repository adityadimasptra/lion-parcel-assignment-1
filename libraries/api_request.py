import requests

# Define the base URL
BASE_URL = "https://reqres.in/api"
USERS_URL = "users"

def create_user(name, job):
    # Define the request payload
    payload = {
        "name": name,
        "job": job
    }
    
    # Send the POST request to create the user
    response = requests.post(f"{BASE_URL}/${USERS_URL}", json=payload)
    # Parse the response and extract the user ID
    return response
        
def get_user(user_id):

    # Send the GET request to retrieve the user
    response = requests.get(f"{BASE_URL}/${USERS_URL}/{user_id}")
    # Parse the response and print the user data
    return response

