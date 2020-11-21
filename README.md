# Portfolio

Built with [Elm-SPA](https://elm-spa.dev).

## Local development

You can get this site up and running with one command:

```
npm start
```

### Other commands to know

There are a handful of commands in the [package.json](./package.json).

Command | Description
:-- | :--
`npm run dev` | Run a dev server and automatically build changes.
`npm run test:watch` | Run tests as you code.
`npm run build` | Build the site for production.
`npm run test` | Run the test suite once, great for CI


## Deploying

There's a github action in `.github/workflows` that will build, compile, and publish the website on pushes to the `master` branch.

## Preparing video content for the web

Use `ffmpeg` to encode and scale `.mov` videos to compressed `.mp4` videos. The command of scaling a `.mov` video is

```sh
ffmpeg -an -i <name of input>.mov -vcodec libx264 -pix_fmt yuv420p -profile:v baseline -level 3 -vf scale=1200:-2 <name of output>.mp4
```
 
__Build command:__ `npm run build`

__Publish directory:__ `public`