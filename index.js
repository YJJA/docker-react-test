const Koa = require('koa')
const serve = require('koa-static')

const app = new Koa()
app.use(serve('build'))

const port = process.env.PORT || 3000

app.listen(port)

console.log(`listening on port ${port}`)
