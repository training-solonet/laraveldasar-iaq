<x-layout>
    <x-slot name="title">{{ $title }}</x-slot>

    <div class="py-8 px-4 mx-auto max-w-screen-md">
        <a href="/posts" class="text-blue-600 text-sm font-medium hover:underline">&laquo; Back to all posts</a>
        
        <article class="mt-6 p-6 bg-white rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
            <div class="flex items-center mb-5">
                <img class="w-10 h-10 rounded-full mr-4" src="https://static.zerochan.net/Vestia.Zeta.full.3795988.jpg" alt="{{ $post->author->name }}">
                <div class="text-sm">
                    <a href="/authors/{{$post->author->username}}">
                        <p class="font-bold text-gray-900 dark:text-white hover:underline">{{ $post->author->name }}</p>
                    </a>
                    <p class="text-gray-500 dark:text-gray-400">{{ $post->created_at->diffForHumans() }}</p>
                </div>
            </div>

            <div class="mb-4">
                <a href="/categories/{{$post->category->slug}}" class="bg-primary-100 text-primary-800 text-xs font-medium inline-flex items-center px-2.5 py-0.5 rounded dark:bg-primary-200 dark:text-primary-800 hover:underline">
                    {{ $post->category->name }}
                </a>
            </div>

            <h2 class="mb-4 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
                {{ $post->title }}
            </h2>

            <p class="mb-5 text-gray-500 dark:text-gray-400">{{ $post->body }}</p>
        </article>
    </div>
</x-layout> 