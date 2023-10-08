import { Router } from "express";
import { prisma } from "../db.js";



const router = Router()

router.get('/shelters', async (req, res) => {
    const shelters = await prisma.shelters.findMany()
    res.json(shelters)
});

router.post('/shelters', async (req, res) => {
    const newShelter = await prisma.shelters.create({
        data: req.body
    })
    res.json(newShelter)
});


export default router;

