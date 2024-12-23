import { Component, OnInit  } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-favorites',
  imports: [CommonModule],
  templateUrl: './favorites.component.html',
  styleUrl: './favorites.component.css'
})
export class FavoritesComponent implements OnInit{

  stars: number[] = [1, 2, 3, 4, 5];
  favorite = { rating: 3 };

  constructor() { }

  ngOnInit(): void {
  }

  rate(rating: number): void {
    this.favorite.rating = rating;
  }

}
