package com.android.internal.os;

import android.content.pm.ApplicationInfo;
import android.net.Credentials;
import android.net.LocalSocket;
import android.os.Process;
import android.os.Trace;
import android.system.ErrnoException;
import android.system.Os;
import android.util.Log;
import dalvik.system.VMRuntime;
import java.io.DataOutputStream;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

/* loaded from: classes5.dex */
class ZygoteConnection {
    private static final String TAG = "Zygote";
    private final String abiList;
    private boolean isEof;
    private final LocalSocket mSocket;
    private final DataOutputStream mSocketOutStream;
    private final Credentials peer;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ZygoteConnection(LocalSocket socket, String abiList) throws IOException {
        this.mSocket = socket;
        this.abiList = abiList;
        this.mSocketOutStream = new DataOutputStream(socket.getOutputStream());
        socket.setSoTimeout(1000);
        try {
            Credentials peerCredentials = socket.getPeerCredentials();
            this.peer = peerCredentials;
            if (peerCredentials.getUid() != 1000) {
                throw new ZygoteSecurityException("Only system UID is allowed to connect to Zygote.");
            }
            this.isEof = false;
        } catch (IOException ex) {
            Log.e(TAG, "Cannot read peer credentials", ex);
            throw ex;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileDescriptor getFileDescriptor() {
        return this.mSocket.getFileDescriptor();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:100:0x01e7, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01e8, code lost:            r6 = r33;     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01ed, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01ee, code lost:            r6 = r33;        r7 = r34;     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x020e, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x021b, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x021f, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0253, code lost:            throw new com.android.internal.os.ZygoteSecurityException("Client may not specify capabilities: permitted=0x" + java.lang.Long.toHexString(r0.mPermittedCapabilities) + ", effective=0x" + java.lang.Long.toHexString(r0.mEffectiveCapabilities));     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0263, code lost:            r32.close();     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0268, code lost:            if (r0.mUsapPoolStatusSpecified == false) goto L143;     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0272, code lost:            return r2.handleUsapPoolStatusChange(r37, r0.mUsapPoolEnabled);     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0277, code lost:            if (r0.mApiDenylistExemptions == null) goto L147;     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x027f, code lost:            return r2.handleApiDenylistExemptions(r37, r0.mApiDenylistExemptions);     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0282, code lost:            if (r0.mHiddenApiAccessLogSampleRate != (-1)) goto L154;     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0286, code lost:            if (r0.mHiddenApiAccessStatslogSampleRate == (-1)) goto L152;     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0290, code lost:            throw new java.lang.AssertionError("Shouldn't get here");     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0299, code lost:            return r2.handleHiddenApiAccessLogSampleRate(r37, r0.mHiddenApiAccessLogSampleRate, r0.mHiddenApiAccessStatslogSampleRate);     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0260, code lost:            r2 = r36;        r32 = r0;     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0195, code lost:            r32 = r0;     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0197, code lost:            r3 = r0.mAppDataDir;     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0199, code lost:            r1 = r0.mIsTopApp;        r33 = r6;        r6 = r0.mPkgDataInfoList;        r34 = r7;        r7 = r0.mAllowlistedDataInfoList;        r7 = r0.mBindMountAppDataDirs;        r7 = r0.mBindMountAppStorageDirs;        r0 = com.android.internal.os.Zygote.forkAndSpecialize(r11, r12, r13, r14, r8, r0, r15, r5, r9, r29, r10, r2, r3, r1, r6, r7, r7, r7);     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01c7, code lost:            if (r0 != 0) goto L115;     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01f5, code lost:            r6 = r33;     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01f9, code lost:            libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) r6);     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01ff, code lost:            handleParentProc(r0, r34);     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0203, code lost:            libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) null);        libcore.io.IoUtils.closeQuietly(r34);     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0209, code lost:            r32.close();     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x020d, code lost:            return null;     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0210, code lost:            r0 = th;     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0211, code lost:            r7 = r34;     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0213, code lost:            libcore.io.IoUtils.closeQuietly(r6);        libcore.io.IoUtils.closeQuietly(r7);     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x021a, code lost:            throw r0;     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c9, code lost:            r37.setForkChild();        r37.closeServerSocket();        libcore.io.IoUtils.closeQuietly(r34);     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d2, code lost:            r7 = 0;     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01d9, code lost:            r0 = handleChildProc(r0, r33, r0.mStartChildZygote);     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x01dd, code lost:            libcore.io.IoUtils.closeQuietly(r33);        libcore.io.IoUtils.closeQuietly((java.io.FileDescriptor) null);     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e3, code lost:            r32.close();     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e6, code lost:            return r0;     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.io.FileDescriptor] */
    /* JADX WARN: Type inference failed for: r7v5, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Runnable processCommand(com.android.internal.os.ZygoteServer r37, boolean r38) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteConnection.processCommand(com.android.internal.os.ZygoteServer, boolean):java.lang.Runnable");
    }

    private void handleAbiListQuery() {
        try {
            byte[] abiListBytes = this.abiList.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(abiListBytes.length);
            this.mSocketOutStream.write(abiListBytes);
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handlePidQuery() {
        try {
            String pidString = String.valueOf(Process.myPid());
            byte[] pidStringBytes = pidString.getBytes(StandardCharsets.US_ASCII);
            this.mSocketOutStream.writeInt(pidStringBytes.length);
            this.mSocketOutStream.write(pidStringBytes);
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handleBootCompleted() {
        try {
            this.mSocketOutStream.writeInt(0);
            VMRuntime.bootCompleted();
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private void handlePreload() {
        try {
            if (isPreloadComplete()) {
                this.mSocketOutStream.writeInt(1);
            } else {
                preload();
                this.mSocketOutStream.writeInt(0);
            }
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable stateChangeWithUsapPoolReset(ZygoteServer zygoteServer, Runnable stateChangeCode) {
        try {
            if (zygoteServer.isUsapPoolEnabled()) {
                Log.i(TAG, "Emptying USAP Pool due to state change.");
                Zygote.emptyUsapPool();
            }
            stateChangeCode.run();
            if (zygoteServer.isUsapPoolEnabled()) {
                Runnable fpResult = zygoteServer.fillUsapPool(new int[]{this.mSocket.getFileDescriptor().getInt$()}, false);
                if (fpResult != null) {
                    zygoteServer.setForkChild();
                    return fpResult;
                }
                Log.i(TAG, "Finished refilling USAP Pool after state change.");
            }
            this.mSocketOutStream.writeInt(0);
            return null;
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable handleApiDenylistExemptions(ZygoteServer zygoteServer, final String[] exemptions) {
        return stateChangeWithUsapPoolReset(zygoteServer, new Runnable() { // from class: com.android.internal.os.ZygoteConnection$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ZygoteInit.setApiDenylistExemptions(exemptions);
            }
        });
    }

    private Runnable handleUsapPoolStatusChange(ZygoteServer zygoteServer, boolean newStatus) {
        try {
            Runnable fpResult = zygoteServer.setUsapPoolStatus(newStatus, this.mSocket);
            if (fpResult == null) {
                this.mSocketOutStream.writeInt(0);
            } else {
                zygoteServer.setForkChild();
            }
            return fpResult;
        } catch (IOException ioe) {
            throw new IllegalStateException("Error writing to command socket", ioe);
        }
    }

    private Runnable handleHiddenApiAccessLogSampleRate(ZygoteServer zygoteServer, final int samplingRate, final int statsdSamplingRate) {
        return stateChangeWithUsapPoolReset(zygoteServer, new Runnable() { // from class: com.android.internal.os.ZygoteConnection$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ZygoteConnection.lambda$handleHiddenApiAccessLogSampleRate$1(samplingRate, statsdSamplingRate);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$handleHiddenApiAccessLogSampleRate$1(int samplingRate, int statsdSamplingRate) {
        int maxSamplingRate = Math.max(samplingRate, statsdSamplingRate);
        ZygoteInit.setHiddenApiAccessLogSampleRate(maxSamplingRate);
        StatsdHiddenApiUsageLogger.setHiddenApiAccessLogSampleRates(samplingRate, statsdSamplingRate);
        ZygoteInit.setHiddenApiUsageLogger(StatsdHiddenApiUsageLogger.getInstance());
    }

    protected void preload() {
        ZygoteInit.lazyPreload();
    }

    protected boolean isPreloadComplete() {
        return ZygoteInit.isPreloadComplete();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DataOutputStream getSocketOutputStream() {
        return this.mSocketOutStream;
    }

    protected void handlePreloadPackage(String packagePath, String libsPath, String libFileName, String cacheKey) {
        throw new RuntimeException("Zygote does not support package preloading");
    }

    protected boolean canPreloadApp() {
        return false;
    }

    protected void handlePreloadApp(ApplicationInfo aInfo) {
        throw new RuntimeException("Zygote does not support app preloading");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void closeSocket() {
        try {
            this.mSocket.close();
        } catch (IOException ex) {
            Log.e(TAG, "Exception while closing command socket in parent", ex);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isClosedByPeer() {
        return this.isEof;
    }

    private Runnable handleChildProc(ZygoteArguments parsedArgs, FileDescriptor pipeFd, boolean isZygote) {
        closeSocket();
        Zygote.setAppProcessName(parsedArgs, TAG);
        Trace.traceEnd(64L);
        if (parsedArgs.mInvokeWith != null) {
            WrapperInit.execApplication(parsedArgs.mInvokeWith, parsedArgs.mNiceName, parsedArgs.mTargetSdkVersion, VMRuntime.getCurrentInstructionSet(), pipeFd, parsedArgs.mRemainingArgs);
            throw new IllegalStateException("WrapperInit.execApplication unexpectedly returned");
        }
        if (!isZygote) {
            return ZygoteInit.zygoteInit(parsedArgs.mTargetSdkVersion, parsedArgs.mDisabledCompatChanges, parsedArgs.mRemainingArgs, null);
        }
        return ZygoteInit.childZygoteInit(parsedArgs.mRemainingArgs);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void handleParentProc(int r22, java.io.FileDescriptor r23) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.os.ZygoteConnection.handleParentProc(int, java.io.FileDescriptor):void");
    }

    private void setChildPgid(int pid) {
        try {
            Os.setpgid(pid, Os.getpgid(this.peer.getPid()));
        } catch (ErrnoException e) {
            Log.i(TAG, "Zygote: setpgid failed. This is normal if peer is not in our session");
        }
    }
}
