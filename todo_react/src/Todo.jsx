import { useState } from 'react';
import './styles.css';
import { InputTodo } from './components/InputTodo';
import { IncompleteTodos } from './components/IncompleteTodos';
import { CompleteTodos } from './components/CompleteTodos';

// 通常関数(デフォルトエクスポート)↓
// export default function App(){
// アロー関数を使ったネームドエクスポートに変更
export const Todo = () => {
  const [todoText, setTodoText] = useState("");
  const [incompleteTodos, setIncompleteTodos] = useState ([]);
  const [completeTodos, setCompleteTodos] = useState ([]);
  const onChangeTodoText = (e) => setTodoText(e.target.value);

  const onClickAdd = () => {
    if (todoText === "") return;
    // スプレッド構文[...incompleteTodos]は
    // incompleteTodosをコピーして新しい配列newTodosを作成している
    const newTodos = [...incompleteTodos, todoText];
    setIncompleteTodos(newTodos);
    setTodoText("");
  };

  const onclickDelete = (index) => {
    const newTodos = [...incompleteTodos];
    // spliceメソッド：配列から第1引数に渡された値から、第2引数こ分削除する
    newTodos.splice(index, 1);
    setIncompleteTodos(newTodos);
  };

  // const onClickMove = (index) => {
  //   console.log("ボタンが押されました", index);
  //   const newTodos = [...incompleteTodos];
  //   const completedTodos = [...completeTodos];
    
  //   console.log("移動前の未完了リスト：", newTodos);
  //   console.log("移動前の完了リスト：", completedTodos);

  //   const moveItem = incompleteTodos[index];
  //   // push：配列末尾へ追加　unshift：配列先頭へ追加
  //   completedTodos.push(moveItem);
  //   newTodos.splice(index, 1);
  //   console.log("移動前の未完了リスト：", newTodos);
  //   console.log("移動前の完了リスト：", completedTodos);

  //   setIncompleteTodos(newTodos);
  //   setCompleteTodos(completedTodos);
  // };

  const onClickMove = (index) => {
    const newTodos = [...incompleteTodos];
    newTodos.splice(index, 1);

    const completedTodos = [...completeTodos,incompleteTodos[index]];
    setIncompleteTodos(newTodos);
    setCompleteTodos(completedTodos);
  };

  const onClickBack = (index) => {
    const newCompleteTodos = [...completeTodos];
    newCompleteTodos.splice(index, 2);

    const newIncompleteTodos = [...incompleteTodos, completeTodos[index]];
    setCompleteTodos(newCompleteTodos);
    setIncompleteTodos(newIncompleteTodos);
  };

  const isMaxLimitIncompleteTodos = incompleteTodos.length >=5 

  return (
    <>
    {/* componentsのInputTodoを呼びだす→上にimport文追加
    　　propsで渡す　
        todoText：渡すprops名を決める
        {todoText}：何を渡すかを書く(今回はstateのtodoText)
     */}
    <InputTodo todoText={todoText} onChange={onChangeTodoText} onClick={onClickAdd} disabled={isMaxLimitIncompleteTodos}/>
    {isMaxLimitIncompleteTodos &&(
      <p style={{ color: "red" }}>
        登録できるのは5個まで！
      </p>
    )}
    <IncompleteTodos incompleteTodos={incompleteTodos} onClickMove={onClickMove} onClickDelete={onclickDelete} />
    <CompleteTodos completeTodos={completeTodos} onClickBack={onClickBack} />
    </>
  );
};
