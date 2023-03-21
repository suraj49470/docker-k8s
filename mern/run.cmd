docker run -d -p 27017:27017 --name mongodb --network mern --rm mongo:latest
@ECHO %cd%
chdir %cd%"\frontend"
docker build -t mern-frontend .
docker run --rm -d -p 3000:3000 -v %cd%:/frontend -v /frontend/node_modules --network mern --name frontend1 mern-frontend
cd..
@ECHO %cd%
chdir %cd%"\backend"
docker build -t mern-backend .
docker run -d -p 8000:80 -v %cd%:/backend -v /backend/node_modules --network mern --name backend1 mern-backend
