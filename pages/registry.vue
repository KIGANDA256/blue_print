<template>
    <title>REGISTRY FORM</title>
    <div class="body">
        <Section class="main">
            <section class="REGISTER">
                <h1>REGISTER</h1>
                <input v-model="username" id="username" type="text" placeholder="username" required>
                <input v-model="email" id="Email" type="email" placeholder="Email" required>
                <input v-model="password" type="password" placeholder="password" required>
                <input v-model="confirmPassword" type="password" placeholder="Confirm Password" required>
                <div>
                    <button @register.prevent="register">Signup</button>
                    <p>Have an account? <NuxtLink to="/"><a>Login Here</a></NuxtLink>
                    </p>
                </div>
            </section>


        </Section>
    </div>



</template>
<style src="../assets/css/registry form.css" scoped></style>
<script set>
const username = ref('')
const email = ref('')
const password = ref('')
const confirmPassword = ref('')

async function register() {
    try {
        const response = await fetch('/api/users', {
            method: 'POST',
            body: {
                username: username.value,
                email: email.value,
                password: password.value,
                confirmPassword: confirmPassword.value

            }

        })
        console.log(`user: ${username.value} created 🟢🟢🟢`)

    } catch (error) {
        console.log(`user: ${username.value}  not created 🔴🔴🔴`)
    }
}

</script>