package com.android.systemui.wallpaper.accessory;

import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.pluginlock.PluginWallpaperManager;
import com.android.systemui.util.SettingsHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharJVMKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class SmartCardController {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context context;
    public SmartCardController$getMainHandler$1 mainHandler;
    public final PluginWallpaperManager pluginWallpaperManager;
    public final SmartCardController$settingObserver$1 settingObserver;
    public final KeyguardUpdateMonitor updateMonitor;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.systemui.wallpaper.accessory.SmartCardController$settingObserver$1] */
    public SmartCardController(Context context, SettingsHelper settingsHelper, KeyguardUpdateMonitor keyguardUpdateMonitor, PluginWallpaperManager pluginWallpaperManager) {
        this.context = context;
        this.updateMonitor = keyguardUpdateMonitor;
        this.pluginWallpaperManager = pluginWallpaperManager;
        Log.i("SmartCardController", "init");
        updateState(false);
        this.mainHandler = new SmartCardController$getMainHandler$1(this, Looper.getMainLooper());
        final Handler handler = new Handler(Looper.getMainLooper());
        this.settingObserver = new ContentObserver(handler) { // from class: com.android.systemui.wallpaper.accessory.SmartCardController$settingObserver$1
            @Override // android.database.ContentObserver
            public final void onChange(boolean z, Uri uri) {
                long j;
                Log.w("SmartCardController", "settingObserver, uri: " + uri);
                boolean z2 = false;
                if (Intrinsics.areEqual(uri, Settings.Secure.getUriFor("user_setup_complete"))) {
                    j = 5000;
                } else if (Intrinsics.areEqual(uri, Settings.System.getUriFor("dls_state"))) {
                    SmartCardController smartCardController = SmartCardController.this;
                    int i = SmartCardController.$r8$clinit;
                    smartCardController.getClass();
                    z2 = true;
                    if (!(!LsRune.WALLPAPER_SUB_WATCHFACE)) {
                        return;
                    } else {
                        j = 1000;
                    }
                } else {
                    j = 0;
                }
                SmartCardController smartCardController2 = SmartCardController.this;
                int i2 = SmartCardController.$r8$clinit;
                smartCardController2.sendUpdateState(j, z2);
            }
        };
    }

    public static byte[] decodeHex(String str) {
        try {
            List<String> split$default = StringsKt__StringsKt.split$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "[", ""), "]", ""), " ", ""), new String[]{","}, 0, 6);
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(split$default, 10));
            for (String str2 : split$default) {
                CharsKt__CharJVMKt.checkRadix(10);
                arrayList.add(Byte.valueOf((byte) Integer.parseInt(str2, 10)));
            }
            byte[] bArr = new byte[arrayList.size()];
            Iterator it = arrayList.iterator();
            int i = 0;
            while (it.hasNext()) {
                int i2 = i + 1;
                bArr[i] = ((Number) it.next()).byteValue();
                i = i2;
            }
            return bArr;
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    public final void onDetached() {
        boolean z;
        Context context = this.context;
        String stringForUser = Settings.System.getStringForUser(context.getContentResolver(), "smart_card_wallpaper_uri", -2);
        if (stringForUser == null) {
            stringForUser = "";
        }
        if (stringForUser.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            Log.d("SmartCardController", "onDetached: ".concat(stringForUser));
            smartCardServiceStart("com.samsung.dressroom.intent.action.SMART_CARD_DETACHED", stringForUser);
            Settings.System.putStringForUser(context.getContentResolver(), "smart_card_wallpaper_uri", "", -2);
            return;
        }
        Log.d("SmartCardController", "onDetached, ignore");
    }

    public final void sendUpdateState(long j, boolean z) {
        if (this.mainHandler == null) {
            this.mainHandler = new SmartCardController$getMainHandler$1(this, Looper.getMainLooper());
        }
        if (this.mainHandler.hasMessages(20230526)) {
            this.mainHandler.removeMessages(20230526);
        }
        SmartCardController$getMainHandler$1 smartCardController$getMainHandler$1 = this.mainHandler;
        smartCardController$getMainHandler$1.sendMessageDelayed(smartCardController$getMainHandler$1.obtainMessage(20230526, Boolean.valueOf(z)), j);
    }

    public final void smartCardServiceStart(String str, String str2) {
        Log.d("SmartCardController", "smartCardServiceStart, ".concat(str));
        try {
            Intent intent = new Intent(str);
            intent.setPackage("com.samsung.android.app.dressroom");
            final Intent putExtra = intent.putExtra("URI", decodeHex(str2));
            if (this.mainHandler == null) {
                this.mainHandler = new SmartCardController$getMainHandler$1(this, Looper.getMainLooper());
            }
            this.mainHandler.post(new Runnable() { // from class: com.android.systemui.wallpaper.accessory.SmartCardController$smartCardServiceStart$2$1
                @Override // java.lang.Runnable
                public final void run() {
                    SmartCardController.this.context.startForegroundServiceAsUser(putExtra, UserHandle.CURRENT);
                }
            });
        } catch (Exception e) {
            Log.w("SmartCardController", "smartCardServiceStart, error: " + e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void updateState(boolean r11) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.accessory.SmartCardController.updateState(boolean):void");
    }
}
