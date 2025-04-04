-- CreateTable
CREATE TABLE "patients" (
    "id" SERIAL NOT NULL,
    "firstname" TEXT NOT NULL,
    "lastname" TEXT NOT NULL,
    "date_of_Birth" TIMESTAMP(3) NOT NULL,
    "gender" TEXT NOT NULL,
    "age" INTEGER NOT NULL,
    "Country" TEXT NOT NULL,
    "District" TEXT NOT NULL,
    "City" TEXT NOT NULL,
    "County" TEXT NOT NULL,
    "Sub_County" TEXT NOT NULL,
    "village" TEXT NOT NULL,
    "contact" TEXT NOT NULL,
    "NOK_contact" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "patients_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "patients_id_email_key" ON "patients"("id", "email");
