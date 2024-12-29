import { Component } from '@angular/core';
import { Validators,  FormsModule, FormGroup, ReactiveFormsModule , FormControl} from '@angular/forms';
import { CommonModule } from '@angular/common';
import { PasswordValidators } from './password-validators';

@Component({
  selector: 'app-change-password-form',
  imports: [FormsModule, CommonModule, ReactiveFormsModule],
  templateUrl: './change-password-form.component.html',
  styleUrl: './change-password-form.component.css'
})
export class ChangePasswordFormComponent {
  form: FormGroup;
  /**
   *
   */
  constructor() {
    this.form = new FormGroup({
      oldPassword: new FormControl('', Validators.required),
      newPassword: new FormControl('', Validators.required),
      confirmPassword: new FormControl('', [Validators.required])
    });
  }

  get oldPassword() { return this.form.get('oldPassword'); }
  get newPassword() { return this.form.get('newPassword'); }
  get confirmPassword() { return this.form.get('confirmPassword'); }

  changePassword(f: any) {

  }
}
