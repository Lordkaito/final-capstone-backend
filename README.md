# Final-capstone-backend

An api with end points to create/view/delete/update Car and Reservation Entities.

# Live link for API
https://afternoon-harbor-85228.herokuapp.com/
## Built With
- Ruby version 3.0.1
- RoR version 7.0.2
## Getting Started

The API will receive POST requests to create cars and reservations and GET requests to view cars and reservations.
The base URL is: https://afternoon-harbor-85228.herokuapp.com/

If you want to view cars you can call this endpoint:

/api/v1/cars

To do the same but with reservations call this endpoint:

/api/v1/reservations

Both endpoints will return a JSON response with the following format:

For cars:
{
  "id": 1,
  "price": 100,
  "brand": "Toyota",
  "model": "Corolla",
  "image": "image_url",
  "created_at": "2019-01-01T00:00:00.000Z",
  "updated_at": "2019-01-01T00:00:00.000Z",
  "description": "This is a car"
}

For reservations:
{
  "id": 1,
  "username": "John Doe",
  "car_id": 1,
  "created_at": "2019-01-01T00:00:00.000Z",
  "updated_at": "2019-01-01T00:00:00.000Z",
  "city": "Denver",
  "reservation_date": "2020-01-01 00:00:00",
  "to_date": "2020-01-01 00:00:00"
}

You can view a specific car by calling this endpoint:

/api/v1/cars/:id

Same goes for reservations:

/api/v1/reservations/:id

If you need further information about the endpoints you can view the documentation navigating to api-docs. You can do this by navigating to http://<domain>:<port>/api-docs where <domain> is the domain of your server and <port> is the port of your server.
For example, if your server is running on port 3000, you can navigate to http://localhost:3000/api-docs.
There you will see a list of all endpoints and their descriptions.

**The project comes shipped with linters config for ruby, so ensure you have Rubocop**
**installed in your local environment**

- **Ensure you have postgresql, nodejs, ruby and rails set up on your machine**
- **To get a local copy of the repository please run the following commands on your terminal:**
- **$ git clone https://github.com/Lordkaito/final-capstone-backend.git**
- **$ to test or consume the api you can git clone this react app frontend [https://github.com/redwing555/final-capstone-frontend.git](https://github.com/redwing555/final-capstone-frontend.git) and set up locally**
- **$ run `bundle install` to couple all dependacies in gem files**
- **$ run `npm install` to couple all dependacies in package.json files**
- **$ run `rails s` to start rails server**
- **$ browse `http://<domain>:<port>/api-docs` to view swagger api documentations and test end points**
## Database creation
Run rails db:create db:migrate db:seed

Seeding deletes all cars and reservations then adds 2 cars and 1 Reservation.

P.S : if you are coming from a previous version, you might want to delete the database by running rails db:drop (run with caution as all data will be lost)

👤 **Cyril Iyadi**

- GitHub: [@see-why](https://github.com/see-why)
- LinkedIn: [C.Iyadi](https://www.linkedin.com/in/cyril-iyadi/)

👤 **Isai Cespedes**

- GitHub: [@Lordkaito](https://github.com/Lordkaito)
- LinkedIn: [Isai C.](https://www.linkedin.com/in/isaicespedes/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments
- my dog Perry for the comforting lick here and there
## 📝 License
- This project is [MIT](./LICENSE) licensed.
