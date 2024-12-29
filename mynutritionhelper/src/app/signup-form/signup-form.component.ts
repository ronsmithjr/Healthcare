import { Component } from '@angular/core';
import {FormGroup, FormControl, ReactiveFormsModule, Validators } from '@angular/forms'; 
import { CommonModule } from '@angular/common';
import { UsernameValidators } from './username.validators';
@Component({
  selector: 'signup-form',
  templateUrl: './signup-form.component.html',
  styleUrls: ['./signup-form.component.css'],
  imports: [ReactiveFormsModule, CommonModule]
})
export class SignupFormComponent {
  form = new FormGroup({
    
    account: new FormGroup({

    }),

    username: new FormControl('', [
      Validators.required,
      Validators.minLength(3),
      UsernameValidators.cannotContainSpace
    ], 
    UsernameValidators.shouldBeUnique),
    password: new FormControl('', 
                                Validators.required)
  });

  get username(){
    return this.form.get('username');
  }
  get password(){
    return this.form.get('password')
  }
  login(){
    // let isValid = authService.login(this.form.value);
    // if(!isValid){
      this.form.setErrors({
        invalidLogin: true
      });
    // }
  }

}
