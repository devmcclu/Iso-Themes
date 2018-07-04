extends Tree

func _ready():
	self.set_columns(3)
	self.create_item()
	self.set_select_mode(SELECT_ROW)
	self.set_column_titles_visible(true)
	self.set_column_title(0, "Column1")
	self.set_column_title(1, "Column2")
	self.set_column_title(2, "Column3")
	
	var root = self.get_root()
	root.set_text(0, "collaspe")
	
	var check = self.create_item(root)
	check.set_text(1, "Check Item")
	check.set_cell_mode(0, 1)
	check.set_tooltip(0, "Tooltip")
	check.set_editable(0, true)

	var range_ = self.create_item(root)
	range_.set_text(1, "Range Item")
	range_.set_cell_mode(2, 2)
	range_.set_editable(2, true)
	
	var edit = self.create_item(root)
	edit.set_text(1, "Editable Text")
	edit.set_editable(1, true)
	
	var button = self.create_item(root)
	button.set_editable(1, true)
	var real_button = Button.new()
	real_button.set_text("Button")
	button.add_button(0, real_button, 0)
	print(button.get_button(0,0))