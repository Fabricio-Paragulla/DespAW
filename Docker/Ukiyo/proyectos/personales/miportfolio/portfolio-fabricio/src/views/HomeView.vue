<script setup lang="ts">
import { ref, onMounted, onUnmounted } from 'vue'
import { RouterLink } from 'vue-router'

// Lógica para el efecto Parallax del Mouse
const mouseX = ref(0)
const mouseY = ref(0)

const handleMouseMove = (e: MouseEvent) => {
// Calculamos la posición del ratón relativa al centro de la ventana
    mouseX.value = (e.clientX - window.innerWidth / 2) / 25 // El divisor controla la intensidad
    mouseY.value = (e.clientY - window.innerHeight / 2) / 25
}

onMounted(() => window.addEventListener('mousemove', handleMouseMove))
onUnmounted(() => window.removeEventListener('mousemove', handleMouseMove))
</script>

<template>
    <div class="relative min-h-screen flex items-center justify-center overflow-hidden bg-gray-50 dark:bg-slate-900">
        
        <div class="absolute inset-0 z-0 pointer-events-none transition-transform duration-100 ease-out"
            :style="{ transform: `translate(${mouseX * -1}px, ${mouseY * -1}px)` }">
        <div class="absolute top-1/4 left-1/4 w-96 h-96 bg-blue-500/20 rounded-full blur-[100px] animate-pulse"></div>
        <div class="absolute bottom-1/4 right-1/4 w-[500px] h-[500px] bg-cyan-400/20 rounded-full blur-[120px]" 
            style="animation-delay: 2s"></div>
        </div>

        <div class="relative z-10 text-center px-4 max-w-5xl mx-auto transition-transform duration-100 ease-out"
            :style="{ transform: `translate(${mouseX * 0.5}px, ${mouseY * 0.5}px)` }">
        
        <h2 class="text-blue-600 dark:text-cyan-400 font-bold tracking-widest uppercase text-sm mb-6 animate-fade-in-down">
            FULL STACK DEVELOPER & DEVOPS ENGINEER
        </h2>
        
        <h1 class="text-5xl md:text-8xl font-black text-gray-900 dark:text-white mb-8 leading-tight animate-fade-in-up tracking-tight">
            IDEAS<br>
            <span class="text-transparent bg-clip-text bg-gradient-to-r from-blue-600 to-cyan-400">
            REALES.
            </span>
        </h1>
        
        <p class="mt-4 text-xl md:text-2xl text-gray-600 dark:text-gray-300 max-w-2xl mx-auto mb-12 animate-fade-in-up delay-100 font-light">
            Hola, soy <span class="font-bold text-gray-900 dark:text-white">Fabri</span>. Transformo código complejo en arquitecturas simples y escalables.
        </p>
        
        <div class="flex flex-col sm:flex-row justify-center gap-6 animate-fade-in-up delay-200">
            <RouterLink to="/proyectos" class="px-10 py-4 bg-blue-600 hover:bg-blue-700 text-white font-bold rounded-full transition-all shadow-lg hover:shadow-blue-500/40 hover:-translate-y-1">
            Ver Mis Proyectos
            </RouterLink>
            <RouterLink to="/sobre-mi" class="px-10 py-4 border border-gray-300 dark:border-gray-700 text-gray-700 dark:text-gray-200 font-bold rounded-full hover:bg-gray-100 dark:hover:bg-slate-800 transition-all hover:-translate-y-1">
            Conóceme
            </RouterLink>
        </div>
        </div>
    </div>
</template>

<style scoped>
/* Optimizaciones para evitar lag en el parallax */
.will-change-transform { 
    will-change: transform; 
}

.animate-fade-in-up { 
    animation: fadeInUp 1s cubic-bezier(0.16, 1, 0.3, 1) forwards;
    opacity: 0;
    transform: translateY(40px);
}

.animate-fade-in-down { 
    animation: fadeInDown 1s cubic-bezier(0.16, 1, 0.3, 1) forwards;
    opacity: 0;
    transform: translateY(-40px); 
}

.delay-100 { 
    animation-delay: 0.2s;
}

.delay-200 { 
    animation-delay: 0.4s; 
}

@keyframes fadeInUp { to 
    { 
        opacity: 1;
        transform: translateY(0); 
    } 
}

@keyframes fadeInDown { to 
    { 
        opacity: 1;
        transform: translateY(0);
    } 
}

</style>