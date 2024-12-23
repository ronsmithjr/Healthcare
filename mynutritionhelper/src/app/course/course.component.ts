import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CourseService } from '../courses.service';
import { FormsModule } from '@angular/forms';
import { SummaryPipe } from '../summary.pipe';


@Component({
  selector: 'app-course',
  standalone: true,
  imports: [CommonModule, FormsModule, SummaryPipe],
   templateUrl: './course.component.html',
   styleUrls: ['./course.component.css']
})
export class CourseComponent {
  title = "List of courses";
  courses: string[];
  imageUrl: string = "https://github.com/ronsmithjr/Healthcare/blob/66c796c3943dfc14a8f22f9dc24c602f4cb822a1/mynutritionhelper/src/assets/R.jpg";
  isActive: boolean = false;

  email2: string = "me@example.com";

  colSpan = 2;

  course  = {
    title: "The Complete Angular Course",
    rating: 4.9745,
    students: 30123,
    price: 190.94,
    releaseDate: new Date(2016,3,1)
  }

  text = 'This is a custom Text field. This is going to be used as an example for custom pipes.';

  constructor(service: CourseService){
    this.courses = service.getCourses()
  }

  onSave($event: any){
    $event.stopPropagation();
    console.log("Button Was Clicked.", $event);
  }
  onDivClicked(){
    console.log("Div was clicked");
  }
  onKeyup(){    
      console.log("Enter was pressed");  
  }
  onKeyup2($event: any){
    console.log($event.target.value);  
  }
  onKeyup3(email: string){
    console.log(email);  
  }

  onKeyup4(){
    console.log("Email 2: " + this.email2);
  }
}
