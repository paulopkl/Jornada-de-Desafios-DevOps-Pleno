import { Component, OnInit } from '@angular/core';
import { ApiService } from '../http/api.service';

@Component({
  selector: 'app-orcamento',
  templateUrl: './orcamento.component.html',
  styleUrls: ['./orcamento.component.css']
})
export class OrcamentoComponent implements OnInit {
  orcamentoData: any;

  constructor(private apiService: ApiService) {}

  ngOnInit(): void {
    this.apiService.getOrcamentoData().subscribe((data) => {
      this.orcamentoData = data;
    });
  }
}
