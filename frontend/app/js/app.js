/** @format */

// https://accreditly.io/articles/creating-single-page-applications-with-vanilla-javascript
// https://www.youtube.com/watch?v=6BozpmSjk-Y&list=PLw5h0DiJ-9PBXb6SnjLxAQH6ecMYz3Wjs

window.addEventListener("DOMContentLoaded", () => {
	const testRegister = async () => {
		console.log("testing /api/register POST request");

		const p = document.getElementById("request-status");
		const data = {
			username: "cbernot",
			email: "cbernot@stud.42lyon.fr",
			password: "password"
		};
		p.innerHTML = "status: sending request...";
		try {
			const response = await fetch("/api/register", {
				method: "POST",
				headers: {
					"Content-Type": "application/json"
				},
				body: JSON.stringify(data)
			});
			if (response.ok) {
				p.innerHTML = "status: ok";
				p.style.color = "green";
			} else {
				p.innerHTML = `status: error (${response.status})`;
				p.style.color = "red";
			}
			console.log("response:", response);
		} catch (error) {
			console.log("Error:", error);
			p.innerHTML = "status: fetch failed";
			p.style.color = "red";
		}
	};
	testRegister();
});
