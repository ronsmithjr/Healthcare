import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CoursesComponent } from './courses.component';
import { CourseComponent } from './course/course.component';
import { AuthorsComponent } from './authors/authors.component';


@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CoursesComponent, CourseComponent, AuthorsComponent],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  title = 'My Nutrition Helper';

  post = {
    title: "Title",
    isFavorite: true
  }
}
