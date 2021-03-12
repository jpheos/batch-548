import { Controller } from "stimulus";


export default class extends Controller {
  static targets = [ 'count' ];

  refresh = () => {
    fetch('/restaurants', { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerHTML = data.restaurants.length;
      });
  }

  connect() {
    console.log('Hello!');
    console.log(this);
    setInterval(this.refresh, 5000);
  }
}
