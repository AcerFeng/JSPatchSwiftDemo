defineClass('TestJSPatchSwift.CrashTableViewController', {
	viewDidLoad: function() {
		console.log('js viewDidLoad begin')
		self.ORIGviewDidLoad()
		console.log('js viewDidLoad end')
	},

	tableView_cellForRowAtIndexPath: function(tableView, indexPath) {
        console.log('tableView_cellForRowAtIndexPath testlog')
        var cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier")
        cell.textLabel().setText(self.dataArray().toJS()[indexPath.row()])
        return cell
    }
})