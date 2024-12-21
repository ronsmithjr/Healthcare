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

  constructor(service: CourseService){
    this.courses = service.getCourses()
  }

}
