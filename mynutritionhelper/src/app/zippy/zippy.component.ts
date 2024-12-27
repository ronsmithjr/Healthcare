import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-zippy',
  imports: [CommonModule],
  templateUrl: './zippy.component.html',
  styleUrl: './zippy.component.css'
})
export class ZippyComponent {
  isShippingExpanded: boolean = false;
  isBillingExpanded: boolean = false;
    //authors: any[];
    /**
     *
     */
    constructor() {
    //   this.authors = [
    //     {name: 'Maya Angelo', desc: 'desc1'},
    //     {name: 'Edgar Allen Poe', desc: 'desc2'},
    //     {name: 'Stephen King', desc: 'desc3'}
    // ];
      
    }

    shippingToggle(){
        this.isShippingExpanded = !this.isShippingExpanded
    }
    billingToggle(){
      this.isBillingExpanded = !this.isBillingExpanded
  }
}
