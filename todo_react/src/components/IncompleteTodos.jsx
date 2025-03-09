export const IncompleteTodos = (props) => {
  const {incompleteTodos, onClickMove, onClickDelete } = props;
  return (
    <div className='incomplete-area'>
      <p className='title'>未完了のTODO</p>
      <ul>
        {incompleteTodos.map((todo, index) => (
            // keyを指定することにより何個目の要素なのか目印をつける(一意)
            // (DOMは差分のみを表示させるため）
          <li key={todo}>
            <div className='list-row'>
              <p className='todo-item'>{todo}</p>
              <button onClick={() => onClickMove(index)}>完了</button>
              <button onClick={() => onClickDelete(index)}>削除</button>
            </div>
          </li>
        ))}
        {/* 上記のもとは↓　アロー関数を使用して{};とreturnを省略 */}
          {/* {incompleteTodos.map((todo) => {
          return(
            // keyを指定することにより何個目の要素なのか目印をつける(一意)
            // (DOMは差分のみを表示させるため）
            <li key={todo}>
            <div className='list-row'>
              <p className='todo-item'>{todo}</p>
              <button>完了</button>
              <button>削除</button>
            </div>
          </li>
          );
        })} */}
      </ul>
    </div>
  )
};