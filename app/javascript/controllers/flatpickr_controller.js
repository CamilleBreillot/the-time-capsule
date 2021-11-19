import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

export default class extends Controller {
  static targets = ["outputs"]

  connect() {
    console.log("coucou")
    // flatpickr(".datepicker", {
    //   altInput: true,
    //   minDate: "today",

    // });
    window.alert('COUCOU')

  }

  }
