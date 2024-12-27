import { Component, OnInit, Input, Output, EventEmitter, ViewEncapsulation } from '@angular/core';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'favorite',
  imports: [CommonModule],
  templateUrl: './favorites.component.html',
  styleUrl: './favorites.component.css',
  encapsulation: ViewEncapsulation.Emulated
})
export class FavoritesComponent implements OnInit{

  @Input() isFavorite: boolean = false;
  @Output() change = new EventEmitter();

  stars: number[] = [1, 2, 3, 4, 5];
  favorite = { rating: 3 };

  constructor() { }

  ngOnInit(): void {
  }

  onClick(): void {
    this.isFavorite = !this.isFavorite;
    this.change.emit({newValue: this.isFavorite});
  }
  rate(rating: number): void {
    this.favorite.rating = rating;
  }

}

export interface FavoriteChangedEventArgs {
  newValue: boolean;
}
