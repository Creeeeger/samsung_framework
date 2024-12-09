package org.apache.harmony.awt;

import org.apache.harmony.awt.datatransfer.DTK;

/* loaded from: classes.dex */
public final class ContextStorage {
    private static final ContextStorage globalContext = new ContextStorage();
    private DTK dtk;
    private volatile boolean shutdownPending = false;
    private final Object contextLock = new ContextLock(this, null);

    private class ContextLock {
        private ContextLock() {
        }

        /* synthetic */ ContextLock(ContextStorage contextStorage, ContextLock contextLock) {
            this();
        }
    }

    public static void setDTK(DTK dtk) {
        getCurrentContext().dtk = dtk;
    }

    public static DTK getDTK() {
        return getCurrentContext().dtk;
    }

    public static Object getContextLock() {
        return getCurrentContext().contextLock;
    }

    private static ContextStorage getCurrentContext() {
        return globalContext;
    }

    public static boolean shutdownPending() {
        return getCurrentContext().shutdownPending;
    }
}
