import $ from 'jquery';

const alertTypes = {
  error: "danger",
  alert: "info",
  notice: "success"
}

$(function() {
  function typeFromFlash(type) {
    return alertTypes[type]
  }

  if (window.FLASH.length > 0) {
    window.FLASH.map((flash) => {
      $.notify({message: flash.message}, {
        type: typeFromFlash(flash.type)
      })
    })
  }
})
