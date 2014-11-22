$(document).ready(function(){
  // Listen for the event corresponding to the server returning the form HTML
  $('#new_item_request').on('ajax:success', function(e, data, status, xhr) {
    // $('#email_modal').each(function(el) {
    //   el.find('.modal-body').html(data);
    //   el.modal('show');
    // });

    $('#email_modal').modal('show');
    $('#email_modal .modal-body').html(data);
    console.log("working")
  });
});

// Variadic functions
// This means they don't care about how many arguments you pass to them
// $(document).ready(function(){
//   // Listen for the event corresponding to the server returning the form HTML
//   var email_modal = new Modal('#email_modal');

//   $('#new_item_request').on('ajax:success', function(e, data, status, xhr) {
//     email_modal.setBody(data);
//     email_modal.render();
//   });
// });

// var Modal = function(modal_id) {
//   this.modal_id = modal_id;
//   this.template='<div class="modal fade" id="{{modal_id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
//   <div class="modal-dialog">
//     <div class="modal-content">
//       <div class="modal-header">
//         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
//         <h2 class="modal-title" id="myModalLabel">Send an email!</h2>
//       </div>
//       <div class="modal-body">
//         {{modal_body}}
//       </div>
//       <div class="modal-footer">
//       </div>
//     </div>
//   </div>
// </div>';
// }

// Modal.prototype.getBody = function() {
//   return this.body;
// }

// Modal.prototype.setBody = function(body_html) {
//   this.body = body_html;
// }

// Modal.prototype.render = function() {
//   var node = this.template.compile({modal_id: this.modal_id, modal_body: this.getBody()});
//   node.modal('show');
// }

// // Variadic functions
// // This means they don't care about how many arguments you pass to them
