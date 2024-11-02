package com.samsung.android.knox.display;

import android.content.Context;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import com.samsung.android.knox.ContextInfo;
import com.samsung.android.knox.IMiscPolicy;
import com.samsung.android.knox.license.EnterpriseLicenseManager;
import com.samsung.android.knox.lockscreen.LSOUtils;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public final class Font {
    public static String TAG = "Font";
    public Context mContext;
    public ContextInfo mContextInfo;
    public IMiscPolicy mService;

    public Font(ContextInfo contextInfo, Context context) {
        this.mContextInfo = contextInfo;
        this.mContext = context;
    }

    public final IMiscPolicy getService() {
        if (this.mService == null) {
            this.mService = IMiscPolicy.Stub.asInterface(ServiceManager.getService("misc_policy"));
        }
        return this.mService;
    }

    public final String getSystemActiveFont() {
        if (getService() != null) {
            try {
                return this.mService.getSystemActiveFont(this.mContextInfo);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed to getSystemActiveFont!!!", e);
                return null;
            }
        }
        return null;
    }

    public final float getSystemActiveFontSize() {
        if (getService() != null) {
            try {
                return this.mService.getSystemActiveFontSize(this.mContextInfo);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with misc policy!!", e);
                return 0.0f;
            }
        }
        return 0.0f;
    }

    public final float[] getSystemFontSizes() {
        if (getService() != null) {
            try {
                return this.mService.getSystemFontSizes(this.mContextInfo);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with misc policy!!", e);
                return null;
            }
        }
        return null;
    }

    public final String[] getSystemFonts() {
        if (getService() != null) {
            try {
                return this.mService.getSystemFonts(this.mContextInfo);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed to getSystemFonts!!!", e);
                return null;
            }
        }
        return null;
    }

    public final boolean setSystemActiveFont(String str, String str2) {
        EnterpriseLicenseManager.log(this.mContextInfo, "Font.setSystemActiveFont");
        if (getService() != null) {
            if (str2 != null && (str2 = LSOUtils.copyFileToDataLocalDirectory(this.mContext, str2)) == null) {
                Log.e(TAG, "Failed to copy file");
                return false;
            }
            try {
                return this.mService.setSystemActiveFont(this.mContextInfo, str, str2);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed setSystemFont!!!", e);
                if (str2 != null) {
                    LSOUtils.deleteFile(str2);
                }
            }
        }
        return false;
    }

    public final boolean setSystemActiveFontSize(float f) {
        EnterpriseLicenseManager.log(this.mContextInfo, "Font.setSystemActiveFontSize");
        if (getService() != null) {
            try {
                return this.mService.setSystemActiveFontSize(this.mContextInfo, f);
            } catch (RemoteException e) {
                Log.w(TAG, "Failed talking with misc policy!!", e);
                return false;
            }
        }
        return false;
    }
}
