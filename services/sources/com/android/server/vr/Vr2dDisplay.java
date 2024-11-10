package com.android.server.vr;

import android.app.ActivityManagerInternal;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.hardware.display.VirtualDisplayConfig;
import android.media.ImageReader;
import android.os.Handler;
import android.os.RemoteException;
import android.service.vr.IPersistentVrStateCallbacks;
import android.service.vr.IVrManager;
import android.util.Log;
import android.view.Surface;
import com.android.server.LocalServices;
import com.android.server.wm.ActivityTaskManagerInternal;
import com.android.server.wm.WindowManagerInternal;

/* loaded from: classes3.dex */
public class Vr2dDisplay {
    public final ActivityManagerInternal mActivityManagerInternal;
    public final DisplayManager mDisplayManager;
    public ImageReader mImageReader;
    public boolean mIsPersistentVrModeEnabled;
    public boolean mIsVrModeOverrideEnabled;
    public Runnable mStopVDRunnable;
    public Surface mSurface;
    public VirtualDisplay mVirtualDisplay;
    public final IVrManager mVrManager;
    public final WindowManagerInternal mWindowManagerInternal;
    public final Object mVdLock = new Object();
    public final Handler mHandler = new Handler();
    public final IPersistentVrStateCallbacks mVrStateCallbacks = new IPersistentVrStateCallbacks.Stub() { // from class: com.android.server.vr.Vr2dDisplay.1
        public void onPersistentVrStateChanged(boolean z) {
            if (z != Vr2dDisplay.this.mIsPersistentVrModeEnabled) {
                Vr2dDisplay.this.mIsPersistentVrModeEnabled = z;
                Vr2dDisplay.this.updateVirtualDisplay();
            }
        }
    };
    public boolean mIsVirtualDisplayAllowed = true;
    public boolean mBootsToVr = false;
    public int mVirtualDisplayWidth = 1400;
    public int mVirtualDisplayHeight = 1800;
    public int mVirtualDisplayDpi = 320;

    public final void startDebugOnlyBroadcastReceiver(Context context) {
    }

    public Vr2dDisplay(DisplayManager displayManager, ActivityManagerInternal activityManagerInternal, WindowManagerInternal windowManagerInternal, IVrManager iVrManager) {
        this.mDisplayManager = displayManager;
        this.mActivityManagerInternal = activityManagerInternal;
        this.mWindowManagerInternal = windowManagerInternal;
        this.mVrManager = iVrManager;
    }

    public void init(Context context, boolean z) {
        startVrModeListener();
        startDebugOnlyBroadcastReceiver(context);
        this.mBootsToVr = z;
        if (z) {
            updateVirtualDisplay();
        }
    }

    public final void updateVirtualDisplay() {
        if (shouldRunVirtualDisplay()) {
            Log.i("Vr2dDisplay", "Attempting to start virtual display");
            startVirtualDisplay();
        } else {
            stopVirtualDisplay();
        }
    }

    public final void startVrModeListener() {
        IVrManager iVrManager = this.mVrManager;
        if (iVrManager != null) {
            try {
                iVrManager.registerPersistentVrStateListener(this.mVrStateCallbacks);
            } catch (RemoteException e) {
                Log.e("Vr2dDisplay", "Could not register VR State listener.", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0074 A[Catch: all -> 0x00a3, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0018, B:10:0x006d, B:12:0x0074, B:13:0x0080, B:16:0x0086, B:18:0x008a, B:19:0x009e, B:20:0x00a1, B:24:0x0077, B:26:0x007e, B:27:0x0046), top: B:3:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0077 A[Catch: all -> 0x00a3, TryCatch #0 {, blocks: (B:4:0x0003, B:9:0x0018, B:10:0x006d, B:12:0x0074, B:13:0x0080, B:16:0x0086, B:18:0x008a, B:19:0x009e, B:20:0x00a1, B:24:0x0077, B:26:0x007e, B:27:0x0046), top: B:3:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void setVirtualDisplayProperties(android.app.Vr2dDisplayProperties r10) {
        /*
            r9 = this;
            java.lang.Object r0 = r9.mVdLock
            monitor-enter(r0)
            int r1 = r10.getWidth()     // Catch: java.lang.Throwable -> La3
            int r2 = r10.getHeight()     // Catch: java.lang.Throwable -> La3
            int r3 = r10.getDpi()     // Catch: java.lang.Throwable -> La3
            r4 = 0
            r5 = 1
            if (r1 < r5) goto L46
            if (r2 < r5) goto L46
            if (r3 >= r5) goto L18
            goto L46
        L18:
            java.lang.String r6 = "Vr2dDisplay"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3
            r7.<init>()     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = "Setting width/height/dpi to "
            r7.append(r8)     // Catch: java.lang.Throwable -> La3
            r7.append(r1)     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = ","
            r7.append(r8)     // Catch: java.lang.Throwable -> La3
            r7.append(r2)     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = ","
            r7.append(r8)     // Catch: java.lang.Throwable -> La3
            r7.append(r3)     // Catch: java.lang.Throwable -> La3
            java.lang.String r7 = r7.toString()     // Catch: java.lang.Throwable -> La3
            android.util.Log.i(r6, r7)     // Catch: java.lang.Throwable -> La3
            r9.mVirtualDisplayWidth = r1     // Catch: java.lang.Throwable -> La3
            r9.mVirtualDisplayHeight = r2     // Catch: java.lang.Throwable -> La3
            r9.mVirtualDisplayDpi = r3     // Catch: java.lang.Throwable -> La3
            r1 = r5
            goto L6d
        L46:
            java.lang.String r6 = "Vr2dDisplay"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> La3
            r7.<init>()     // Catch: java.lang.Throwable -> La3
            java.lang.String r8 = "Ignoring Width/Height/Dpi values of "
            r7.append(r8)     // Catch: java.lang.Throwable -> La3
            r7.append(r1)     // Catch: java.lang.Throwable -> La3
            java.lang.String r1 = ","
            r7.append(r1)     // Catch: java.lang.Throwable -> La3
            r7.append(r2)     // Catch: java.lang.Throwable -> La3
            java.lang.String r1 = ","
            r7.append(r1)     // Catch: java.lang.Throwable -> La3
            r7.append(r3)     // Catch: java.lang.Throwable -> La3
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> La3
            android.util.Log.i(r6, r1)     // Catch: java.lang.Throwable -> La3
            r1 = r4
        L6d:
            int r2 = r10.getAddedFlags()     // Catch: java.lang.Throwable -> La3
            r2 = r2 & r5
            if (r2 != r5) goto L77
            r9.mIsVirtualDisplayAllowed = r5     // Catch: java.lang.Throwable -> La3
            goto L80
        L77:
            int r10 = r10.getRemovedFlags()     // Catch: java.lang.Throwable -> La3
            r10 = r10 & r5
            if (r10 != r5) goto L80
            r9.mIsVirtualDisplayAllowed = r4     // Catch: java.lang.Throwable -> La3
        L80:
            android.hardware.display.VirtualDisplay r10 = r9.mVirtualDisplay     // Catch: java.lang.Throwable -> La3
            if (r10 == 0) goto L9e
            if (r1 == 0) goto L9e
            boolean r1 = r9.mIsVirtualDisplayAllowed     // Catch: java.lang.Throwable -> La3
            if (r1 == 0) goto L9e
            int r1 = r9.mVirtualDisplayWidth     // Catch: java.lang.Throwable -> La3
            int r2 = r9.mVirtualDisplayHeight     // Catch: java.lang.Throwable -> La3
            int r3 = r9.mVirtualDisplayDpi     // Catch: java.lang.Throwable -> La3
            r10.resize(r1, r2, r3)     // Catch: java.lang.Throwable -> La3
            android.media.ImageReader r10 = r9.mImageReader     // Catch: java.lang.Throwable -> La3
            r1 = 0
            r9.mImageReader = r1     // Catch: java.lang.Throwable -> La3
            r9.startImageReader()     // Catch: java.lang.Throwable -> La3
            r10.close()     // Catch: java.lang.Throwable -> La3
        L9e:
            r9.updateVirtualDisplay()     // Catch: java.lang.Throwable -> La3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            return
        La3:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> La3
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.vr.Vr2dDisplay.setVirtualDisplayProperties(android.app.Vr2dDisplayProperties):void");
    }

    public int getVirtualDisplayId() {
        synchronized (this.mVdLock) {
            VirtualDisplay virtualDisplay = this.mVirtualDisplay;
            if (virtualDisplay == null) {
                return -1;
            }
            return virtualDisplay.getDisplay().getDisplayId();
        }
    }

    public final void startVirtualDisplay() {
        if (this.mDisplayManager == null) {
            Log.w("Vr2dDisplay", "Cannot create virtual display because mDisplayManager == null");
            return;
        }
        synchronized (this.mVdLock) {
            if (this.mVirtualDisplay != null) {
                Log.i("Vr2dDisplay", "VD already exists, ignoring request");
                return;
            }
            VirtualDisplayConfig.Builder builder = new VirtualDisplayConfig.Builder("VR 2D Display", this.mVirtualDisplayWidth, this.mVirtualDisplayHeight, this.mVirtualDisplayDpi);
            builder.setUniqueId("277f1a09-b88d-4d1e-8716-796f114d080b");
            builder.setFlags(1485);
            VirtualDisplay createVirtualDisplay = this.mDisplayManager.createVirtualDisplay(null, builder.build(), null, null);
            this.mVirtualDisplay = createVirtualDisplay;
            if (createVirtualDisplay != null) {
                updateDisplayId(createVirtualDisplay.getDisplay().getDisplayId());
                startImageReader();
                Log.i("Vr2dDisplay", "VD created: " + this.mVirtualDisplay);
                return;
            }
            Log.w("Vr2dDisplay", "Virtual display id is null after createVirtualDisplay");
            updateDisplayId(-1);
        }
    }

    public final void updateDisplayId(int i) {
        ((ActivityTaskManagerInternal) LocalServices.getService(ActivityTaskManagerInternal.class)).setVr2dDisplayId(i);
        this.mWindowManagerInternal.setVr2dDisplayId(i);
    }

    public final void stopVirtualDisplay() {
        if (this.mStopVDRunnable == null) {
            this.mStopVDRunnable = new Runnable() { // from class: com.android.server.vr.Vr2dDisplay.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Vr2dDisplay.this.shouldRunVirtualDisplay()) {
                        Log.i("Vr2dDisplay", "Virtual Display destruction stopped: VrMode is back on.");
                        return;
                    }
                    Log.i("Vr2dDisplay", "Stopping Virtual Display");
                    synchronized (Vr2dDisplay.this.mVdLock) {
                        Vr2dDisplay.this.updateDisplayId(-1);
                        Vr2dDisplay.this.setSurfaceLocked(null);
                        if (Vr2dDisplay.this.mVirtualDisplay != null) {
                            Vr2dDisplay.this.mVirtualDisplay.release();
                            Vr2dDisplay.this.mVirtualDisplay = null;
                        }
                        Vr2dDisplay.this.stopImageReader();
                    }
                }
            };
        }
        this.mHandler.removeCallbacks(this.mStopVDRunnable);
        this.mHandler.postDelayed(this.mStopVDRunnable, 2000L);
    }

    public final void setSurfaceLocked(Surface surface) {
        if (this.mSurface != surface) {
            if (surface == null || surface.isValid()) {
                Log.i("Vr2dDisplay", "Setting the new surface from " + this.mSurface + " to " + surface);
                VirtualDisplay virtualDisplay = this.mVirtualDisplay;
                if (virtualDisplay != null) {
                    virtualDisplay.setSurface(surface);
                }
                Surface surface2 = this.mSurface;
                if (surface2 != null) {
                    surface2.release();
                }
                this.mSurface = surface;
            }
        }
    }

    public final void startImageReader() {
        if (this.mImageReader == null) {
            this.mImageReader = ImageReader.newInstance(this.mVirtualDisplayWidth, this.mVirtualDisplayHeight, 1, 2);
            Log.i("Vr2dDisplay", "VD startImageReader: res = " + this.mVirtualDisplayWidth + "X" + this.mVirtualDisplayHeight + ", dpi = " + this.mVirtualDisplayDpi);
        }
        synchronized (this.mVdLock) {
            setSurfaceLocked(this.mImageReader.getSurface());
        }
    }

    public final void stopImageReader() {
        ImageReader imageReader = this.mImageReader;
        if (imageReader != null) {
            imageReader.close();
            this.mImageReader = null;
        }
    }

    public final boolean shouldRunVirtualDisplay() {
        return this.mIsVirtualDisplayAllowed && (this.mBootsToVr || this.mIsPersistentVrModeEnabled || this.mIsVrModeOverrideEnabled);
    }
}
