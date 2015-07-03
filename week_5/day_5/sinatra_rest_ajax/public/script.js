console.log('Hello world!');

// add an <li> ro rhw #todo-list
function appendNewItem(data) {
  $('<li class="'+ (data.done == 't' ? "completed" : "") + '">'+
      '<input class="toggle" type="checkbox" data-id="'+ data.id +'" '+ (data.done == 't' ? 'checked="checked"' : "") + '>'+
      '<label>'+ data.item +'</label>'+
      '<button class="destroy" data-id="'+ data.id +'"></button>'+
    '</li>').prependTo("#todo-list")
}

function getItems() {
  // ajax request to retrieve all the items from the database
  $.ajax({
    type: 'GET',
    url: '/items',
    dataType: 'json'
  }).done(function(data) {
    $.each(data, function(index, item) {
      appendNewItem(item);
    })
  })
}

function createItem() {
  console.log('createItem');
  var itemData = $('#new-todo').val();
  $.ajax({
    type: 'POST',
    url: '/items',
    dataType: 'json',
    data: {item: itemData}
  }).done(function(data) {
    console.log(data);
    appendNewItem(data);
    $('#new-todo').val('');
  })
}

function changeItemStatus() {
  // storing the context of this
  var inputBox = $(this);
  console.log('changeItemStatus');
  var itemId = $(this).data('id');
  var isDone = $(this).is(":checked");
  $.ajax({
    type: 'PUT',
    url: "/items/" + itemId,
    data: {done: isDone},
    dataType: 'json'
  }).done(function(data) {
    console.log('done');
    inputBox.parent().toggleClass('completed');
  })
}

function deleteItem() {
  var deleteBox = $(this);
  var deleteBoxId = deleteBox.data('id');
  $.ajax({
    type: 'DELETE',
    url: "/items/" + deleteBoxId
  }).done(function(data) {
    console.log('done', deleteBox);
    deleteBox.closest('li').remove();
  })
}

$(document).ready(function() {
  getItems();

  $('#new-todo').on('keypress', function(event) {
    // if we press enter we will create a new item
    console.log(event.which);
    if(event.which === 13) {
      createItem();
    }
  })

  // we need to use event delegation here because li.toggle is not on the page when it loads, therefore we have to attach the event listener to #todo-list
  $('#todo-list').on('change', '.toggle', changeItemStatus);
  $('#todo-list').on('click', '.destroy', deleteItem);
})