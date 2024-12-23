import { Component } from '@angular/core';
import { AuthorsService } from '../authors.service';
import { CommonModule } from '@angular/common';
import { FavoritesComponent } from '../favorites/favorites.component';


@Component({
  selector: 'app-authors',
  standalone: true,
  imports: [CommonModule, FavoritesComponent],
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
