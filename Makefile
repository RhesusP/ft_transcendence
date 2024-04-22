all:
	docker compose up --build
	open https://localhost:1234 

down:
	docker compose down

clean-volumes: down
	docker volume rm ft_transcendence_postgres_data ft_transcendence_static_volume

reset: down
	docker system prune -af --volumes

re: reset all