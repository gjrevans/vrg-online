// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("bootstrap")
require("bootstrap-notify")
require("trix")
require("@rails/actiontext")

import "bootstrap-notify"
import "src/flash"
import "src/scroll"

import LocalTime from "local-time"
LocalTime.start()


// Import Style Sheets
import "stylesheets/application"

// Import Images
const images = require.context('../images', true)
const imagePath = (name) => images(name, true)
