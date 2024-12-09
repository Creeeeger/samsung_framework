package org.apache.harmony.awt.datatransfer;

import org.apache.harmony.awt.ContextStorage;
import org.apache.harmony.awt.internal.nls.Messages;
import org.apache.harmony.misc.SystemUtils;

/* loaded from: classes.dex */
public abstract class DTK {
    protected final DataTransferThread dataTransferThread;

    public String getDefaultCharset() {
        return "unicode";
    }

    public abstract void initDragAndDrop();

    public abstract void runEventLoop();

    protected DTK() {
        DataTransferThread dataTransferThread = new DataTransferThread(this);
        this.dataTransferThread = dataTransferThread;
        dataTransferThread.start();
    }

    public static DTK getDTK() {
        synchronized (ContextStorage.getContextLock()) {
            if (ContextStorage.shutdownPending()) {
                return null;
            }
            DTK dtk = ContextStorage.getDTK();
            if (dtk == null) {
                dtk = createDTK();
                ContextStorage.setDTK(dtk);
            }
            return dtk;
        }
    }

    private static DTK createDTK() {
        String str;
        int os = SystemUtils.getOS();
        if (os == 1) {
            str = "org.apache.harmony.awt.datatransfer.windows.WinDTK";
        } else {
            if (os != 2) {
                throw new RuntimeException(Messages.getString("awt.4E"));
            }
            str = "org.apache.harmony.awt.datatransfer.linux.LinuxDTK";
        }
        try {
            return (DTK) Class.forName(str).newInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
