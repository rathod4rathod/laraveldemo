$(function () {
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    var clipboard = new Clipboard('#btnCopyCode');
    var pixcel_path = 'pixeltracker/';

    clipboard.on('success', function (e) {
        $.growl.notice({message: 'Script copied to clipboard!', size: 'large'});        
        e.clearSelection();
    });
    clipboard.on('error', function (e) {
        $.growl.error({message: 'Unable to copy script!', size: 'large'});        
    });
    $("#err_msg").html('');
    $("#btnAddPixelTracker").click(function (e) {
        $("#pt_mode").val(1);
    });
    $("#btnSavePixelTracker").click(function (e) {
        e.preventDefault();
        var $mode = parseInt($("#pt_mode").val());

        var $post_url = '';

        if ($mode == 1)
        {
            $post_url = pixcel_path+'add';            
        }
        else if ($mode == 2)
        {
            $post_url = pixcel_path+'edit';
        }
        else
        {
            $.growl.error({message: 'Something went wrong!', size: 'large'});
            return false;
        }
        $.ajax({
            type: "POST",
            async: true,
            cache: false,
            url: $post_url,
            data: $("#frmAddPixelTracker").serialize(),
            success: function (response) {
                if (response.flag == 1)
                {
                    $.growl.notice({message: response.message, size: 'large'});
                    $('#myModal').modal('hide');
                    setTimeout(function () {
                        window.location.reload();
                    }, 1000);

                }
                else if (response.flag == 0)
                {
                    $.growl.error({message: response.message.pixel_tracker_title[0], size: 'large'});
                    return false;
                }
            }, error: function (response) {
                $.growl.error({message: 'Something went wrong!', size: 'large'});
            }});
    });

    $('body').on('change keyup', '#pixel_tracker_title', function () {
        if ($.trim($(this).val()) != '')
        {
            $("#err_msg").html('');
        }
        else
        {
            $("#err_msg").html('* Email Tracker title is required!');
            return false;
        }
    });

    $('body').on('click', '.btnEditPixelTracker', function (e) {
        e.preventDefault();
        $("#pt_mode").val(2);
        $this_obj = $(this);
        $this_obj_id = $this_obj.closest('tr').attr('id');
        $.ajax({
            type: "GET",
            async: true,
            cache: false,
            url: pixcel_path+"get/" + $this_obj_id + '/details',
            success: function (response) {
                if (response.flag == 1)
                {
                    console.log(response.data.name);
                    $("#pixel_tracker_title").val(response.data.name);
                    $("#pt_id").val($this_obj_id);
                    $('#myModal').modal('show');
                }
                else if (response.flag == 0)
                {
                    $.growl.error({message: response.message, size: 'large'});
                    return false;
                }
            }, error: function (response) {
                $.growl.error({message: 'Something went wrong!', size: 'large'});
            }});
    });

    $('body').on('click', '.btnShowTrackerScript', function (e) {
        e.preventDefault();
        $("#pt_mode").val(2);
        $this_obj = $(this);
        $this_obj_id = $this_obj.closest('tr').attr('id');
        $.ajax({
            type: "GET",
            async: true,
            cache: false,
            url: pixcel_path+"get/" + $this_obj_id + '/script',
            success: function (response) {
                if (response.flag == 1)
                {
                    $("#script_code").html(window.atob(response.script).toString());
                    $('#myModal2').modal('show');
                }
                else if (response.flag == 0)
                {
                    $.growl.error({message: response.message, size: 'large'});
                    return false;
                }
            }, error: function (response) {
                $.growl.error({message: 'Something went wrong!', size: 'large'});
            }});
    });

    $('body').on('click', '.btnToggleStatus', function (e) {
        e.preventDefault();
        var $this_obj = $(this);
        $this_obj_id = $this_obj.closest('tr').attr('id');
        var $this_actived = $(this).hasClass('_tactive');
        var $url = '';
        if ($this_actived)
        {
            $url = pixcel_path+'toggle/' + $this_obj_id + '/deactivate';
        }
        else
        {
            $url = pixcel_path+'toggle/' + $this_obj_id + '/activate';
        }
        $.ajax({
            type: "PATCH",
            async: true,
            cache: false,
            url: $url,
            success: function (response) {
                if (response.flag == 1)
                {
                    $.growl.notice({message: response.message, size: 'large'});
                    setTimeout(function () {
                        window.location.reload();
                    }, 1000);
                    return false;
                }
                else if (response.flag == 0)
                {
                    $.growl.error({message: response.message, size: 'large'});
                    return false;
                }
            }, error: function (response) {
                $.growl.error({message: 'Something went wrong!', size: 'large'});
                return false;
            }});
    });

    $('body').on('click', '.btnRemovePixelTracker', function (e) {
        e.preventDefault();
        var $this_obj = $(this);
        $this_obj_id = $this_obj.closest('tr').attr('id');
        $('#delete_modal').modal('show');         
          $('body').on('click', '.delete-confirm', function (e) { 
                var $url = pixcel_path+$this_obj_id + '/delete';
                $.ajax({
                    type: "DELETE",
                    async: true,
                    cache: false,
                    url: $url,
                    success: function (response) {
                        if (response.flag == 1)
                        {
                            $.growl.notice({message: response.message, size: 'large'});
                            setTimeout(function () {
                                window.location.reload();
                            }, 1000);
                            return false;
                        }
                        else if (response.flag == 0)
                        {
                            $.growl.error({message: response.message, size: 'large'});
                            return false;
                        }
                    }, error: function (response) {
                        $.growl.error({message: 'Something went wrong!', size: 'large'});
                        return false;
                    }});
                }); 
          return false;
            });

    $('#myModal').on('hidden.bs.modal', function () {
        $("#err_msg").html('');
        $("#frmAddPixelTracker").trigger('reset');
        $("#pt_id").val('');
    }).on('show.bs.modal', function () {
        if ($("#pt_mode").val() == 1)
        {
            $("#frmAddPixelTracker").trigger('reset');
            $("#pt_id").val('');
        }
        $("#err_msg").html('');
    });

});