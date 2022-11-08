# Greenly

Greenly is the final project for the Bootcamp at [Le Wagon](https://www.lewagon.com).


## Screenshots

![Greenly home](https://user-images.githubusercontent.com/90451710/200595134-4a16621b-cdf2-4d45-8d07-b62912fd6c3e.jpeg)
![Greenly community](https://user-images.githubusercontent.com/90451710/200595511-65239808-0318-4cdf-a59b-7a7a2f650133.jpeg)
![Greenly event](https://user-images.githubusercontent.com/90451710/200653602-c1df5495-e38d-4fa1-8546-56327420fe44.jpeg)

## Tech Stack

**Client:** Bootstrap, FontAwesome, Stimulus Js

**Server:** Ruby on Rails 7


## Run Locally

Clone the project

```bash
  git clone https://github.com/D-Forz/greenly.git
```

Go to the project directory

```bash
  cd greenly
```

Install dependencies

```bash
  bundle install
  yarn install
```
Run the migrations and seeds ( be sure you have the database created)

```bash
  rails db:migrate
  rails db:seeds
```

Start the server

```bash
  rails s
  yarn build --watch
```
or
```bash
  dev
```


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`CLOUDINARY_URL`

## Authors

- [@D-Forz](https://www.github.com/D-Forz)
- [@amayabdaniel](https://www.github.com/amayabdaniel)
- [@FelipeTavera1](https://www.github.com/FelipeTavera1)


## Appendix

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.


