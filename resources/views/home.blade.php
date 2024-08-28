<x-layout>
    <x-slot name="title">{{ $title }}</x-slot>

    <div class="bg-gradient-to-r from-blue-500 to-indigo-600 text-white py-20">
        <div class="container mx-auto text-center">
            <h1 class="text-5xl font-extrabold mb-4">Welcome to My Home Page !</h1>
            <p class="text-xl mb-8">This is the front page of my website</p>
            <a href="/posts" class="inline-flex items-center justify-center bg-white text-blue-500 font-semibold py-2 px-6 rounded-full hover:bg-gray-100 transition-all duration-300">
                Explore Now
                <svg class="ml-2 w-4 h-4" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                </svg>
            </a>
        </div>
    </div>

    <div id="explore" class="container mx-auto my-16">
        <h2 class="text-3xl font-extrabold text-center mb-12">Features</h2>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">

            <div class="bg-white shadow-md rounded-lg overflow-hidden transition-transform transform hover:scale-105 duration-300">
                <img src="https://via.placeholder.com/400x200" alt="Image" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-semibold mb-4">About</h3>
                    <p class="text-gray-700 mb-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magni, harum voluptate praesentium nemo dicta quam quisquam ullam culpa totam mollitia omnis aut.</p>
                    <a href="/about" class="text-blue-500 hover:underline">Learn More</a>
                </div>
            </div>

            <div class="bg-white shadow-md rounded-lg overflow-hidden transition-transform transform hover:scale-105 duration-300">
                <img src="https://via.placeholder.com/400x200" alt="Image" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-semibold mb-4">Blog</h3>
                    <p class="text-gray-700 mb-4">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Numquam quae minus ab? Dignissimos sit non harum. Odit rem vel incidunt unde quia aliquid.</p>
                    <a href="/posts" class="text-blue-500 hover:underline">Learn More</a>
                </div>
            </div>

            <div class="bg-white shadow-md rounded-lg overflow-hidden transition-transform transform hover:scale-105 duration-300">
                <img src="https://via.placeholder.com/400x200" alt="Image" class="w-full h-48 object-cover">
                <div class="p-6">
                    <h3 class="text-xl font-semibold mb-4">Contact</h3>
                    <p class="text-gray-700 mb-4">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Totam pariatur autem vitae eos iusto, enim ratione ad aut similique sint architecto mollitia sunt sed.</p>
                    <a href="/contact" class="text-blue-500 hover:underline">Learn More</a>
                </div>
            </div>
        </div>
    </div>
</x-layout>