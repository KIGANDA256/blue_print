// import { Prisma } from "~/generated/prisma"
// const { PrismaClient } = require('@prisma/client')
// const prisma= new PrismaClient()
import { PrismaClient } from '~/generated/prisma'
//

const prisma = new PrismaClient()

export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  await prisma.patients.create({
    data: {
      firstname: body.firstname,
      lastname: body.lastname,
      gender: body.gender,
      age: body.age,
      date_of_Birth: body.D_O_B,
      Country: body.country,
      County : body.county,
      District: body.district,
      City: body.city,
      village: body.village,
      Sub_County: body.sub_county,
      contact: body.contact,
      NOK_contact: body.NOK_contact,
      email: body.email
    }
  })
  return { data: 'data submitted successfully' }
})