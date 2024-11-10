package com.android.server.resources;

import android.content.res.IResourcesManager;
import android.os.Bundle;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.os.RemoteCallback;
import android.os.ShellCommand;
import android.util.Slog;
import java.io.IOException;
import java.io.PrintWriter;

/* loaded from: classes3.dex */
public class ResourcesManagerShellCommand extends ShellCommand {
    public final IResourcesManager mInterface;

    public ResourcesManagerShellCommand(IResourcesManager iResourcesManager) {
        this.mInterface = iResourcesManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0023 A[Catch: RemoteException -> 0x002d, IllegalArgumentException -> 0x0043, TryCatch #2 {RemoteException -> 0x002d, IllegalArgumentException -> 0x0043, blocks: (B:7:0x000c, B:12:0x0023, B:14:0x0028, B:16:0x0016), top: B:6:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0028 A[Catch: RemoteException -> 0x002d, IllegalArgumentException -> 0x0043, TRY_LEAVE, TryCatch #2 {RemoteException -> 0x002d, IllegalArgumentException -> 0x0043, blocks: (B:7:0x000c, B:12:0x0023, B:14:0x0028, B:16:0x0016), top: B:6:0x000c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int onCommand(java.lang.String r5) {
        /*
            r4 = this;
            if (r5 != 0) goto L7
            int r4 = r4.handleDefaultCommands(r5)
            return r4
        L7:
            java.io.PrintWriter r0 = r4.getErrPrintWriter()
            r1 = -1
            int r2 = r5.hashCode()     // Catch: android.os.RemoteException -> L2d java.lang.IllegalArgumentException -> L43
            r3 = 3095028(0x2f39f4, float:4.337058E-39)
            if (r2 == r3) goto L16
            goto L20
        L16:
            java.lang.String r2 = "dump"
            boolean r2 = r5.equals(r2)     // Catch: android.os.RemoteException -> L2d java.lang.IllegalArgumentException -> L43
            if (r2 == 0) goto L20
            r2 = 0
            goto L21
        L20:
            r2 = r1
        L21:
            if (r2 == 0) goto L28
            int r4 = r4.handleDefaultCommands(r5)     // Catch: android.os.RemoteException -> L2d java.lang.IllegalArgumentException -> L43
            return r4
        L28:
            int r4 = r4.dumpResources()     // Catch: android.os.RemoteException -> L2d java.lang.IllegalArgumentException -> L43
            return r4
        L2d:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "Remote exception: "
            r5.append(r2)
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r0.println(r4)
            goto L5c
        L43:
            r4 = move-exception
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r2 = "Error: "
            r5.append(r2)
            java.lang.String r4 = r4.getMessage()
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            r0.println(r4)
        L5c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.resources.ResourcesManagerShellCommand.onCommand(java.lang.String):int");
    }

    public final int dumpResources() {
        String nextArgRequired = getNextArgRequired();
        try {
            ParcelFileDescriptor dup = ParcelFileDescriptor.dup(getOutFileDescriptor());
            try {
                final ConditionVariable conditionVariable = new ConditionVariable();
                if (!this.mInterface.dumpResources(nextArgRequired, dup, new RemoteCallback(new RemoteCallback.OnResultListener() { // from class: com.android.server.resources.ResourcesManagerShellCommand$$ExternalSyntheticLambda0
                    public final void onResult(Bundle bundle) {
                        conditionVariable.open();
                    }
                }, (Handler) null))) {
                    getErrPrintWriter().println("RESOURCES DUMP FAILED on process " + nextArgRequired);
                    if (dup != null) {
                        dup.close();
                    }
                    return -1;
                }
                conditionVariable.block(5000L);
                if (dup == null) {
                    return 0;
                }
                dup.close();
                return 0;
            } finally {
            }
        } catch (IOException e) {
            Slog.e("ResourcesManagerShellCommand", "Exception while dumping resources", e);
            getErrPrintWriter().println("Exception while dumping resources: " + e.getMessage());
            return -1;
        }
    }

    public void onHelp() {
        PrintWriter outPrintWriter = getOutPrintWriter();
        outPrintWriter.println("Resources manager commands:");
        outPrintWriter.println("  help");
        outPrintWriter.println("    Print this help text.");
        outPrintWriter.println("  dump <PROCESS>");
        outPrintWriter.println("    Dump the Resources objects in use as well as the history of Resources");
    }
}
