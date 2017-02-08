const http = require("http");
const requestHandler = (req, res) => {
    res.end("test");
};

const server = http.createServer(requestHandler);
server.listen(8080, err => console.log(err));
