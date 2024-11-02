package com.android.systemui.wallpaper;

import android.app.SemWallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.os.Debug;
import android.os.Handler;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import android.util.Pair;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.LsRune;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.wallpaper.colors.ColorData;
import com.android.systemui.wallpaper.colors.KeyguardWallpaperColors;
import com.android.systemui.widget.SystemUIWidgetCallback;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class WallpaperEventNotifier {
    public static final boolean DEBUG = Debug.semIsProductDev();
    public final Handler mHandler;
    public final KeyguardWallpaperColors mKeyguardWallpaperColors;
    public final WallpaperManager mWallpaperManager;
    public long mCurStatusFlag = 0;
    public final ArrayList mCallbacks = new ArrayList();
    public final ArrayList mCoverCallbacks = new ArrayList();
    public boolean mIsThemeApplying = false;
    public final ArrayList mLogs = new ArrayList();

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class DebugLog {
        public final String text;
        public final long time = System.currentTimeMillis();

        public DebugLog(String str) {
            this.text = str;
        }
    }

    public WallpaperEventNotifier(Context context, SettingsHelper settingsHelper, Handler handler) {
        this.mHandler = handler;
        this.mWallpaperManager = (WallpaperManager) context.getSystemService("wallpaper");
        this.mKeyguardWallpaperColors = new KeyguardWallpaperColors(context, settingsHelper);
    }

    public static WallpaperEventNotifier getInstance() {
        return (WallpaperEventNotifier) Dependency.get(WallpaperEventNotifier.class);
    }

    public final void addLog(String str) {
        DebugLog debugLog = new DebugLog(str);
        ArrayList arrayList = this.mLogs;
        arrayList.add(debugLog);
        if (arrayList.size() > 200) {
            arrayList.remove(0);
        }
    }

    public final void debugNotify(boolean z, long j, SemWallpaperColors semWallpaperColors, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(KeyguardWallpaperColors.getChangeFlagsString(j));
        sb.append(", isCover = " + z);
        sb.append(", colors = ");
        if (semWallpaperColors != null) {
            sb.append(semWallpaperColors.toSimpleString());
        } else {
            sb.append("null");
        }
        StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m(str, ": ");
        m.append(sb.toString());
        Log.d("WallpaperEventNotifier", m.toString());
        addLog(str + ": " + sb.toString());
    }

    public final SemWallpaperColors getSemWallpaperColors(boolean z) {
        SemWallpaperColors semWallpaperColors;
        KeyguardWallpaperColors keyguardWallpaperColors = this.mKeyguardWallpaperColors;
        keyguardWallpaperColors.getClass();
        int currentUser = KeyguardUpdateMonitor.getCurrentUser();
        try {
            if (z) {
                semWallpaperColors = ((ColorData) keyguardWallpaperColors.mSemWallpaperColorsCover.get(currentUser)).colors;
            } else {
                semWallpaperColors = ((ColorData) keyguardWallpaperColors.mSemWallpaperColors.get(currentUser)).colors;
            }
            return semWallpaperColors;
        } catch (NullPointerException unused) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ee  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void registerCallback(boolean r10, com.android.systemui.widget.SystemUIWidgetCallback r11, long r12) {
        /*
            Method dump skipped, instructions count: 251
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.wallpaper.WallpaperEventNotifier.registerCallback(boolean, com.android.systemui.widget.SystemUIWidgetCallback, long):void");
    }

    public final void removeCallback(boolean z, SystemUIWidgetCallback systemUIWidgetCallback) {
        ArrayList arrayList;
        ArrayList arrayList2;
        if (z) {
            arrayList = this.mCoverCallbacks;
        } else {
            arrayList = this.mCallbacks;
        }
        synchronized (arrayList) {
            if (z) {
                arrayList2 = this.mCoverCallbacks;
            } else {
                arrayList2 = this.mCallbacks;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                if (((WeakReference) ((Pair) arrayList2.get(size)).first).get() == systemUIWidgetCallback) {
                    arrayList2.remove(size);
                }
            }
        }
    }

    public final void setCurStatusFlag(boolean z, SemWallpaperColors semWallpaperColors) {
        if (!z) {
            this.mCurStatusFlag = 0L;
        }
        if (semWallpaperColors == null) {
            addLog("setCurStatusFlag: colors is null. May cause unexptected behaviour!");
            return;
        }
        KeyguardWallpaperColors keyguardWallpaperColors = this.mKeyguardWallpaperColors;
        keyguardWallpaperColors.getClass();
        ColorData colorData = new ColorData(SemWallpaperColors.getBlankWallpaperColors(), false, false, false);
        SettingsHelper settingsHelper = keyguardWallpaperColors.mSettingsHelper;
        long checkUpdates = keyguardWallpaperColors.checkUpdates(colorData, new ColorData(semWallpaperColors, settingsHelper.isOpenThemeLook(), settingsHelper.isOpenThemeLockWallpaper(), false));
        if (!z) {
            this.mCurStatusFlag = checkUpdates;
        }
    }

    public final void update(boolean z, long j, final SemWallpaperColors semWallpaperColors) {
        final long j2;
        ArrayList arrayList;
        ArrayList arrayList2;
        boolean z2;
        long j3;
        if (this.mIsThemeApplying) {
            addLog("update: Ignore update while theme is applying...");
            Log.d("WallpaperEventNotifier", "update: Ignore update while theme is applying...");
            return;
        }
        if (z) {
            if (LsRune.SUPPORT_LARGE_FRONT_SUB_DISPLAY) {
                j3 = -2;
            } else {
                j3 = -1028;
            }
            j2 = j & j3;
        } else {
            j2 = j;
        }
        setCurStatusFlag(z, semWallpaperColors);
        if (j2 != 0) {
            debugNotify(z, j2, semWallpaperColors, "notifyUpdate");
            if (z) {
                arrayList = this.mCoverCallbacks;
            } else {
                arrayList = this.mCallbacks;
            }
            synchronized (arrayList) {
                if (z) {
                    arrayList2 = this.mCoverCallbacks;
                } else {
                    arrayList2 = this.mCallbacks;
                }
                for (int i = 0; i < arrayList2.size(); i++) {
                    Pair pair = (Pair) arrayList2.get(i);
                    final SystemUIWidgetCallback systemUIWidgetCallback = (SystemUIWidgetCallback) ((WeakReference) pair.first).get();
                    long longValue = ((Long) pair.second).longValue();
                    if (systemUIWidgetCallback != null) {
                        if ((longValue & j2) == 0) {
                            boolean z3 = true;
                            if ((8 & longValue) != 0) {
                                for (int i2 = 0; i2 < KeyguardWallpaperColors.NUM_SEPARATED_AREA; i2++) {
                                    if ((KeyguardWallpaperColors.UPDATE_FLAGS[i2] & longValue) != 0 && (KeyguardWallpaperColors.UPDATE_FLAGS_SHADOW[i2] & j2) != 0) {
                                        z2 = true;
                                        break;
                                    }
                                }
                            }
                            z2 = false;
                            if (!z2) {
                                if ((4 & longValue) != 0) {
                                    for (int i3 = 0; i3 < KeyguardWallpaperColors.NUM_SEPARATED_AREA; i3++) {
                                        if ((KeyguardWallpaperColors.UPDATE_FLAGS[i3] & longValue) != 0 && (KeyguardWallpaperColors.UPDATE_FLAGS_ADAPTIVE_CONTRAST[i3] & j2) != 0) {
                                            break;
                                        }
                                    }
                                }
                                z3 = false;
                                if (!z3) {
                                }
                            }
                        }
                        this.mHandler.post(new Runnable() { // from class: com.android.systemui.wallpaper.WallpaperEventNotifier$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                SystemUIWidgetCallback.this.updateStyle(j2, semWallpaperColors);
                            }
                        });
                    }
                }
            }
        }
    }
}
