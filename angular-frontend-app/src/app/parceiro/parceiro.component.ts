import { Component, OnInit } from '@angular/core';
import { ApiService } from '../http/api.service';

@Component({
  selector: 'app-parceiro',
  templateUrl: './parceiro.component.html',
  styleUrls: ['./parceiro.component.css']
})
export class ParceiroComponent implements OnInit {
  parceiroData: any;

  constructor(private apiService: ApiService) {}

  ngOnInit(): void {
    this.apiService.getParceiroData().subscribe((data) => {
      this.parceiroData = data;
    });
  }
}
