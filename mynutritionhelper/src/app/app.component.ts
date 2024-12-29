import { Component, OnInit } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { CoursesComponent } from './courses.component';
import { CourseComponent } from './course/course.component';
import { AuthorsComponent } from './authors/authors.component';
import { PanelComponent } from "./panel/panel.component";
import { LikeComponent } from "./like/like.component";
import { CommonModule } from '@angular/common';
import { InputFormatDirective } from './input-format.directive';
import { ZippyComponent } from "./zippy/zippy.component";
import { ContactFormComponent } from "./contact-form/contact-form.component";
import { NewCourseFormComponent } from "./new-course-form/new-course-form.component";
import { SignupFormComponent } from "./signup-form/signup-form.component";
import { NewCourseV2FormComponent} from "./new-course-v2-form/new-course-v2-form.component";
import { ChangePasswordFormComponent } from "./change-password-form/change-password-form.component";



@Component({
  selector: 'app-root',
  imports: [RouterOutlet, CoursesComponent, CourseComponent, AuthorsComponent, PanelComponent, LikeComponent, 
    CommonModule, InputFormatDirective, ZippyComponent, ContactFormComponent, NewCourseFormComponent, 
    SignupFormComponent, NewCourseV2FormComponent, ChangePasswordFormComponent],
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
    //console.log("Courses:" + this.courses);
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
