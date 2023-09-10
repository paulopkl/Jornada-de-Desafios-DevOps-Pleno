import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, map } from 'rxjs';
import { environment } from 'src/environments/environment.dev';

@Injectable({
  providedIn: 'root',
})
export class ApiService {
  constructor(private http: HttpClient) {}

  getParceiroData(): Observable<any> {
    const response = this.http.get(`${environment.API_URL}/api/parceiro`, {
      // headers: { 'Content-Type': 'text/plain; charset=utf-8' },
      responseType: 'text'
    });

    return response;
  }

  getOrcamentoData(): Observable<any> {
    const response = this.http.get(`${environment.API_URL}/api/orcamento`, {
      // headers: { 'Content-Type': 'text/plain; charset=utf-8' },
      responseType: 'text'
    });

    return response;
  }
}
