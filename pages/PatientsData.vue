<template>
    <div class="body">
        <h1>Patient Information Form</h1>

        <form @submit.prevent="submit">
            <section class="section1">
                <h2>Bio-Data</h2>
                <label for="first-name">First Name</label>
                <input v-model="firstname" id="first-name" type="text" placeholder="First" required>

                <label for="last-name">Last Name</label>
                <input v-model="lastname" id="last-name" type="text" placeholder="Last" required>

                <label for="dob">Date of Birth</label>
                <input v-model="D_O_B" id="dob" type="date" required>

                <label>Gender</label>
                <div class="gender">
                    <label><input v-model="gender" type="radio" name="gender" value="male"> Male</label>
                    <label><input v-model="gender" type="radio" name="gender" value="female"> Female</label>
                </div>

                <label for="age">Age</label>
                <input v-model="age" id="age" type="number" placeholder="Age" required>
            </section>

            <section class="section2">
                <h2>Address</h2>
                <label for="country">Country</label>
                <input v-model="country" id="country" type="text" placeholder="Country" required>

                <label for="district">District</label>
                <input id="district" v-model="district" type="text" placeholder="District" required>

                <label for="city">City</label>
                <input id="city" v-model="city" type="text" placeholder="City" required>


                <label for="county">County</label>
                <input id="county" v-model="county" type="text" placeholder="County" required>

                <label for="sub-county">Sub-County</label>
                <input id="sub-county" v-model="sub_county" type="text" placeholder="Sub-County" required>

                <label for="village">Village</label>
                <input id="village" v-model="village" type="text" placeholder="Village" required>
            </section>

            <section class="section3">
                <h2>Contacts</h2>

                <label for="tel1">Telephone Number 1</label>
                <input id="tel1" v-model="contact" type="tel" placeholder="Tel 1" required>

                <label for="tel2">Next of Keen Number </label>
                <input id="tel2" v-model="NOK_contact" type="tel" placeholder="Tel 2">

                <label for="email">Email</label>
                <input id="email" v-model="email" type="email" placeholder="Email" required>

            </section>
            <button type="submit">SUBMIT FORM</button>
        </form>

    </div>



</template>
<style src="../assets/css/healthsystem.css" scoped></style>


<script setup>
//data capture from the front end
const firstname = ref('')
const lastname = ref('')
const gender = ref('')
const age = ref('')
const D_O_B = ref('')
const country = ref('')
const district = ref('')
const city = ref('')
const county = ref('')
const sub_county = ref('')
const village = ref('')
const contact = ref('')
const NOK_contact = ref('')
const email = ref('')

//submission 
async function submit() {

    try {
        const response = await fetch('/api/patients', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                firstname: firstname.value,
                lastname: lastname.value,
                gender: gender.value,
                age: age.value,
                D_O_B:new Date(D_O_B.value).toISOString(),
                country: country.value,
                county: county.value,
                district: district.value,
                city: city.value,
                sub_county: sub_county.value,
                village: village.value,
                contact: contact.value,
                NOK_contact: NOK_contact.value,
                email: email.value
            })
        })
        if (!response.ok) {
            throw new Error('Failed to submit form')
        }
        console.log('Form submitted successfully')
    } catch (err) {
        console.error(err)
    }
}






</script>

<!-- test code  -->
<!-- 
// async function submit() {
//   
// }
-->

<!-- 
 
-->
