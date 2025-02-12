# 📌 Blue-Green и Canary Deployment: Как обновлять прод без боли

## 📖 Описание урока
Разбираем две стратегии безопасного обновления приложений в Kubernetes:

- **Blue-Green Deployment** — мгновенное переключение трафика между версиями, быстрое тестирование и откат.
- **Canary Deployment** — постепенное развертывание новой версии с контролем стабильности.

На практике изучаем **Argo Rollouts**, работу с **Ingress**, настройку **`activeService` / `previewService`**.

📄 **Документация:** [Argo Rollouts Docs](https://argo-rollouts.readthedocs.io/en/stable/)

---

## 🛠 Практическая часть:

1. Запуск приложения через `Deployment`, используя `readinessProbe` и `livenessProbe`.
2. Запуск приложения через `Rollouts`, используя **Blue-Green Deployment**.
3. Запуск приложения через `Rollouts`, используя **Canary Deployment**.

---

## 📌 Полезные команды:

▶️ **Просмотр статуса Rollout'а в реальном времени:**
```bash
kubectl argo rollouts get rollout rollouts-demo -w
```

▶️ **Запуск веб-интерфейса Argo Rollouts Dashboard:**
```bash
kubectl argo rollouts dashboard
```

---

🔥 **Теперь ты знаешь, как обновлять прод без даунтайма!** 🚀  
