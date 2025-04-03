<template>

    <body>
        <h1>Medical History Form</h1>

        <div class="section1">
            <h2>Member's Details</h2>
            <label for="full-name">Full Name</label>
            <input id="full-name" type="text" placeholder="Full name" required />

            <label for="dob">Date of Birth</label>
            <input id="dob" type="date" required />

            <label for="contact">Contact</label>
            <input id="contact" type="tel" placeholder="Contact" required />

            <label for="email">Email</label>
            <input id="email" type="email" placeholder="Email" required />
        </div>
        <div class="section2">
            <h2>Doctor's Details</h2>
            <label for="doctor-name">Full Name</label>
            <input id="doctor-name" type="text" placeholder="Full name" required />

            <label for="doctor-contact">Contact</label>
            <input id="doctor-contact" type="tel" placeholder="Contact" required />

            <label for="doctor-email">Email</label>
            <input id="doctor-email" type="email" placeholder="Email" required />

            <label for="address">Address</label>
            <input id="address" type="text" placeholder="Address" required />
        </div>

        <div class="section3">
            <h2>Medical History</h2>
            <label>Have you had any of the following?</label>
            <div class="diseases">
                <label><input type="checkbox" name="diseases" value="chickenpox" />
                    Chickenpox</label>
                <label><input type="checkbox" name="diseases" value="measles" />
                    Measles</label>
                <label><input type="checkbox" name="diseases" value="allergies" />
                    Allergies</label>
                <label><input type="checkbox" name="diseases" value="mumps" /> Mumps</label>
            </div>

            <label for="allergies">Do you have any allergies?</label>
            <select id="allergies" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="describe-allergies">If yes, please describe</label>
            <input id="describe-allergies" type="text" placeholder="Describe" required />

            <label>Do you suffer from any of the following?</label>
            <div class="other-diseases">
                <label><input type="checkbox" name="other-diseases" value="diabetes" />
                    Diabetes</label>
                <label><input type="checkbox" name="other-diseases" value="sickle-cell" />
                    Sickle Cell</label>
                <label><input type="checkbox" name="other-diseases" value="digestive-problems" />
                    Digestive Problems</label>
                <label><input type="checkbox" name="other-diseases" value="asthma" />
                    Asthma</label>
                <label><input type="checkbox" name="other-diseases" value="headaches" />
                    Headaches</label>
                <label><input type="checkbox" name="other-diseases" value="back-aches" />
                    Back Aches</label>
                <label><input type="checkbox" name="other-diseases" value="others" />
                    Others</label>
            </div>

            <label for="specify-other">If others, please specify</label>
            <input id="specify-other" type="text" placeholder="Specify" required />

            <label for="medication">Do you currently take any regular medication?</label>
            <select id="medication" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="hearing">Do you have any hearing problems?</label>
            <select id="hearing" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="eyesight">Do you have any eyesight problems?</label>
            <select id="eyesight" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="surgery">Have you ever had any surgical operations?</label>
            <select id="surgery" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="illness">Have you ever suffered from any significant illness?</label>
            <select id="illness" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="treatment">Do you receive regular treatment from a family doctor or
                hospital?</label>
            <select id="treatment" required>
                <option value="" disabled selected>Select an option</option>
                <option value="yes">Yes</option>
                <option value="no">No</option>
            </select>

            <label for="additional-info">Any additional information? Please notify us:</label>
            <input id="additional-info" type="text" placeholder="Specify" required />

            <h2>Data Protection and Privacy</h2>
            <p>
                Your privacy and data security are our top priorities. We ensure that
                all your personal and medical information is securely stored, accessed
                only by authorized healthcare professionals, and protected using
                advanced encryption and security protocols. Our system complies with all
                relevant data protection regulations, guaranteeing confidentiality and
                giving you full control over your health records. You can trust that
                your information remains safe and is used solely to enhance your
                healthcare experience.
            </p>
        </div>

        <button type="submit">Submit Form</button>
    </body>
</template>