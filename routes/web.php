<?php
use Illuminate\Support\Facades\Route;
use App\Models\Category;
use App\Models\User;
use App\Models\Post;

Route::get('/', function () {
    return view('home', ['title' => 'Home Page']);
});

Route::get('/about', function () {
    return view('about', ['title' => 'About']);
});

Route::get('/posts', function () {
    $posts = Post::with(['author', 'category'])->filter(request(['search']))->latest()->paginate(10);
    return view('posts', ['title' => 'Blog', 'posts' => $posts]);
});

Route::get('/posts/{post:slug}', function(Post $post){
    return view('post', ['title' => 'Blog', 'post' => $post]);
});

Route::get('/authors/{user:username}', function(User $user){
    $totalPosts = $user->posts()->count();
    $posts = $user->posts()->with(['category', 'author'])->filter(request(['search']))->latest()->paginate(5);
    return view('posts', ['title' => $totalPosts . ' Articles by ' . $user->name, 'posts' => $posts]);
});

Route::get('/categories/{category:slug}', function(Category $category){
    $totalPosts = $category->posts()->count();
    $posts = $category->posts()->with(['category', 'author'])->filter(request(['search']))->latest()->paginate(5);
    return view('posts', ['title' => $totalPosts . ' Articles of ' . $category->name, 'posts' => $posts]);
});


Route::get('/contact', function () {
    return view('contact', ['title' => 'Contact']);
});


?>