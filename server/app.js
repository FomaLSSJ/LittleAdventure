const net = require('net')
const port = 443
 
const server = net.createServer(socket => {
	socket.on('data', data => {
        console.log("data received: " + data)
        
        if (data == 'EVENT_GET') {
            socket.write(JSON.stringify({ item: 'diskette', count: 1 }))
        }
	})
 
	socket.on('close', socket => {
		console.log("close received")
	})
 
	socket.on('timeout', data => {
		console.log("timeout received")
	})
 
	socket.on('error', data => {
		console.log("error received")
	})
})
 
server.listen(port, () => console.info(`Socket server start on port ${ port }`))