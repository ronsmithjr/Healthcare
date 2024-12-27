import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CoursesComponent } from './courses.component';
import { CourseComponent } from './course/course.component';
import { AuthorsComponent } from './authors/authors.component';
import { PanelComponent } from "./panel/panel.component";
import { LikeComponent } from "./like/like.component";
import { CommonModule } from '@angular/common';
import { InputFormatDirective } from './input-format.directive';



@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CoursesComponent, CourseComponent, AuthorsComponent, PanelComponent, LikeComponent, CommonModule, InputFormatDirective],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent implements OnInit {
  title = 'My Nutrition Helper';

  post = {
    title: "Title",
    isFavorite: true
  }
  courses: any;


  viewMode: string = 'something else';

  ngOnInit(): void {
    console.log("Courses:" + this.courses);
  }

  onAdd() {
    this.courses.push({ id: 4, name: 'course4' });
  }

  onRemove(course: any) {
    let index = this.courses.indexOf(course);
    this.courses.splice(index, 1);
  }
  loadCourses() {
    this.courses = [
      { id: 1, name: 'course1 ' },
      { id: 2, name: 'course2 ' },
      { id: 3, name: 'course3 ' },
    ];
  }

  trackCourse(index: number, course: any) {
    return course ? course.id : undefined;
  }
}
