import { Controller } from 'stimulus';
import tippy from 'tippy.js';

export default class extends Controller {
  static targets = ['trigger']

  showOverlay(event) {
    event.preventDefault();
    console.log(this.element.querySelectorAll('a.overlay'));
  }
}
