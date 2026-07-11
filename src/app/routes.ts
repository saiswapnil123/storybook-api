import { Router } from "express";

const router = Router();

router.get("/health", (_, res) => {
  res.json({
    success: true,
    message: "Storybook API is running",
  });
});

export default router;
