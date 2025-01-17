package com.nitobi.eclipse.facet;

import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.wst.common.project.facet.core.IDelegate;
import org.eclipse.wst.common.project.facet.core.IProjectFacetVersion;

public class ServerUninstallDelegate implements IDelegate {

	public void execute(IProject project, IProjectFacetVersion fv,
			Object config, IProgressMonitor monitor) throws CoreException 
	{
		IFolder webInfLibFolder = Utility.getWebInfLib(project);
        IFile serverFile = webInfLibFolder.getFile("nitobi-server-lib.jar");
        serverFile.delete(false, monitor);
	}

}
