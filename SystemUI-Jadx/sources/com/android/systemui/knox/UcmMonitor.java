package com.android.systemui.knox;

import com.android.systemui.Dumpable;
import com.samsung.android.knox.ucm.core.ICredentialManagerServiceSystemUICallback;
import java.io.PrintWriter;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes.dex */
public final class UcmMonitor extends ICredentialManagerServiceSystemUICallback.Stub implements Dumpable {
    public String mUCMVendor = null;

    @Override // com.samsung.android.knox.ucm.core.ICredentialManagerServiceSystemUICallback
    public final void setUCMKeyguardVendor(String str) {
        this.mUCMVendor = str;
    }

    @Override // com.android.systemui.Dumpable
    public final void dump(PrintWriter printWriter, String[] strArr) {
    }
}
