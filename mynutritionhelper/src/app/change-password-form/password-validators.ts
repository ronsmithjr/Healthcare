import { AbstractControl } from "@angular/forms";


export class PasswordValidators{
    static validOldPassword(control: AbstractControl): Promise<{ [key: string]: boolean } | null> {
        return new Promise((resolve) => {
            if (control.value !== '1234') {
                resolve({ invalidOldPassword: true });
            } else {
                resolve(null);
            }
        });
    }
}