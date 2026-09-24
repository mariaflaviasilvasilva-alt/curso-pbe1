module.exports = {
  apps: [
    {
      name: 'aula19-telemetria',
      script: './server.js', // Aponta para o seu arquivo de entrada
      watch: true,           // Reinicia em dev ao alterar arquivos
      ignore_watch: ['node_modules', 'logs'],
      autorestart: true,     // Essencial para o PM2 reviver o app após o /crash
      max_memory_restart: '1G',

      // Variáveis de ambiente para Desenvolvimento (padrão)
      env: {
        NODE_ENV: 'development',
        PORT: 3024
      },

      // Variáveis de ambiente para Produção (--env production)
      env_production: {
        NODE_ENV: 'production',
        PORT: 8080,          // Geralmente produção usa portas HTTP padrão ou reverse proxy
        watch: false,        // Desativado em produção por performance
        instances: 'max',    // Modo Cluster: escala para todas as CPUs
        exec_mode: 'cluster'
      }
    }
  ]
};
