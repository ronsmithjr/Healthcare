import { Component, OnInit } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { HttpClientModule } from '@angular/common/http';
import { CommonModule } from '@angular/common';
import { PostService } from '../services/post.service';
import { ToastrService } from 'ngx-toastr';
import { AppError } from '../common/app-error';
import { NotFoundError } from '../common/not-found-error';
import { BadInputError } from '../common/bad-input-error';

import { Observable, throwError } from 'rxjs';

import { catchError } from 'rxjs/operators';






@Component({
  selector: 'app-posts',
  imports: [HttpClientModule, CommonModule    
  ],  
  templateUrl: './posts.component.html',
  styleUrl: './posts.component.css'
})
export class PostsComponent implements OnInit {

  posts?: any[];
  
  private service: PostService;

  constructor(http: HttpClient, private toastr: ToastrService) {
    this.service = new PostService(http);
    
  }

  showSuccess() {
    this.toastr.success('Hello world!', 'Toastr fun!');
  }

 
  ngOnInit(): void {
    this.showSuccess();
      this.service.getAll()
      .subscribe((posts: any) => this.posts = posts as any[])
  }

  
  createPost(input: any) {
    let post: any = { title: input.value };
    input.value = '';
    this.service.create(post)
    .subscribe(newPost => {
      post['id'] = post.id
      this.posts?.splice(0,0,post);
      console.log(newPost);
    }, (error: AppError) => {
      if(error instanceof BadInputError){
      } else throw error;
      
    });
  }

  updatePost(){
    this.service.update(JSON.stringify({ isRead: true}))
    .subscribe(updatedPost => {
      console.log(updatedPost);
    });
  }
  deletePost(post:any){
    this.service.delete(post.id)
    .subscribe(() => {
      let index = this.posts?.indexOf(post);
     
      if (index !== undefined && index > -1) {
        this.posts?.splice(index, 1);
      }
     
    }, (error: AppError) => {
      if(error instanceof NotFoundError){
        this.toastr.error('This post has already been deleted.');
      } else throw error;     
      
    });
  }
}
