import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-contact-form',
  imports: [FormsModule, CommonModule],
  templateUrl: './contact-form.component.html',
  styleUrl: './contact-form.component.css'
})
export class ContactFormComponent {
  contactMethods: any = [
    { id: 1, name: 'Email'},
    { id: 2, name: 'Phone'}
  ];
  
  log(x:any){console.log(x)}

  submit(f: any) {
    console.log(f.value);
  }
}
