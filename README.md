# AI Therapist Application

A full-stack AI-powered therapy application with Next.js frontend and Node.js backend.

## 🚀 Quick Start

### Prerequisites
- Node.js 18+ installed
- MongoDB Atlas account (or local MongoDB)
- API keys configured in `.env` files

### Installation

1. Clone the repository:
```bash
git clone https://github.com/ArchitTiwari-max/ai-therapist.git
cd ai-therapist
```

2. Install dependencies for both frontend and backend:
```bash
# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../ai-therapist-agent
npm install
```

3. Configure environment variables:
   - Copy `.env.example` to `.env` in both `backend` and `ai-therapist-agent` folders
   - Add your API keys and database URLs

### Running the Application

#### Option 1: Run both servers together (Recommended)
```bash
./start-all.sh
```

This will start:
- Backend on http://localhost:3001
- Frontend on http://localhost:3000

#### Option 2: Run servers separately

**Backend:**
```bash
cd backend
npm run dev
```

**Frontend:**
```bash
cd ai-therapist-agent
npm run dev
```

### Stopping the Application

```bash
./stop-all.sh
```

## 📁 Project Structure

```
ai-therapist/
├── backend/                 # Node.js backend with Express
│   ├── src/
│   ├── package.json
│   └── .env
├── ai-therapist-agent/      # Next.js frontend
│   ├── app/
│   ├── components/
│   ├── package.json
│   └── .env
├── start-all.sh            # Script to start both servers
├── stop-all.sh             # Script to stop both servers
└── README.md
```

## 🛠️ Tech Stack

### Frontend
- Next.js 14
- React 18
- TailwindCSS
- Shadcn UI Components
- TypeScript

### Backend
- Node.js
- Express
- MongoDB with Mongoose
- TypeScript
- Inngest
- Google Generative AI

## 🔧 Configuration

### Backend Environment Variables
```env
PORT=3001
NODE_ENV=development
GEMINI_API_KEY=your_api_key
JWT_SECRET=your_jwt_secret
MONGODB_URI=your_mongodb_uri
```

### Frontend Environment Variables
Configure as needed in `ai-therapist-agent/.env`

## 📝 Available Scripts

### Backend
- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm start` - Start production server

### Frontend
- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm start` - Start production server

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📄 License

This project is licensed under the MIT License.

## 👨‍💻 Author

**Archit Tiwari**
- GitHub: [@ArchitTiwari-max](https://github.com/ArchitTiwari-max)

## 🙏 Acknowledgments

- Google Generative AI for AI capabilities
- MongoDB for database services
- Next.js and React communities
