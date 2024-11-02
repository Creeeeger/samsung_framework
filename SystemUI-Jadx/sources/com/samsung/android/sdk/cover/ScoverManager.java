package com.samsung.android.sdk.cover;

import android.R;
import android.content.ComponentName;
import android.content.Context;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.util.Slog;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import com.android.systemui.edgelighting.device.EdgeLightingCoverManager;
import com.samsung.android.cover.CoverState;
import com.samsung.android.cover.ICoverManager;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.sdk.SsdkUnsupportedException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class ScoverManager {
    public static boolean sIsClearCoverSystemFeatureEnabled = false;
    public static boolean sIsClearSideViewCoverSystemFeatureEnabled = false;
    public static boolean sIsFilpCoverSystemFeatureEnabled = false;
    public static boolean sIsLEDBackCoverSystemFeatureEnabled = false;
    public static boolean sIsMiniSviewWalletCoverSysltemFeatureEnabled = false;
    public static boolean sIsNeonCoverSystemFeatureEnabled = false;
    public static boolean sIsNfcLedCoverSystemFeatureEnabled = false;
    public static boolean sIsSViewCoverSystemFeatureEnabled = false;
    public static boolean sIsSystemFeatureQueried = false;
    public static int sServiceVersion = 16777216;
    public final Context mContext;
    public final CopyOnWriteArrayList mCoverStateListenerDelegates;
    public ICoverManager mService;

    public ScoverManager(Context context) {
        int intValue;
        new CopyOnWriteArrayList();
        this.mCoverStateListenerDelegates = new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        new CopyOnWriteArrayList();
        new Binder();
        this.mContext = context;
        if (!sIsSystemFeatureQueried) {
            sIsFilpCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.flip");
            sIsSViewCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.sview");
            sIsNfcLedCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.nfcledcover");
            sIsClearCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.clearcover");
            sIsNeonCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.neoncover");
            sIsClearSideViewCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.clearsideviewcover");
            sIsLEDBackCoverSystemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.ledbackcover");
            sIsMiniSviewWalletCoverSysltemFeatureEnabled = context.getPackageManager().hasSystemFeature("com.sec.feature.cover.minisviewwalletcover");
            sIsSystemFeatureQueried = true;
            if (isSupportCover()) {
                try {
                    intValue = ((Integer) ICoverManager.class.getMethod("getVersion", new Class[0]).invoke(getService(), new Object[0])).intValue();
                } catch (Exception e) {
                    Log.w("ScoverManager", "getVersion failed : " + e);
                }
                ListPopupWindow$$ExternalSyntheticOutline0.m("serviceVersion : ", intValue, "ScoverManager");
                sServiceVersion = intValue;
            }
            intValue = 16777216;
            ListPopupWindow$$ExternalSyntheticOutline0.m("serviceVersion : ", intValue, "ScoverManager");
            sServiceVersion = intValue;
        }
    }

    public static boolean isSupportCover() {
        if (!sIsFilpCoverSystemFeatureEnabled && !sIsSViewCoverSystemFeatureEnabled && !sIsClearCoverSystemFeatureEnabled && !sIsNeonCoverSystemFeatureEnabled && !sIsClearSideViewCoverSystemFeatureEnabled && !sIsNfcLedCoverSystemFeatureEnabled && !sIsLEDBackCoverSystemFeatureEnabled && !sIsMiniSviewWalletCoverSysltemFeatureEnabled) {
            return false;
        }
        return true;
    }

    public static boolean isSupportableVersion(int i) {
        int i2 = (i >> 24) & 255;
        int i3 = (i >> 16) & 255;
        int i4 = i & CustomDeviceManager.QUICK_PANEL_ALL;
        int i5 = sServiceVersion;
        int i6 = (i5 >> 16) & 255;
        int i7 = 65535 & i5;
        if (((i5 >> 24) & 255) >= i2 && i6 >= i3 && i7 >= i4) {
            return true;
        }
        return false;
    }

    public final ScoverState getCoverState() {
        if (!isSupportCover()) {
            Log.w("ScoverManager", "getCoverState : This device is not supported cover");
            return null;
        }
        try {
            ICoverManager service = getService();
            if (service != null) {
                CoverState coverState = service.getCoverState();
                if (coverState != null) {
                    if (coverState.type == 255 && !coverState.switchState) {
                        Log.e("ScoverManager", "getCoverState : type of cover is nfc smart cover and cover is closed");
                        return null;
                    }
                    if (isSupportableVersion(R.animator.fade_in)) {
                        return new ScoverState(coverState.switchState, coverState.type, coverState.color, coverState.widthPixel, coverState.heightPixel, coverState.attached, coverState.model, coverState.fakeCover, coverState.fotaMode);
                    }
                    if (isSupportableVersion(R.array.emailAddressTypes)) {
                        return new ScoverState(coverState.switchState, coverState.type, coverState.color, coverState.widthPixel, coverState.heightPixel, coverState.attached, coverState.model, coverState.fakeCover);
                    }
                    if (isSupportableVersion(R.id.background)) {
                        return new ScoverState(coverState.switchState, coverState.type, coverState.color, coverState.widthPixel, coverState.heightPixel, coverState.attached, coverState.model);
                    }
                    if (isSupportableVersion(R.attr.theme)) {
                        return new ScoverState(coverState.switchState, coverState.type, coverState.color, coverState.widthPixel, coverState.heightPixel, coverState.attached);
                    }
                    return new ScoverState(coverState.switchState, coverState.type, coverState.color, coverState.widthPixel, coverState.heightPixel);
                }
                Log.e("ScoverManager", "getCoverState : coverState is null");
            }
        } catch (RemoteException e) {
            Log.e("ScoverManager", "RemoteException in getCoverState: ", e);
        }
        return null;
    }

    public final synchronized ICoverManager getService() {
        if (this.mService == null) {
            ICoverManager asInterface = ICoverManager.Stub.asInterface(ServiceManager.getService("cover"));
            this.mService = asInterface;
            if (asInterface == null) {
                Slog.w("ScoverManager", "warning: no COVER_MANAGER_SERVICE");
            }
        }
        return this.mService;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.lang.Object, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    public final void registerListener(EdgeLightingCoverManager.AnonymousClass1 anonymousClass1) {
        boolean z;
        CoverStateListenerDelegate coverStateListenerDelegate;
        Log.d("ScoverManager", "registerListener");
        if (!isSupportCover()) {
            Log.w("ScoverManager", "registerListener : This device is not supported cover");
            return;
        }
        ScoverState coverState = getCoverState();
        boolean z2 = true;
        if (coverState != null && coverState.type == 255) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.w("ScoverManager", "registerListener : If cover is smart cover, it does not need to register listener of intenal App");
            return;
        }
        if (isSupportableVersion(R.attr.theme)) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.mCoverStateListenerDelegates;
            Iterator it = copyOnWriteArrayList.iterator();
            while (true) {
                if (it.hasNext()) {
                    coverStateListenerDelegate = (CoverStateListenerDelegate) it.next();
                    if (coverStateListenerDelegate.mListener.equals(anonymousClass1)) {
                        break;
                    }
                } else {
                    z2 = false;
                    coverStateListenerDelegate = null;
                    break;
                }
            }
            Context context = this.mContext;
            ?? r6 = coverStateListenerDelegate;
            if (coverStateListenerDelegate == null) {
                r6 = new CoverStateListenerDelegate(anonymousClass1, null, context);
            }
            try {
                ICoverManager service = getService();
                if (service != null) {
                    service.registerListenerCallback((IBinder) r6, new ComponentName(context.getPackageName(), ScoverManager.class.getCanonicalName()), 2);
                    if (!z2) {
                        copyOnWriteArrayList.add(r6);
                        return;
                    }
                    return;
                }
                return;
            } catch (RemoteException e) {
                Log.e("ScoverManager", "RemoteException in registerListener: ", e);
                return;
            }
        }
        throw new SsdkUnsupportedException("This device is not supported this function. Device is must higher then v1.1.0", 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Object, android.os.IBinder] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.samsung.android.sdk.cover.CoverStateListenerDelegate] */
    public final void unregisterListener(CoverStateListener coverStateListener) {
        boolean z;
        ?? r3;
        Log.d("ScoverManager", "unregisterListener");
        if (!isSupportCover()) {
            Log.w("ScoverManager", "unregisterListener : This device is not supported cover");
            return;
        }
        ScoverState coverState = getCoverState();
        if (coverState != null && coverState.type == 255) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.w("ScoverManager", "unregisterListener : If cover is smart cover, it does not need to unregister listener of intenal App");
            return;
        }
        if (isSupportableVersion(R.attr.theme)) {
            if (coverStateListener == null) {
                Log.w("ScoverManager", "unregisterListener : listener is null");
                return;
            }
            ?? r1 = this.mCoverStateListenerDelegates;
            Iterator it = r1.iterator();
            while (true) {
                if (it.hasNext()) {
                    r3 = (CoverStateListenerDelegate) it.next();
                    if (r3.mListener.equals(coverStateListener)) {
                        break;
                    }
                } else {
                    r3 = 0;
                    break;
                }
            }
            if (r3 == 0) {
                return;
            }
            try {
                ICoverManager service = getService();
                if (service != null && service.unregisterCallback((IBinder) r3)) {
                    r1.remove(r3);
                    return;
                }
                return;
            } catch (RemoteException e) {
                Log.e("ScoverManager", "RemoteException in unregisterListener: ", e);
                return;
            }
        }
        throw new SsdkUnsupportedException("This device is not supported this function. Device is must higher then v1.1.0", 2);
    }

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes3.dex */
    public class CoverStateListener {
        public void onCoverAttachStateChanged(boolean z) {
        }

        public void onCoverSwitchStateChanged(boolean z) {
        }
    }
}
