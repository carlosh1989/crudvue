<style>
.highlighted { color: #72DE72 }
.form-control:focus {
  border-color: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  outline:none;
}
</style>
<template>
<div>
	<br>
	<nav aria-label="Page navigation example">
	  <ul class="pagination">
	    <li v-bind:class="[{disabled: !pagination.prev_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-arrow-circle-left"></i></a></li>
	    <li class="page-item disabled"><a class="page-link text-dark" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-file-text-o"></i>  {{pagination.current_page}} of {{pagination.last_page}}</a></li>
	    <li v-bind:class="[{disabled: !pagination.next_page_url}]" class="page-item"><a class="page-link" href="#" @click="fetchArticles(pagination.next_page_url)"><i class="fa fa-arrow-circle-right"></i></a></li>
	    	

		<li class="page-item">
		<input style="margin-left:10px;" class="form-control search" type="text" v-model.lazy="search" v-debounce="500" placeholder="Search...">
		</li>

		<li class="page-item disabled"><a class="page-link text-dark" href="#" @click="fetchArticles(pagination.prev_page_url)"><i class="fa fa-search"></i></a></li>
	  </ul>

	</nav>
<div class="row">
	<div class="col-md-4">
		<div class="card card-body animated fadeIn" style="margin-bottom:10px;" >
			<h5 class="card-title">New Article</h5>
			<form @submit.prevent="addArticle(article.id)">
				<div class="form-group">
				<input v-bind:class="[{'is-invalid': errors.has('title')}]"  name="title" type="text" class="form-control" placeholder="Title" v-model="article.title" v-validate.disabled="'required'">
				<span v-show="errors.has('title')" class="text-danger">{{ errors.first('title') }}</span>
				</div>
				<div class="form-group">
				<textarea  v-bind:class="[{'is-invalid': errors.has('body')}]" name="body" class="form-control" placeholder="Body" v-model="article.body" v-validate.disabled="'required'"></textarea>
				<span v-show="errors.has('body')" class="text-danger">{{errors.first('body')}}</span> 
				</div>
				<button v-show="edit===true" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-pencil text-success"></i> Update</button>
				<label for=""> </label>

				<button v-show="edit===false" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-save text-primary"></i> Save</button>

				<button style="margin-right:2px;" v-on:click="resetForm()" type="submit" class="btn btn-outline-secondary pull-right"><i class="fa fa-eraser"></i> </button>
			</form>
		</div>
	</div>
		<div v-if="results.length > 0" class="col-md-4" v-for="result in results" :key="result.id">
		<div class="card card-body animated fadeIn" style="margin-bottom:10px;" >
			<h5 class="card-title" v-html="highlight(result.title)">{{result.title}}</h5>
	        <p class="card-text">{{result.body}}</p>
			<div class="row">
				<div class="col-md-12">
					<div class="pull-right">
						<div class="btn-group" role="group" aria-label="Basic example">
							<button type="button" class="btn btn-secondary" @click="editArticle(result)"><i class="fa fa-pencil"></i></button>

							<button type="button" class="btn btn-secondary" @click="deleteArticle(result.id)"><i class="fa fa-trash-o"></i></button>
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

function debounce(fn, delay = 300) {
	var timeoutID = null;

    return function () {
		clearTimeout(timeoutID);

        var args = arguments;
        var that = this;

        timeoutID = setTimeout(function () {
        	fn.apply(that, args);
        }, delay);
    }
};

// this is where we integrate the v-debounce directive!
// We can add it globally (like now) or locally!
Vue.directive('debounce', (el, binding) => {
	if (binding.value !== binding.oldValue) {
		// window.debounce is our global function what we defined at the very top!
		el.oninput = debounce(ev => {
			el.dispatchEvent(new Event('change'));
		}, parseInt(binding.value) || 300);
	}
});


import Vue from 'vue'
import VueSwal from 'vue-swal'
import VeeValidate from 'vee-validate'

Vue.use(VeeValidate, {
 events: 'blur'
});

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
				keywords: null,
				search: '',
			}
		},
		created(){
			this.fetchArticles();
		},
		watch: {
			keywords(after, before) {
				this.fetchArticles();
			}
		},
  computed: {
    results() {
      return this.articles.filter(article => {
        return article.title.toLowerCase().includes(this.search.toLowerCase())
      })
    }
  },
		methods:{
			highlight(text) {
			return text.replace(new RegExp(this.search, 'gi'), '<span class="highlighted">$&</span>');
			},
			fetchArticles(page_url){
				// In validators

				let vm = this;
				if(!page_url)
				{
					page_url = 'http://7c60a3c6.ngrok.io/crudvue/public/api/article';
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
					fetch(`http://7c60a3c6.ngrok.io/crudvue/public/api/article/${id}`, {
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

			addArticle(id){
					//Add
					if(this.edit === false)
					{

				      this.$validator.validate().then(result => {
				        if (!result) {
				          
				        }
				        else
				        {
							fetch('http://7c60a3c6.ngrok.io/crudvue/public/api/article',{
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
								this.$validator.pause();
							    Vue.nextTick(() => {
							    	this.$validator.resume();
							    });
							    this.$swal("Good! Your Article has been Add!", {
							      icon: "success",
							    });
								this.fetchArticles();	
							})
							.catch(err => console.log(err));
				        }
				      });

					}
					else
					{
						this.updateArticle(id);	
					}
			},

			updateArticle(id){
					fetch(`http://7c60a3c6.ngrok.io/crudvue/public/api/article/${id}`, {
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
						this.$validator.pause();
					    Vue.nextTick(() => {
					    	this.$validator.resume();
					    });
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
				this.$validator.pause();
			    Vue.nextTick(() => {
			    	this.$validator.resume();
			    });
			},
			reset() {
				Object.assign(this.$data, this.$options.data());
			}
		}
	}
</script>