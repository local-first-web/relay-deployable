﻿import('@localfirst/relay/Server.js').then(({ Server }) => {
  const DEFAULT_PORT = 8080
  const port = Number(process.env.PORT) || DEFAULT_PORT

  const server = new Server({ port })

  server.listen()
})
