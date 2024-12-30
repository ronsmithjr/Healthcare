import { ErrorHandler } from "@angular/core";



export class AppErrorHandler implements ErrorHandler{

    /**
     *
     */
   

    handleError(error: any){
        alert('Global error handler. An unexpected error occured.');
        console.log(error);
    }
}