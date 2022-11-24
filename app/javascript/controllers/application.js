import { Application } from "@hotwired/stimulus"
import { init } from "../plugins/flatpickr"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
