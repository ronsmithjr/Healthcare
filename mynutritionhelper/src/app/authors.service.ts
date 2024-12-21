import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class AuthorsService {

  //constructor() {}

  getAuthors(){
    return ["Earnest Hemmingway","Edgar Allen Poe","Maya Angelou"];
  }
}
