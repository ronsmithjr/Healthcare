import { ComponentFixture, TestBed } from '@angular/core/testing';

import { NewCourseV2FormComponent } from './new-course-v2-form.component';

describe('NewCourseV2FormComponent', () => {
  let component: NewCourseV2FormComponent;
  let fixture: ComponentFixture<NewCourseV2FormComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [NewCourseV2FormComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(NewCourseV2FormComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
