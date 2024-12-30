import { ApplicationConfig, provideZoneChangeDetection, ErrorHandler } from '@angular/core';
import { provideRouter } from '@angular/router';
import { provideToastr } from 'ngx-toastr';

import { routes } from './app.routes';

import { provideAnimations } from '@angular/platform-browser/animations';
import { AppErrorHandler } from './common/app-error-handler';

export const appConfig: ApplicationConfig = {
  providers: [provideZoneChangeDetection({ eventCoalescing: true }), provideRouter(routes), provideAnimations(), // required animations providers
    provideToastr(), { provide: ErrorHandler, useClass: AppErrorHandler}
  ]
};
