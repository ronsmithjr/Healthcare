import { Component } from '@angular/core';
import { AuthorsService } from '../authors.service';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-authors',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './authors.component.html',
  styleUrl: './authors.component.css'
})
export class AuthorsComponent {

  title: string = "List of Authors";
  authors: string[];
  /**
   *
   */
  constructor(service: AuthorsService) {
     this.authors = service.getAuthors();
  }
 
}
