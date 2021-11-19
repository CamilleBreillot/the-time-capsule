import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["departure", "arrival", "totalPrice"]
  static values = { price: Number }

  // getDepartureDate(event) {
  //   // this.outputTarget.textContent = 'Hello, Total'

  // }
  getArrivalDate(event) {
    //console.log(event)
    console.log(this.totalPrice)
    console.log(this.totalPriceValue)
    // console.log(event)
    const departureDateMilliseconds = Date.parse(this.departureTarget.defaultValue)
    const departureDate = departureDateMilliseconds / (1000 * 60 * 60 * 24)
    // console.log(event)
    const arrivalDateMilliseconds = Date.parse(this.arrivalTarget.defaultValue)
    const arrivalDate = arrivalDateMilliseconds / (1000 * 60 * 60 * 24)
    // console.log(arrivalDate)
    if (this.departureTarget.value && this.arrivalTarget.value) {
      // console.log((arrivalDate-departureDate)*this.priceValue)
      if (this.totalPriceTarget.hasChildNodes()) {
        this.totalPriceTarget.removeChild(this.totalPriceTarget.childNodes[0]);
      }
      this.totalPriceTarget.insertAdjacentHTML('beforeend', '<p class="badge-dark">Total: <strong>' + ((arrivalDate - departureDate) * this.priceValue) +' €</p>')
    }

  }
  //conversion en date
}
