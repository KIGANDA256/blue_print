<template>

    <body>
        <h1>Patient Information Form</h1>



        <section class="section1">
            <h2>Bio-Data</h2>
            <label for="first-name">First Name</label>
            <input id="first-name" type="text" placeholder="First" required>

            <label for="last-name">Last Name</label>
            <input id="last-name" type="text" placeholder="Last" required>

            <label for="dob">Date of Birth</label>
            <input id="dob" type="date" required>

            <label>Gender</label>
            <div class="gender">
                <label><input type="radio" name="gender" value="male"> Male</label>
                <label><input type="radio" name="gender" value="female"> Female</label>
            </div>

            <label for="age">Age</label>
            <input id="age" type="number" placeholder="Age" required>
        </section>

        <section class="section2">
            <h2>Address</h2>
            <label for="country">Country</label>
            <input id="country" type="text" placeholder="Country" required>

            <label for="city">City</label>
            <input id="city" type="text" placeholder="City" required>

            <label for="county">County</label>
            <input id="county" type="text" placeholder="County" required>

            <label for="sub-county">Sub-County</label>
            <input id="sub-county" type="text" placeholder="Sub-County" required>

            <label for="village">Village</label>
            <input id="village" type="text" placeholder="Village" required>
        </section>

        <section class="section3">
            <h2>Contacts</h2>

            <label for="tel1">Telephone Number 1</label>
            <input id="tel1" type="tel" placeholder="Tel 1" required>

            <label for="tel2">Telephone Number 2</label>
            <input id="tel2" type="tel" placeholder="Tel 2">

            <label for="email">Email</label>
            <input id="email" type="email" placeholder="Email" required>
        </section>
        <button>SUBMIT FORM</button>
    </body>
</template>