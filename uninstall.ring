func main
	? "Removing Folder : ring/editor/visualstudio"
	cDir = CurrentDir()
	chdir(exefolder()+"../editor")
	OSDeleteFolder("visualstudio")
	chdir(cDir)

func OSDeleteFolder cFolder 
	if isWindows() 
		systemSilent("rd /s /q " + cFolder)
	else
		systemSilent("rm -r " + cFolder)
	ok