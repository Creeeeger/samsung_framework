package com.samsung.android.sdk.command.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.samsung.android.knox.net.vpn.KnoxVpnPolicyConstants;
import com.samsung.android.sdk.command.Command;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class CommandProvider extends ContentProvider {
    public static final String[] WELL_KNOWN_CALLING_PACKAGES = {"com.android.settings.intelligence", KnoxVpnPolicyConstants.ANDROID_SETTINGS_PKG, "com.samsung.android.app.routines", "com.samsung.android.app.settings.bixby", "com.samsung.accessibility", "com.samsung.android.app.galaxyfinder", "com.samsung.android.app.galaxyregistry", "com.sec.android.app.launcher"};
    public static final String[] CORE_SYSTEM_PACKAGES = {"com.android.settings.intelligence", "com.samsung.android.app.galaxyfinder", "com.samsung.android.app.galaxyregistry", "com.sec.android.app.launcher"};

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* renamed from: com.samsung.android.sdk.command.provider.CommandProvider$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public final class AnonymousClass1 implements ICommandActionCallback {
        public final /* synthetic */ Bundle val$bundle;
        public final /* synthetic */ String val$commandId;
        public final /* synthetic */ ICommandActionHandler val$handler;

        public AnonymousClass1(CommandProvider commandProvider, Bundle bundle, ICommandActionHandler iCommandActionHandler, String str) {
            this.val$bundle = bundle;
            this.val$handler = iCommandActionHandler;
            this.val$commandId = str;
        }

        public final void onActionFinished(int i, String str) {
            Bundle bundle = this.val$bundle;
            bundle.putInt("response_code", i);
            bundle.putString("response_message", str);
            Command loadStatefulCommand = this.val$handler.loadStatefulCommand(this.val$commandId);
            if (loadStatefulCommand != null) {
                bundle.putBundle("command", loadStatefulCommand.getDataBundle());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x02dc, code lost:
    
        if (r2.containsKey("response_code") == false) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0304, code lost:
    
        r2.putInt("response_code", 2);
        com.samsung.android.sdk.command.util.LogWrapper.e("CommandProvider", "failed to load all commands");
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0302, code lost:
    
        if (r2.containsKey("response_code") != false) goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x015c, code lost:
    
        if (r2.containsKey("response_code") == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x0184, code lost:
    
        r2.putInt("response_code", 2);
        com.samsung.android.sdk.command.util.LogWrapper.e("CommandProvider", "cannot create command list");
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x0182, code lost:
    
        if (r2.containsKey("response_code") != false) goto L178;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0409 A[Catch: all -> 0x0439, Exception -> 0x043b, TryCatch #4 {Exception -> 0x043b, blocks: (B:124:0x03e6, B:126:0x03ee, B:128:0x03fe, B:105:0x0409, B:106:0x0414, B:103:0x0403), top: B:123:0x03e6, outer: #6 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x042a  */
    @Override // android.content.ContentProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle call(java.lang.String r12, java.lang.String r13, android.os.Bundle r14) {
        /*
            Method dump skipped, instructions count: 1270
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.sdk.command.provider.CommandProvider.call(java.lang.String, java.lang.String, android.os.Bundle):android.os.Bundle");
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
