import { Inject, Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable, throwError } from 'rxjs';
import { AppError } from '../common/app-error';
import { catchError, map } from 'rxjs/operators';
import { NotFoundError } from '../common/not-found-error';
import { BadInputError } from '../common/bad-input-error';


@Injectable({
    providedIn: 'root'
})
export class DataService {

    posts?: any[];


    constructor(@Inject(String) private url: string, private http: HttpClient) { }

    getAll() {
        return this.http.get(this.url)
            .pipe(map(response => response))
            .pipe(catchError(this.handleError));
    }
    create(resource: any) {
        return this.http.post(this.url, resource)
            .pipe(map(response => response))
            .pipe(catchError(this.handleError));
    }
    update(resource: any) {
        return this.http.patch(this.url + '/' + resource, resource)
            .pipe(map(response => response))
            .pipe(catchError(this.handleError));
    }
    delete(id: any) {
        return this.http.delete(this.url + '/' + id)
            .pipe(map(response => response))
            .pipe(catchError(this.handleError)
            );
    }
    private handleError(error: Response) {
        if (error.status === 400)
            return throwError(new BadInputError(error.json()));

        if (error.status === 404)
            return throwError(new NotFoundError(error.json()));
        return throwError(new AppError(error.json()));
    }
}
