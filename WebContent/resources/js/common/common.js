commonLabels = new Array();
commonLabels['ajax.method.type'] = 'POST';
commonLabels['ajax.method.contentType'] = 'application/json; charset=utf-8';
commonLabels['ajax.method.dataType'] = 'json';
commonLabels['common.paramName'] = 'param1';


/**
 * Function to submit data via ajax request
 * 
 * @param url
 * @param data
 * @param fnName1
 * @param fnName2
 */
function ajaxFormSubmitSync(url, data, fnName1, fnName2) {
	var htmlStr;
	if (data != null) {
		htmlStr = JSON.stringify(data);
	}
	$.ajax({
		async : false,
		type : commonLabels['ajax.method.type'],
		contentType : commonLabels['ajax.method.contentType'],
		url : url,
		data : htmlStr,
		dataType : commonLabels['ajax.method.dataType'],
		success : function(response) {
			var callbacks = $.Callbacks();
			callbacks.add(fnName1);
			callbacks.fire(response);
			idleTime = 0;
		},
		error : function(xhr, status, e) {
			fnRedirectOnError(xhr);
			var errorFn = $.Callbacks();
			errorFn.add(fnName2);
			errorFn.fire(e);
			idleTime = 0;
		},
		complete : function(xhr, status) {
			fnRedirectOnError(xhr);
			idleTime = 0;
		}
	});
}

function ajaxFormSubmitNotGlobal(url, data, fnName1, fnName2, fnName3, rMethod) {
	if (!rMethod) {
		rMethod = 'POST';
	}
	var htmlStr;
	if (data != null) {
		htmlStr = JSON.stringify(data);
	}
	$.ajax({
		async : false,
		global : false,
		type : rMethod,
		contentType : commonLabels['ajax.method.contentType'],
		url : url,
		data : htmlStr,
		dataType : commonLabels['ajax.method.dataType'],
		success : function(response) {
			var callbacks = $.Callbacks();
			callbacks.add(fnName1);
			callbacks.fire(response);
			idleTime = 0;
		},
		error : function(xhr, status, e) {
			fnRedirectOnError(xhr);
			var errorFn = $.Callbacks();
			errorFn.add(fnName2);
			errorFn.fire(e);
			idleTime = 0;
		},

		complete : function(c) {
			var completeFn = $.Callbacks();
			completeFn.add(fnName3);
			completeFn.fire(c);
			idleTime = 0;
		}
	});
}

function ajaxFormSubmitNotGlobalAsync(url, data, fnName1, fnName2, fnName3, rMethod) {
	if (!rMethod) {
		rMethod = 'POST';
	}
	var htmlStr;
	if (data != null) {
		htmlStr = JSON.stringify(data);
	}
	$.ajax({
		global : false,
		type : rMethod,
		contentType : commonLabels['ajax.method.contentType'],
		url : url,
		data : htmlStr,
		dataType : commonLabels['ajax.method.dataType'],
		success : function(response) {
			var callbacks = $.Callbacks();
			callbacks.add(fnName1);
			callbacks.fire(response);
			idleTime = 0;
		},
		error : function(xhr, status, e) {
			fnRedirectOnError(xhr);
			var errorFn = $.Callbacks();
			errorFn.add(fnName2);
			errorFn.fire(e);
			idleTime = 0;
		},

		complete : function(c) {
			var completeFn = $.Callbacks();
			completeFn.add(fnName3);
			completeFn.fire(c);
			idleTime = 0;
		}
	});
}
