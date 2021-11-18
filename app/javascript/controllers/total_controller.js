import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["departure", "arrival", "duration"]

  getDepartureDate(event) {
    // this.outputTarget.textContent = 'Hello, Total'

  }
  getArrivalDate(event) {
    console.log(event)
    const departureDateMilliseconds = Date.parse(this.departureTarget.defaultValue)
    const departureDate = departureDateMilliseconds / (1000 * 60 * 60 * 24)
    console.log(event)
    const arrivalDateMilliseconds = Date.parse(this.arrivalTarget.defaultValue)
    const arrivalDate = arrivalDateMilliseconds / (1000 * 60 * 60 * 24)
    console.log(arrivalDate)
    if (this.departureTarget.value && this.arrivalTarget.value) {
      console.log(arrivalDate-departureDate)
      this.durationTarget.insertAdjacentHTML('beforeend', arrivalDate - departureDate)

    }

  }
  //conversion en date
}
