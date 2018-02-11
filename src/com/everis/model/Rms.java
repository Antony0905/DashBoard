package com.everis.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Rms {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Temporal(TemporalType.TIMESTAMP)
	private Date created;
	private String dono;
	
	@Column(unique=true)
	private String id_demanda;
	private String descricao_demanda;
	private String tipo_demanda;
	private String solicitante_vivo;
	private String anal_resp;
	@Temporal(TemporalType.DATE)
	private Date dt_entrada_estimada;
	@Temporal(TemporalType.DATE)
	private Date dt_entrega_estm;
	@Temporal(TemporalType.DATE)
	private Date dt_real_estm;
	@Temporal(TemporalType.DATE)
	private Date estimativa_cliente;
	private int jornadas;
	private int pontos;
	private String situacao_estimativa;

	private String linha_cap;
	@Temporal(TemporalType.DATE)
	private Date inicio_rms;
	@Temporal(TemporalType.DATE)
	private Date fim_rms;
	@Temporal(TemporalType.DATE)
	private Date aprovacao_rms;
	@Temporal(TemporalType.DATE)
	private Date inicio_dev;
	@Temporal(TemporalType.DATE)
	private Date fim_dev;
	@Temporal(TemporalType.DATE)
	private Date inicio_homo_everis;
	@Temporal(TemporalType.DATE)
	private Date fim_homo_everis;
	@Temporal(TemporalType.DATE)
	private Date dt_release;
	@Temporal(TemporalType.DATE)
	private Date inplanejamento;
	@Temporal(TemporalType.DATE)
	private Date fimplanejamento;
	private String analise_funcional;

	private String esteira;
	@Temporal(TemporalType.DATE)
	private Date inicio_homo_vivo;
	@Temporal(TemporalType.DATE)
	private Date fim_homo_vivo;
	@Temporal(TemporalType.DATE)
	private Date inicio_preprod;
	@Temporal(TemporalType.DATE)
	private Date fim_preprod;
	private String demanda;

	@PrePersist
	protected void onCreate() {
		created = new Date();
	}

	public Long getId() {
		return id;
	}

	public Date getCreated() {
		return created;
	}

	public String getDono() {
		return dono;
	}

	public String getId_Demanda() {
		return id_demanda;
	}

	public String getDescricao_demanda() {
		return descricao_demanda;
	}

	public String getTipo_demanda() {
		return tipo_demanda;
	}

	public String getSolicitante_vivo() {
		return solicitante_vivo;
	}

	public String getAnal_resp() {
		return anal_resp;
	}

	public Date getDt_entrada_estimada() {
		return dt_entrada_estimada;
	}

	public Date getDt_entrega_estm() {
		return dt_entrega_estm;
	}

	public Date getDt_real_estm() {
		return dt_real_estm;
	}

	public Date getEstimativa_cliente() {
		return estimativa_cliente;
	}

	public int getJornadas() {
		return jornadas;
	}

	public int getPontos() {
		return pontos;
	}

	public String getSituacao_estimativa() {
		return situacao_estimativa;
	}

	public String getLinha_cap() {
		return linha_cap;
	}

	public Date getInicio_rms() {
		return inicio_rms;
	}

	public Date getFim_rms() {
		return fim_rms;
	}

	public Date getAprovacao_rms() {
		return aprovacao_rms;
	}

	public Date getInicio_dev() {
		return inicio_dev;
	}

	public Date getFim_dev() {
		return fim_dev;
	}

	public Date getInicio_homo_everis() {
		return inicio_homo_everis;
	}

	public Date getFim_homo_everis() {
		return fim_homo_everis;
	}

	public Date getDt_release() {
		return dt_release;
	}

	public Date getInplanejamento() {
		return inplanejamento;
	}

	public Date getFimplanejamento() {
		return fimplanejamento;
	}

	public String getAnalise_funcional() {
		return analise_funcional;
	}

	public String getEsteira() {
		return esteira;
	}

	public Date getInicio_homo_vivo() {
		return inicio_homo_vivo;
	}

	public Date getFim_homo_vivo() {
		return fim_homo_vivo;
	}

	public Date getInicio_preprod() {
		return inicio_preprod;
	}

	public Date getFim_preprod() {
		return fim_preprod;
	}

	public String getDemanda() {
		return demanda;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public void setDono(String dono) {
		this.dono = dono;
	}

	public void setId_Demanda(String id_demanda) {
		this.id_demanda = id_demanda;
	}

	public void setDescricao_demanda(String descricao_demanda) {
		this.descricao_demanda = descricao_demanda;
	}

	public void setTipo_demanda(String tipo_demanda) {
		this.tipo_demanda = tipo_demanda;
	}

	public void setSolicitante_vivo(String solicitante_vivo) {
		this.solicitante_vivo = solicitante_vivo;
	}

	public void setAnal_resp(String anal_resp) {
		this.anal_resp = anal_resp;
	}

	public void setDt_entrada_estimada(Date dt_entrada_estimada) {
		this.dt_entrada_estimada = dt_entrada_estimada;
	}

	public void setDt_entrega_estm(Date dt_entrega_estm) {
		this.dt_entrega_estm = dt_entrega_estm;
	}

	public void setDt_real_estm(Date dt_real_estm) {
		this.dt_real_estm = dt_real_estm;
	}

	public void setEstimativa_cliente(Date estimativa_cliente) {
		this.estimativa_cliente = estimativa_cliente;
	}

	public void setJornadas(int jornadas) {
		this.jornadas = jornadas;
	}

	public void setPontos(int pontos) {
		this.pontos = pontos;
	}

	public void setSituacao_estimativa(String situacao_estimativa) {
		this.situacao_estimativa = situacao_estimativa;
	}

	public void setLinha_cap(String linha_cap) {
		this.linha_cap = linha_cap;
	}

	public void setInicio_rms(Date inicio_rms) {
		this.inicio_rms = inicio_rms;
	}

	public void setFim_rms(Date fim_rms) {
		this.fim_rms = fim_rms;
	}

	public void setAprovacao_rms(Date aprovacao_rms) {
		this.aprovacao_rms = aprovacao_rms;
	}

	public void setInicio_dev(Date inicio_dev) {
		this.inicio_dev = inicio_dev;
	}

	public void setFim_dev(Date fim_dev) {
		this.fim_dev = fim_dev;
	}

	public void setInicio_homo_everis(Date inicio_homo_everis) {
		this.inicio_homo_everis = inicio_homo_everis;
	}

	public void setFim_homo_everis(Date fim_homo_everis) {
		this.fim_homo_everis = fim_homo_everis;
	}

	public void setDt_release(Date dt_release) {
		this.dt_release = dt_release;
	}

	public void setInplanejamento(Date inplanejamento) {
		this.inplanejamento = inplanejamento;
	}

	public void setFimplanejamento(Date fimplanejamento) {
		this.fimplanejamento = fimplanejamento;
	}

	public void setAnalise_funcional(String analise_funcional) {
		this.analise_funcional = analise_funcional;
	}

	public void setEsteira(String esteira) {
		this.esteira = esteira;
	}

	public void setInicio_homo_vivo(Date inicio_homo_vivo) {
		this.inicio_homo_vivo = inicio_homo_vivo;
	}

	public void setFim_homo_vivo(Date fim_homo_vivo) {
		this.fim_homo_vivo = fim_homo_vivo;
	}

	public void setInicio_preprod(Date inicio_preprod) {
		this.inicio_preprod = inicio_preprod;
	}

	public void setFim_preprod(Date fim_preprod) {
		this.fim_preprod = fim_preprod;
	}

	public void setDemanda(String demanda) {
		this.demanda = demanda;
	}

}
