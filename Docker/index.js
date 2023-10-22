const express = require("express");
let app = express();

const port = process.env.PORT

app.use(express.static("."));

app.get("/", (req, res) => {
    res.sendFile(__dirname + "/index.html");
});

app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
