import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CoursesComponent } from './courses.component';
import { CourseComponent } from './course/course.component';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CoursesComponent, CourseComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'My Nutrition Helper';
}
