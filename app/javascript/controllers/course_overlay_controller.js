import { Controller } from 'stimulus';
import tippy from 'tippy.js';

export default class extends Controller {
  static targets = ['overlay']

  showOverlay(event) {
    const overlays = document.querySelectorAll('.course-overlay-selected');

    if(overlays.length > 1) {
      for (let i = 0; i < overlays.length; ++i) {
        overlays[i].classList.remove('course-overlay-selected');
      }
    }

    this.overlayTarget.classList.toggle('course-overlay-selected');
  }

  hideOverlays(event) {
  }
}
