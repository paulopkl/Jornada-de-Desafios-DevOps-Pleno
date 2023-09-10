import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { ParceiroComponent } from './parceiro/parceiro.component';
import { OrcamentoComponent } from './orcamento/orcamento.component';

const routes: Routes = [
  { path: 'parceiro', component: ParceiroComponent },
  { path: 'orcamento', component: OrcamentoComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule],
})
export class AppRoutingModule {}
