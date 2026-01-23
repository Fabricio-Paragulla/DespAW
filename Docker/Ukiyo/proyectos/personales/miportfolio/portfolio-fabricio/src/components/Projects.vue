<template>
    <section class="py-20">
        <h2 class="text-3xl font-bold text-white mb-12 text-center">Mis Proyectos</h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
        
        <article class="bg-slate-800 rounded-xl overflow-hidden border border-slate-700 hover:border-cyan-500/50 transition-all hover:shadow-xl hover:shadow-cyan-500/10 group">
            <div class="h-48 bg-slate-900 flex items-center justify-center border-b border-slate-700">
            <span class="text-4xl">🚀</span> </div>
            <div class="p-6">
            <h3 class="text-xl font-bold text-white mb-2 group-hover:text-cyan-400 transition-colors">Kubernetes Portfolio</h3>
            <p class="text-slate-400 text-sm mb-4">
                Despliegue automatizado con Docker, K8s, Ingress y Nginx. CI/CD manual optimizado.
            </p>
            <div class="flex gap-2 mb-4">
                <span class="px-2 py-1 bg-slate-900 text-xs rounded text-cyan-400 border border-cyan-900">Vue.js</span>
                <span class="px-2 py-1 bg-slate-900 text-xs rounded text-blue-400 border border-blue-900">Docker</span>
                <span class="px-2 py-1 bg-slate-900 text-xs rounded text-purple-400 border border-purple-900">K8s</span>
            </div>
            </div>
        </article>

        <article class="bg-slate-800 rounded-xl overflow-hidden border border-slate-700 hover:border-cyan-500/50 transition-all group">
            <div class="h-48 bg-slate-900 flex items-center justify-center border-b border-slate-700">
            <span class="text-4xl">🔒</span>
            </div>
            <div class="p-6">
            <h3 class="text-xl font-bold text-white mb-2 group-hover:text-cyan-400 transition-colors">Ciberseguridad Audit</h3>
            <p class="text-slate-400 text-sm mb-4">
                Scripts de escaneo de red con Nmap y análisis de vulnerabilidades automatizado.
            </p>
            <div class="flex gap-2 mb-4">
                <span class="px-2 py-1 bg-slate-900 text-xs rounded text-yellow-400 border border-yellow-900">Python</span>
                <span class="px-2 py-1 bg-slate-900 text-xs rounded text-red-400 border border-red-900">Security</span>
            </div>
            </div>
        </article>

        </div>
    </section>
</template>