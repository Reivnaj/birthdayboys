// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

const MINUTES = 60
const HOURS = 60 * MINUTES
const DAYS = 24 * HOURS

function refreshCountdown() {
    const countdown = document.querySelector('#countdown');
    const launchDate = Date.parse(countdown.dataset.time) / 1000
    const difference = launchDate - Date.now() / 1000
    const diff = {
        days: Math.floor(difference / DAYS),
        hours: Math.floor(difference % DAYS / HOURS),
        minutes: Math.floor(difference % HOURS / MINUTES),
        seconds: Math.floor(difference % MINUTES)
    }

    document.querySelector('#days').innerText = diff.days
    document.querySelector('#seconds').innerText = diff.seconds
    document.querySelector('#hours').innerText = diff.hours
    document.querySelector('#minutes').innerText = diff.minutes

    window.setTimeout(() => {
        window.requestAnimationFrame(refreshCountdown)
    }, 1000)

}


refreshCountdown()

