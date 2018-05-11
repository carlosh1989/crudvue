<template>
<div>
	<br>
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-arrow-circle-left"></i></a></li>
	    <li class="page-item disabled"><a class="page-link text-dark" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-file-text-o"></i>  {{pagination.current_page}} of {{pagination.last_page}}</a></li>
	    <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link" href="#"
	    	 @click="fetchArticles(pagination.next_page_url)"><i class="fa fa-arrow-circle-right"></i></a></li>
	  </ul>
	</nav>
<div class="row">
	<div class="col-md-4">
		<div class="card card-body animated fadeIn" style="margin-bottom:10px;" >
			<h5 class="card-title">New Article</h5>
			<form>
				<div class="form-group">
				<input type="text" class="form-control" placeholder="Title" v-model="article.title">
				{{ message }}
				</div>
				<div class="form-group">
				<textarea class="form-control" placeholder="Body" v-model="article.body"></textarea> 
				</div>
				<button v-show="edit===true" v-on:click="updateArticle(article.id)" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-pencil text-success"></i> Update</button>
				<label for=""> </label>
				<button v-show="edit===true" v-on:click="resetForm()" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-eraser"></i> </button>
				<button v-show="edit===false" v-on:click="addArticle" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-save text-primary"></i> Save</button>
			</form>
		</div>
	</div>
	<div class="col-md-4" v-for="article in articles" v-bind:key="article.id">
		<div class="card card-body animated fadeIn" style="margin-bottom:10px;" >
			<h5 class="card-title">{{article.title}}</h5>
	        <p class="card-text">{{article.body}}</p>
			<div class="row">
				<div class="col-md-12">
					<div class="pull-right">
						<div class="btn-group" role="group" aria-label="Basic example">
							<button type="button" class="btn btn-secondary" @click="editArticle(article)"><i class="fa fa-pencil"></i></button>

							<button type="button" class="btn btn-secondary" @click="deleteArticle(article.id)"><i class="fa fa-trash-o"></i></button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</template>

<script>
import Vue from 'vue'
import VueSwal from 'vue-swal'

Vue.use(VueSwal)
	export default {
		data(){
			return{
				articles: [],
				article: {
					id: '',
					title: '',
					body: ''
				},
				article_id: '',
				pagination: {},
				edit: false,
			}
		},

		created(){
			this.fetchArticles();
		},

		methods:{
			fetchArticles(page_url){
				let vm = this;
				if(!page_url)
				{
					page_url = 'http://localhost/crudvue/public/api/article';
				}
				
				//var url = 'http://localhost/crudvue/public' + page_url;
	

				//alert(page_url);
				fetch(page_url)
				.then(res=>res.json())
				.then(res => {
					//console.log(res.data);
					this.articles = res.data;
					vm.makePagination(res.meta, res.links);
					console.log(res.data);
				})
				.catch(err => console.log(err));
			},
			makePagination(meta, links){
				let pagination = {
					current_page : meta.current_page,
					last_page : meta.last_page,
					next_page_url : links.next,
					prev_page_url : links.prev,
				}

				this.pagination = pagination;
				//alert(pagination.next_page_url);
			},

			deleteArticle(id){
				this.$swal({
				  title: "Are you sure?",
				  text: "Once deleted, you will not be able to recover this Article!",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				})
				.then((willDelete) => {
				  if (willDelete) {
					fetch(`api/article/${id}`, {
						method: 'delete'
					})
					.then(res => res.json())
					.then(data => {
						    this.$swal("Poof! Your Article has been deleted!", {
						      icon: "success",
						    });
						this.fetchArticles();
					})
					.them(err => console.log(err));
				  } else {
				    this.$swal("Your Article is safe!");
				  }
				});


			},

			addArticle(){
					//Add
					fetch('api/article',{
						method: 'post',
						body: JSON.stringify(this.article),
						headers: {
							'content-type':'application/json'
						}
					})
					.then(res => res.json())
					.then(data => {
						this.article.title = '';
						this.article.body = '';
						    this.$swal("Good! Your Article has been Add!", {
						      icon: "success",
						    });
						this.fetchArticles();	
					})
					.catch(err => console.log(err));
			},

			updateArticle(id){
					fetch(`api/article/${id}`, {
						method: 'put',
						body: JSON.stringify(this.article),
						headers: {
							'content-type':'application/json'
						}
					})
					.then(res => res.json())
					.then(data => {
						this.article.title = '';
						this.article.body = '';
						    this.$swal("Good! Your Article has been Updated!", {
						      icon: "success",
						    });
						this.fetchArticles();
						this.edit = false;	
					})
					.catch(err => console.log(err));
			},
			editArticle(article){
				this.edit = true;
				this.article.id = article.id;
				this.article.article_id = article.id;
				this.article.title = article.title;
				this.article.body = article.body;
			}
			,
			resetForm(){
				this.article.id = '';
				this.article.title = '';
				this.article.body = '';	
				this.edit = false;
			}
		}
	}
</script>