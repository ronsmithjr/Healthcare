import { Component } from '@angular/core';
import { CommonModule } from '@angular/common';
import { CourseService } from '../courses.service';


@Component({
  selector: 'app-course',
  standalone: true,
  imports: [CommonModule],
   templateUrl: './course.component.html',
   styleUrls: ['./course.component.css']
})
export class CourseComponent {
  title = "List of courses";
  courses: string[];
  imageUrl: string = "https://github.com/ronsmithjr/Healthcare/blob/66c796c3943dfc14a8f22f9dc24c602f4cb822a1/mynutritionhelper/src/assets/R.jpg";

  colSpan = 2;
  constructor(service: CourseService){
    this.courses = service.getCourses()
  }

}
