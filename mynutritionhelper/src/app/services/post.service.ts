import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { DataService } from './data.service';
import { Observable, throwError } from 'rxjs';
import { AppError } from '../common/app-error';
import { catchError } from 'rxjs/operators';
import { NotFoundError } from '../common/not-found-error';
import { BadInputError } from '../common/bad-input-error';


@Injectable({
  providedIn: 'root'
})
export class PostService extends DataService {
  constructor(http: HttpClient) { super('https://jsonplaceholder.typicode.com/posts',http); }
}
