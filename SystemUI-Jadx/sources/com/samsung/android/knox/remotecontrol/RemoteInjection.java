package com.samsung.android.knox.remotecontrol;

import android.os.Process;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.remotecontrol.IRemoteInjection;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class RemoteInjection {
    public static final String TAG = "RemoteInjection";
    public IRemoteInjection mRemoteService;

    public final IRemoteInjection getService() {
        if (this.mRemoteService == null) {
            this.mRemoteService = IRemoteInjection.Stub.asInterface(ServiceManager.getService("remoteinjection"));
        }
        return this.mRemoteService;
    }

    public final boolean injectKeyEvent(KeyEvent keyEvent, boolean z) {
        EnterpriseLicenseManager.log(new ContextInfo(Process.myUid()), "RemoteInjection.injectKeyEvent");
        if (getService() != null) {
            try {
                return this.mRemoteService.injectKeyEvent(keyEvent, z);
            } catch (RemoteException e) {
                Log.d(TAG, "Error injecting key event : " + e);
                return false;
            }
        }
        return false;
    }

    public final boolean injectKeyEventDex(KeyEvent keyEvent, boolean z) {
        EnterpriseLicenseManager.log(new ContextInfo(Process.myUid()), "RemoteInjection.injectKeyEventDex");
        if (getService() != null) {
            try {
                return this.mRemoteService.injectKeyEventDex(keyEvent, z);
            } catch (RemoteException e) {
                Log.d(TAG, "Error injecting key event in Dex Screen : " + e);
                return false;
            }
        }
        return false;
    }

    public final boolean injectPointerEvent(MotionEvent motionEvent, boolean z) {
        if (getService() != null) {
            try {
                return this.mRemoteService.injectPointerEvent(motionEvent, z);
            } catch (RemoteException e) {
                Log.d(TAG, "Error injecting pointer event : " + e);
                return false;
            }
        }
        return false;
    }

    public final boolean injectPointerEventDex(MotionEvent motionEvent, boolean z) {
        EnterpriseLicenseManager.log(new ContextInfo(Process.myUid()), "RemoteInjection.injectPointerEventDex");
        if (getService() != null) {
            try {
                return this.mRemoteService.injectPointerEventDex(motionEvent, z);
            } catch (RemoteException e) {
                Log.d(TAG, "Error injecting Pointer event in Dex Screen : " + e);
                return false;
            }
        }
        return false;
    }

    public final boolean injectTrackballEvent(MotionEvent motionEvent, boolean z) {
        EnterpriseLicenseManager.log(new ContextInfo(Process.myUid()), "RemoteInjection.injectTrackballEvent");
        if (getService() != null) {
            try {
                return this.mRemoteService.injectTrackballEvent(motionEvent, z);
            } catch (RemoteException e) {
                Log.d(TAG, "Error injecting trackball event : " + e);
                return false;
            }
        }
        return false;
    }
}
