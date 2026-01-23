<script setup lang="ts">
const skills = [
    { cat: 'Backend & Cloud', items: ['NodeJS (NestJS)', 'Docker', 'Kubernetes', 'Python', 'NATS', 'SQL'] },
    { cat: 'Frontend', items: ['Vue 3', 'React', 'Angular', 'TailwindCSS', 'Figma'] },
    { cat: 'Soft Skills', items: ['Resolución de problemas', 'Resiliencia', 'Trabajo en equipo', 'Autonomía'] }
]

const experience = [
    {
        role: 'Aspirante a Full Stack Developer (Prácticas)',
        company: 'Indra (En proceso)',
        date: '2026 - Presente',
        desc: 'Pendiente de incorporación para participar en proyectos de transformación digital a gran escala.'
    },
    {
        role: 'Junior DevOps Assistant (Simulación)',
        company: 'TechSolutions',
        date: '2024 - 2025',
        desc: 'Automatización de pipelines CI/CD y monitorización de contenedores Docker en entornos de prueba.'
    }
]
</script>

<template>
    <div class="pt-24 pb-16 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto dark:bg-slate-900 min-h-screen">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-12 items-center mb-16">
        <div>
            <h2 class="text-3xl font-bold text-gray-900 dark:text-white mb-6">Sobre Mí</h2>
            <div class="prose dark:prose-invert text-lg text-gray-600 dark:text-gray-300">
            <p class="mb-4">
                Tengo 19 años y mi viaje empezó en Lima, Perú, pero hoy diseño soluciones desde Almería, España.
                Más que escribir código, me obsesiona <span class="text-blue-500 font-semibold">entender el porqué</span> de las cosas.
            </p>
            <p class="mb-4">
                Actualmente finalizando DAW, combino la agilidad del desarrollo web con la robustez de la infraestructura (DevOps).
                Me apasiona la Inteligencia Artificial y no temo romper cosas si es la única forma de aprender a arreglarlas mejor.
            </p>
            <p>
                Mi filosofía: <em>"Siempre hay una forma más eficiente de hacerlo"</em>.
            </p>
            </div>
        </div>
        <div class="relative group">
            <div class="absolute -inset-1 bg-gradient-to-r from-cyan-400 to-blue-600 rounded-lg blur opacity-25 group-hover:opacity-75 transition duration-1000 group-hover:duration-200"></div>
            <div class="relative aspect-square rounded-2xl overflow-hidden shadow-2xl border-4 border-white dark:border-slate-800">
                <img src="@/assets/img/perfil.jpg" alt="Fabricio Paragulla" class="object-cover w-full h-full transform transition hover:scale-110 duration-700">
            </div>
            <p class="text-center text-xs text-gray-400 mt-2">(Pon tu foto en assets/img/ y cambia el src)</p>
        </div>
        </div>

        <div class="mb-16">
        <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-8 text-center">Arsenal Tecnológico</h3>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <div v-for="group in skills" :key="group.cat" class="bg-white dark:bg-slate-800 p-6 rounded-xl shadow-md border border-gray-100 dark:border-gray-700 hover:-translate-y-1 transition-transform">
            <h4 class="text-lg font-semibold text-blue-600 dark:text-cyan-400 mb-4">{{ group.cat }}</h4>
            <div class="flex flex-wrap gap-2">
                <span v-for="item in group.items" :key="item" class="px-3 py-1 bg-gray-100 dark:bg-slate-700 text-gray-700 dark:text-gray-200 rounded-full text-sm">
                {{ item }}
                </span>
            </div>
            </div>
        </div>
        </div>

        <div>
        <h3 class="text-2xl font-bold text-gray-900 dark:text-white mb-8">Trayectoria</h3>
        <div class="space-y-8 border-l-2 border-blue-200 dark:border-slate-700 pl-8 ml-4">
            <div v-for="(job, index) in experience" :key="index" class="relative">
            <span class="absolute -left-[41px] top-1 h-5 w-5 rounded-full border-4 border-white dark:border-slate-900 bg-blue-500"></span>
            <h4 class="text-lg font-bold text-gray-900 dark:text-white">{{ job.role }}</h4>
            <p class="text-sm text-blue-500 mb-1">{{ job.company }} | {{ job.date }}</p>
            <p class="text-gray-600 dark:text-gray-400">{{ job.desc }}</p>
            </div>
            <div class="relative">
            <span class="absolute -left-[41px] top-1 h-5 w-5 rounded-full border-4 border-white dark:border-slate-900 bg-green-500"></span>
            <h4 class="text-lg font-bold text-gray-900 dark:text-white">Técnico Superior DAW</h4>
            <p class="text-sm text-green-500 mb-1">IES Cura Valera (Almería) & IES José Luis Sampedro (Madrid)</p>
            <p class="text-gray-600 dark:text-gray-400">Especialización en desarrollo Full Stack. Cursos adicionales en Machine Learning (Python/Anaconda) e IA Generativa.</p>
            </div>
        </div>
        </div>
    </div>
</template>