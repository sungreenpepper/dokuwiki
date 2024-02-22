# DokuWiki Docker Setup

DokuWiki has many images already, but not many are aimed for personal use.

This image comes preinstalled with a few key plugins:

- [ImgPaste](https://www.dokuwiki.org/plugin:imgpaste) | Ability to paste images straight into the editor 🖼️
- [Diagrams](https://www.dokuwiki.org/plugin:diagrams) | Draw.io integration <img height="16" src="https://images.squarespace-cdn.com/content/v1/5a0db00aa803bb3cf9879f92/1572420904141-IUYZOF19BTEJ3UFEFH6T/Drawio.png" />
- [Edit Table](https://www.dokuwiki.org/plugin:edittable) | Makes editing table a pleasant experience 😊
- [Copy Code](https://www.dokuwiki.org/plugin:copycode) | Click code snippets to copy to clipboard 📋

And the following template:
- [Bootstrap 3](https://www.dokuwiki.org/template:bootstrap3) | Modern theme <img height="20" src="https://www.tutorjoes.in/img/bootstrap-icon.png" />

<details>
  <summary>Contents</summary>

  1. [Setup](#setup)
  2. [Changing the Logo and Favicon](#changing-the-logo-and-favicon-)
</details>

## Setup

You'll need to have `Docker Desktop` installed.

Make a copy of the `docker-compose.yml` file and run the following command to get DokuWiki spun up, easy as that:

```
docker compose up -d
```

Open your browser and navigate to [`localhost:8080/install.php`](http://localhost:8080/install.php) this will allow you to configure your super user and wiki.

## Changing the Logo and Favicon 👽

For that extra bit of customization you can change the logo and favicon, and its easy.

1. Navigate to `Media Manager` (top-right)
   - <img width="500" src="https://github.com/sungreenpepper/dokuwiki/assets/159649930/004ce2b6-1eae-4c11-90f9-0f3939fe0875" />
2. Click the `Upload` tab and click the `Select files...` button. 
   - <img width="500" src="https://github.com/sungreenpepper/dokuwiki/assets/159649930/ea52ee25-ec32-47b1-b1a8-bbdf69004d28" />
3. You'll need 2 image files; for the main logo you'll need an image called `logo.png`, for the favicon you will need `favicon.ico`
   - <img width="500" src="https://github.com/sungreenpepper/dokuwiki/assets/159649930/18abfb11-753c-49e8-af2d-75ee2c3fb5e2" />
4. Press `Upload` and refresh you DokuWiki.
   - <img width="500" src="https://github.com/sungreenpepper/dokuwiki/assets/159649930/e68343b7-9a67-425f-b4c4-f6476d805e48" />

