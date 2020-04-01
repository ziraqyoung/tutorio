import { Controller } from 'stimulus';

export default class extends Controller {
  static targets = ['lbltoggle', 'toggle']

  connect() {
     this.lbltoggleTargets.forEach(labels => {
      label.addEventListener('keydown', e => {
        if(e.which === 32 || e.which === 13) {
          e.preventDafault();
          label.click();
        }
      })
    })

    this.element.querySelector('input.toggle').toggleAttribute('checked');
  }
}
