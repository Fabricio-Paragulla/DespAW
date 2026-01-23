<template>
    <section class="min-h-[80vh] flex flex-col justify-center items-center text-center py-20">
        
        <div class="mb-6 inline-flex items-center px-3 py-1 rounded-full border border-cyan-500/30 bg-cyan-500/10 text-cyan-400 text-xs font-medium">
        <span class="w-2 h-2 rounded-full bg-cyan-400 mr-2 animate-pulse"></span>
        Open to Work
        </div>

        <h1 class="text-5xl md:text-7xl font-bold tracking-tight text-white mb-6">
        Hola, soy <span class="text-cyan-400">Fabricio</span>
        </h1>
        
        <p class="mt-4 text-xl text-slate-400 max-w-2xl mx-auto">
        Desarrollador Full Stack & Entusiasta de DevOps.
        <br>Transformo ideas en código y contenedores en soluciones.
        </p>

        <div class="mt-10 flex gap-4 justify-center">
        <a href="#proyectos" class="px-8 py-3 rounded-lg bg-cyan-600 text-white font-semibold hover:bg-cyan-500 transition-all shadow-lg shadow-cyan-500/20">
            Ver Portfolio
        </a>
        <a href="mailto:tu@email.com" class="px-8 py-3 rounded-lg border border-slate-700 hover:border-slate-500 transition-all text-slate-300">
            Contactar
        </a>
        </div>

        <div class="mt-16 w-full max-w-2xl bg-slate-800 rounded-lg overflow-hidden shadow-2xl border border-slate-700 text-left font-mono text-sm hidden md:block">
        <div class="bg-slate-900 px-4 py-2 flex items-center gap-2 border-b border-slate-700">
            <div class="w-3 h-3 rounded-full bg-red-500"></div>
            <div class="w-3 h-3 rounded-full bg-yellow-500"></div>
            <div class="w-3 h-3 rounded-full bg-green-500"></div>
            <span class="ml-2 text-slate-500 text-xs">bash — fabricio@vps:~</span>
        </div>
        <div class="p-4 text-slate-300">
            <p><span class="text-green-400">fabricio@vps:~$</span> kubectl get pods</p>
            <p class="text-slate-500">NAME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; READY &nbsp;&nbsp; STATUS &nbsp;&nbsp;&nbsp; AGE</p>
            <p>portfolio-fabricio-pod &nbsp; 1/1 &nbsp;&nbsp;&nbsp; Running &nbsp;&nbsp; 24s</p>
            <p><span class="text-green-400">fabricio@vps:~$</span> <span class="animate-pulse">_</span></p>
        </div>
        </div>
    </section>
</template>