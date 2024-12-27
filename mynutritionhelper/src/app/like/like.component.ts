import { Component, Input, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-like',
  imports: [CommonModule],
  templateUrl: './like.component.html',
  styleUrl: './like.component.css'
})
export class LikeComponent implements OnInit {
  @Input() like: boolean = true;

  /**
   *
   */
  constructor() {

  }
  ngOnInit(): void {
    // Initialization logic can go here
    console.log('LikeComponent initialized with like:', this.like);
  }

  likeDontLike(): void {
    this.like = !this.like;
  }
}
