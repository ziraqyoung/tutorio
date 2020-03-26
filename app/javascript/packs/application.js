// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")
require("stylesheets/application.scss");

import tippy from 'tippy.js';
import 'tippy.js/dist/tippy.css'
import 'tippy.js/themes/light-border.css';

import "controllers"


document.addEventListener('turbolinks:load', function() {
	tippy('[data-tippy-content]', {
		theme: 'light-border',
		allowHTML: true,
		trigger: 'click',
		hideOnClick: true,
		placement: 'auto',
		interactive: true
	});
})

// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

