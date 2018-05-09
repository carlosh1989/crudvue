<template>
<div>
	<br>
	<h2 style="text-align:center;text-decoration:underline;" class="text-primary">Articles</h2>
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-arrow-circle-left"></i></a></li>
	    <li class="page-item disabled"><a class="page-link text-dark" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-file-text-o"></i>  {{pagination.current_page}} of {{pagination.last_page}}</a></li>
	    <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link" href="#"
	    	 @click="fetchArticles(pagination.next_page_url)"><i class="fa fa-arrow-circle-right"></i></a></li>

	  </ul>
	</nav>

<div class="row">
	<div class="col-md-4" v-for="article in articles" v-bind:key="article.id">
		<div class="card card-body animated fadeIn" style="margin-bottom:10px;" >
			<h5 class="card-title">{{article.title}}</h5>
	        <p class="card-text">{{article.body}}</p>
			<div class="row">
				<div class="col-md-12">
					<div class="pull-right">
						<div class="btn-group" role="group" aria-label="Basic example">
							<!--<button type="button" class="btn btn-secondary"><i class="fa fa-search"></i></button>-->
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
				edit: false
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
					page_url = 'http://localhost/crudvue/public/api/articles';
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
				if (confirm('Are you sure?')) {
					fetch(`api/article/${id}`, {
						method: 'delete'
					})
					.then(res => res.json())
					.then(data => {
						alert('Article removed');
						this.fetchArticles();
					})
					.them(err => console.log(err));
				}
			}
		}
	}
</script>