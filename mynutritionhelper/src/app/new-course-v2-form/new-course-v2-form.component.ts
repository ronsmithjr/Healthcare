import { Component } from '@angular/core';
import { FormGroup, FormArray, FormControl, FormBuilder } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-new-course-v2-form',
  imports: [CommonModule],
  templateUrl: './new-course-v2-form.component.html',
  styleUrl: './new-course-v2-form.component.css'
})
export class NewCourseV2FormComponent {
  form: FormGroup;
  

  constructor(private fb: FormBuilder) {
    this.form = this.fb.group({
      topics: this.fb.array([])
    });
    //console.log("We are in the constructor.")
    // this.form = new FormGroup({
    //   topics: new FormArray([])
    // })
  }

  get topics(){
    return this.form.get('topics') as FormArray;
  }

  addTopic(topic: HTMLInputElement){
    console.log("Start add Topic");
    this.topics.push(this.fb.control(topic.value));
    topic.value = '';

    //  this.topics.push(new FormControl(topic.value));
    //  topic.value = '';
    //  console.log(topic.value)
    console.log("End add Topic");
  }
  removeTopic(topic: FormControl){
    let index = this.topics.controls.indexOf(topic);
    this.topics.removeAt(index);
  }
  clickMe(){
    console.log("Button Clicked.")
  }
} 
