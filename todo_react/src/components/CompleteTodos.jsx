export const CompleteTodos = (props) => {
  const { completeTodos, onClickBack } = props;
  return (
    <div className='complete-area'>
      <p className='title'>完了のTODO</p>
      <ul>
        {completeTodos.map((todo, index) => (
          <li key={todo}>
            <div className='list-row'>
              <p className='todo-item'>{todo}</p>
              <button onClick={() => onClickBack(index)}>戻す</button>
            </div>
          </li>
        ))}
        {/* <li>
          <div className='list-row'>
            <p className='todo-item'>TODOでした</p>
            <button>戻す</button>
          </div>
        </li> */}
      </ul>
    </div>
  )
};


