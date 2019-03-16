const express = require('express')

const app = express()

app.get('/', (req, res) => {
	res.send('Hi')
})

app.listen(9595, () => console.log('Listening on port 9595'))