import { StrictMode } from "react";
import { createRoot } from "react-dom/client";

// import App from "./App";
// ネームドエクスポートの書き方に変更↓
import { Todo } from "./Todo";

const rootElement = document.getElementById("root");
const root = createRoot(rootElement);

root.render(
  <StrictMode>
    <Todo />
  </StrictMode>
);

