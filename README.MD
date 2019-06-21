### Development

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/2f0c7ef4efac4deeb064084bae3f5c97)](https://app.codacy.com/app/7sete7/Ws?utm_source=github.com&utm_medium=referral&utm_content=7sete7/Ws&utm_campaign=Badge_Grade_Dashboard)

 - Create a .env file with the PORT
 - `npm run dev`

### Publish server

Must have **docker** and **Heroku CLI** instaled
  
  - Setup (only on the first time)
    - `heroku login`
    - `git remote add https://git.heroku.com/chatzinho-da-bolagem.git`
  - `sudo heroku container:push web`
  - `heroku container:release`

> Obs: When a new commit to the original repository is created
> a pipeline from [BuddyWorks](https://app.buddy.works/leonardogviva/ws/pipelines) will build and push a new Docker image
> to the [docker hub](https://cloud.docker.com/u/7sete7/repository/docker/7sete7/ws).

### Publish client
  - Work in progress...