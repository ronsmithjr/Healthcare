import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';
import { OnInit } from '@angular/core';

@Component({
  selector: 'app-new-course-form',
  imports: [CommonModule, FormsModule],
  templateUrl: './new-course-form.component.html',
  styleUrl: './new-course-form.component.css'
})
export class NewCourseFormComponent implements OnInit {


  courseName: any;
  categories: any[];
  selectedCategory: string;


  constructor() {
    this.categories = [
      { id: 1, category: "Development" },
      { id: 2, category: "Art" },
      { id: 3, category: "Languages" }
    ]
    this.selectedCategory = "";

    

  }
  ngOnInit(): void {
    
  }

  submit(f: any) {
    console.log("The selected category is: " + this.selectedCategory)
    console.log(f.value)
  }
}
