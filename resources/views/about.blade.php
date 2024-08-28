<x-layout>
    <x-slot name="title">{{ $title }}</x-slot>

    <div class="py-20">
        <div class="max-w-5xl mx-auto px-6 lg:px-8">
            <div class="bg-white shadow-lg rounded-lg p-8">
                <div class="text-left">
                    <h1 class="text-5xl font-extrabold text-gray-900 mb-10 leading-tight">About This Website</h1>
                    <p class="text-lg text-gray-800 leading-relaxed mb-8">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum cum suscipit quibusdam fuga itaque. Aliquid animi nihil, officiis voluptate dolores et error recusandae rem ea! Possimus aliquid voluptas dicta magnam.
                    </p>
                    <p class="text-lg text-gray-800 leading-relaxed mb-10">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nostrum cum suscipit quibusdam fuga itaque. Aliquid animi nihil, officiis voluptate dolores et error recusandae rem ea! Possimus aliquid voluptas dicta magnam.
                    </p>
                    <a href="/contact" class="inline-flex items-center px-8 py-3 bg-blue-600 text-white text-base font-semibold rounded-lg shadow-md hover:bg-blue-700">
                        Contact Us
                        <svg class="ml-3 w-5 h-5" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M17 8l4 4m0 0l-4 4m4-4H3"></path>
                        </svg>
                    </a>
                </div>
            </div>
        </div>
    </div>
</x-layout>