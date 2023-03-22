"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
///here
Object.defineProperty(exports, "__esModule", { value: true });
exports.config = void 0;
const dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
// ENV variables
// - AWS_ACCESS_KEY_ID
// - AWS_SECRET_ACCESS_KEY
// Are Also needed
console.log("process.env.POSTGRES_PASSWORD=" + process.env.POSTGRES_PASSWORD);
exports.config = {
    username: `${process.env.POSTGRES_USERNAME}`,
    password: process.env.POSTGRES_PASSWORD,
    database: process.env.POSTGRES_DB,
    host: process.env.POSTGRES_HOST,
    aws_region: process.env.AWS_REGION,
    aws_profile: process.env.AWS_PROFILE,
    aws_media_bucket: process.env.AWS_BUCKET,
    url: process.env.URL,
    jwt: {
        secret: process.env.JWT_SECRET,
    },
};
console.log("config.password=" + exports.config.password);
//# sourceMappingURL=config.js.map