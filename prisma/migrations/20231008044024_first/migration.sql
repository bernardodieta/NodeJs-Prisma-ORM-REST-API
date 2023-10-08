-- CreateTable
CREATE TABLE `Shelters` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `addres` VARCHAR(191) NOT NULL,
    `tel` INTEGER NOT NULL DEFAULT 999,
    `email` VARCHAR(191) NOT NULL,
    `description` VARCHAR(191) NOT NULL,
    `imagen` VARCHAR(191) NOT NULL,
    `imagen2` VARCHAR(191) NOT NULL,
    `imagen3` VARCHAR(191) NOT NULL,
    `imagen4` VARCHAR(191) NOT NULL,
    `imagen5` VARCHAR(191) NOT NULL,
    `bank` VARCHAR(191) NOT NULL,
    `bankacc` INTEGER NOT NULL DEFAULT 999,
    `owneracc` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `categoryId` INTEGER NOT NULL,

    UNIQUE INDEX `Shelters_name_key`(`name`),
    UNIQUE INDEX `Shelters_addres_key`(`addres`),
    UNIQUE INDEX `Shelters_email_key`(`email`),
    UNIQUE INDEX `Shelters_description_key`(`description`),
    UNIQUE INDEX `Shelters_imagen_key`(`imagen`),
    UNIQUE INDEX `Shelters_imagen2_key`(`imagen2`),
    UNIQUE INDEX `Shelters_imagen3_key`(`imagen3`),
    UNIQUE INDEX `Shelters_imagen4_key`(`imagen4`),
    UNIQUE INDEX `Shelters_imagen5_key`(`imagen5`),
    UNIQUE INDEX `Shelters_bank_key`(`bank`),
    UNIQUE INDEX `Shelters_owneracc_key`(`owneracc`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Users` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `lname` VARCHAR(191) NOT NULL,
    `cel` INTEGER NOT NULL DEFAULT 999,
    `email` VARCHAR(191) NOT NULL,
    `avatar` VARCHAR(191) NOT NULL,
    `username` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `shelterId` INTEGER NOT NULL,

    UNIQUE INDEX `Users_name_key`(`name`),
    UNIQUE INDEX `Users_lname_key`(`lname`),
    UNIQUE INDEX `Users_email_key`(`email`),
    UNIQUE INDEX `Users_avatar_key`(`avatar`),
    UNIQUE INDEX `Users_username_key`(`username`),
    UNIQUE INDEX `Users_password_key`(`password`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Dogs` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `shelterId` VARCHAR(191) NOT NULL,
    `age` INTEGER NOT NULL DEFAULT 999,
    `size` VARCHAR(191) NOT NULL,
    `healty` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `categoryId` INTEGER NOT NULL,

    UNIQUE INDEX `Dogs_name_key`(`name`),
    UNIQUE INDEX `Dogs_shelterId_key`(`shelterId`),
    UNIQUE INDEX `Dogs_size_key`(`size`),
    UNIQUE INDEX `Dogs_healty_key`(`healty`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Category` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Category_name_key`(`name`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Shelters` ADD CONSTRAINT `Shelters_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Category`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Users` ADD CONSTRAINT `Users_shelterId_fkey` FOREIGN KEY (`shelterId`) REFERENCES `Shelters`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Dogs` ADD CONSTRAINT `Dogs_categoryId_fkey` FOREIGN KEY (`categoryId`) REFERENCES `Category`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
