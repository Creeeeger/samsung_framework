package com.android.systemui.pluginlock;

import android.app.SemWallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.support.v4.media.MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardFaceListenModel$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.LsRune;
import com.android.systemui.pluginlock.component.PluginHomeWallpaper;
import com.android.systemui.pluginlock.component.PluginLockWallpaper;
import com.android.systemui.pluginlock.listener.KeyguardListener$UserSwitch;
import com.android.systemui.pluginlock.utils.BitmapUtils;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.sdk.cover.ScoverManager;
import com.sec.ims.presence.ServiceTuple;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginWallpaperManagerImpl implements PluginWallpaperManager, KeyguardListener$UserSwitch {
    public final Context mContext;
    public final PluginLockDelegateApp mDelegateApp;
    public boolean mIsSwitchingToSub = false;
    public final KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    public final PluginLockMediator mMediator;
    public final int mScreenType;
    public final SettingsHelper mSettingsHelper;
    public final PluginLockUtils mUtils;

    public PluginWallpaperManagerImpl(PluginLockMediator pluginLockMediator, PluginLockDelegateApp pluginLockDelegateApp, SettingsHelper settingsHelper, PluginLockUtils pluginLockUtils, Context context, KeyguardUpdateMonitor keyguardUpdateMonitor) {
        PluginHomeWallpaper pluginHomeWallpaper;
        this.mScreenType = 0;
        this.mDelegateApp = pluginLockDelegateApp;
        this.mUtils = pluginLockUtils;
        this.mContext = context;
        this.mSettingsHelper = settingsHelper;
        this.mKeyguardUpdateMonitor = keyguardUpdateMonitor;
        this.mMediator = pluginLockMediator;
        ((PluginLockMediatorImpl) pluginLockMediator).setKeyguardUserSwitchListener(this);
        pluginLockUtils.addDump("PluginWallpaperManagerImpl", "## PluginWallpaperManagerImpl ##, " + this);
        if (!LsRune.LOCKUI_SUB_DISPLAY_LOCK && !LsRune.WALLPAPER_SUB_WATCHFACE) {
            if (LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
                ScoverManager scoverManager = new ScoverManager(context);
                if (scoverManager.getCoverState() != null && !scoverManager.getCoverState().switchState) {
                    Log.d("PluginWallpaperManagerImpl", "PluginLockWallpaperManager, virtual display: mScreenType = PluginLock.SCREEN_SUB");
                    this.mScreenType = 1;
                }
            }
        } else {
            try {
                if (WallpaperManager.getInstance(context).getLidState() == 0) {
                    Log.d("PluginWallpaperManagerImpl", "PluginLockWallpaperManager: mScreenType = PluginLock.SCREEN_SUB");
                    this.mScreenType = 1;
                }
            } catch (NullPointerException e) {
                e.printStackTrace();
            }
        }
        if (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            boolean isFbeWallpaperAvailable = isFbeWallpaperAvailable(1);
            int subFbeWallpaperType = getSubFbeWallpaperType();
            String fbeWallpaperPath = getFbeWallpaperPath(1);
            this.mUtils.addDump("PluginWallpaperManagerImpl", "fillFbeWallpaperData, fbeSubType: " + subFbeWallpaperType + ", fbeSubPath: " + fbeWallpaperPath);
            if (isFbeWallpaperAvailable && subFbeWallpaperType != -2 && fbeWallpaperPath != null && (pluginHomeWallpaper = ((PluginLockMediatorImpl) this.mMediator).mHomeWallpaper) != null) {
                pluginHomeWallpaper.setWallpaper(1, subFbeWallpaperType, 0, fbeWallpaperPath, null);
                SemWallpaperColors fbeSemWallpaperColors = getFbeSemWallpaperColors(1);
                PluginHomeWallpaper.WallpaperData wallpaperData = (PluginHomeWallpaper.WallpaperData) ((HashMap) pluginHomeWallpaper.mWallpaperDataList).get(Integer.valueOf(PluginHomeWallpaper.getKey(PluginHomeWallpaper.sScreenType)));
                if (wallpaperData != null) {
                    wallpaperData.mHints = fbeSemWallpaperColors;
                }
            }
        }
    }

    public static File getFbeFile(int i, String str) {
        String str2;
        File[] listFiles;
        if (i == 0) {
            str2 = "/data/user_de/0/com.android.systemui/files/fresh_pack/";
        } else {
            str2 = "/data/user_de/0/com.android.systemui/files/fresh_pack_sub/";
        }
        File file = new File(str2);
        if (file.exists() && (listFiles = file.listFiles()) != null && listFiles.length != 0) {
            for (File file2 : listFiles) {
                if (file2 != null && file2.getName().startsWith(str)) {
                    return file2;
                }
            }
            return null;
        }
        return null;
    }

    public final SemWallpaperColors getFbeSemWallpaperColors(int i) {
        FileInputStream fileInputStream;
        BufferedReader bufferedReader;
        File fbeFile = getFbeFile(i, "color");
        if (fbeFile != null && fbeFile.exists() && fbeFile.canRead()) {
            StringBuilder sb = new StringBuilder();
            try {
                fileInputStream = new FileInputStream(fbeFile.getPath());
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(fileInputStream, StandardCharsets.UTF_8));
                } finally {
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                for (String readLine = bufferedReader.readLine(); readLine != null; readLine = bufferedReader.readLine()) {
                    sb.append(readLine);
                }
                bufferedReader.close();
                fileInputStream.close();
                try {
                    String sb2 = sb.toString();
                    if (!sb2.isEmpty()) {
                        return SemWallpaperColors.fromXml(sb2);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } finally {
            }
        }
        return SemWallpaperColors.getBlankWallpaperColors();
    }

    public final Bitmap getFbeWallpaper(int i, boolean z) {
        File fbeFile = getFbeFile(i, "fbe");
        if (fbeFile != null) {
            StringBuilder m = MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getFbeWallpaper screen: ", i, ", path: ");
            m.append(fbeFile.getPath());
            Log.d("PluginWallpaperManagerImpl", m.toString());
            if (fbeFile.exists() && fbeFile.canRead()) {
                return BitmapUtils.getBitmapFromPath(this.mContext, fbeFile.getPath(), !z, false);
            }
        }
        Log.d("PluginWallpaperManagerImpl", "getFbeWallpaper null");
        return null;
    }

    public final String getFbeWallpaperIntelligentCrop(int i) {
        FileInputStream fileInputStream;
        File fbeFile = getFbeFile(i, "icrops");
        String str = null;
        try {
            fileInputStream = new FileInputStream(fbeFile);
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
            try {
                BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                try {
                    str = bufferedReader.readLine();
                    bufferedReader.close();
                    inputStreamReader.close();
                    fileInputStream.close();
                    MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0.m("getFbeWallpaperIntelligentCrop: iCrops = ", str, "PluginWallpaperManagerImpl");
                    return str;
                } finally {
                }
            } finally {
            }
        } finally {
        }
    }

    public final String getFbeWallpaperPath(int i) {
        File fbeFile = getFbeFile(i, "fbe");
        if (fbeFile != null) {
            return fbeFile.getAbsolutePath();
        }
        return "";
    }

    public final String getHomeWallpaperPath(int i) {
        PluginHomeWallpaper pluginHomeWallpaper = ((PluginLockMediatorImpl) this.mMediator).mHomeWallpaper;
        if (pluginHomeWallpaper != null) {
            PluginHomeWallpaper.WallpaperData wallpaperData = (PluginHomeWallpaper.WallpaperData) ((HashMap) pluginHomeWallpaper.mWallpaperDataList).get(Integer.valueOf(PluginHomeWallpaper.getKey(i)));
            if (wallpaperData != null) {
                return wallpaperData.mPath;
            }
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
    
        if (r4.equals("image") == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getSubFbeWallpaperType() {
        /*
            r4 = this;
            com.android.systemui.pluginlock.PluginLockUtils r4 = r4.mUtils
            r4.getClass()
            boolean r4 = com.android.systemui.pluginlock.PluginLockUtils.isGoingToRescueParty()
            r0 = -2
            if (r4 == 0) goto Ld
            return r0
        Ld:
            java.lang.String r4 = "fbe"
            r1 = 1
            java.io.File r4 = getFbeFile(r1, r4)
            if (r4 == 0) goto L66
            boolean r2 = r4.exists()
            if (r2 == 0) goto L66
            boolean r2 = r4.canRead()
            if (r2 == 0) goto L66
            java.lang.String r4 = r4.getName()
            java.lang.String r2 = "_"
            java.lang.String[] r4 = r4.split(r2)
            r4 = r4[r1]
            if (r4 == 0) goto L66
            int r2 = r4.hashCode()
            r3 = -1
            switch(r2) {
                case 102340: goto L4f;
                case 100313435: goto L46;
                case 112202875: goto L3a;
                default: goto L38;
            }
        L38:
            r1 = r3
            goto L59
        L3a:
            java.lang.String r1 = "video"
            boolean r4 = r4.equals(r1)
            if (r4 != 0) goto L44
            goto L38
        L44:
            r1 = 2
            goto L59
        L46:
            java.lang.String r2 = "image"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L59
            goto L38
        L4f:
            java.lang.String r1 = "gif"
            boolean r4 = r4.equals(r1)
            if (r4 != 0) goto L58
            goto L38
        L58:
            r1 = 0
        L59:
            switch(r1) {
                case 0: goto L63;
                case 1: goto L60;
                case 2: goto L5d;
                default: goto L5c;
            }
        L5c:
            goto L66
        L5d:
            r4 = 23
            return r4
        L60:
            r4 = 21
            return r4
        L63:
            r4 = 22
            return r4
        L66:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginWallpaperManagerImpl.getSubFbeWallpaperType():int");
    }

    public final Bitmap getWallpaperBitmap() {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (pluginLockWallpaper != null) {
            return ((PluginLockWallpaper.PluginLockWallpaperData) ((ArrayList) pluginLockWallpaper.mWallpaperDataList).get(pluginLockWallpaper.getScreenType())).mBitmap;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        if (r2 == false) goto L43;
     */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0095 A[Catch: Exception -> 0x00af, TryCatch #0 {Exception -> 0x00af, blocks: (B:22:0x0041, B:24:0x0054, B:25:0x0058, B:27:0x0068, B:30:0x0078, B:32:0x0082, B:38:0x0095, B:39:0x0097), top: B:21:0x0041 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int getWallpaperIndex() {
        /*
            r9 = this;
            java.lang.String r0 = "PluginWallpaperManagerImpl"
            java.lang.String r1 = "getWallpaperIndex: strIndex = "
            boolean r2 = r9.isCustomPackApplied()
            com.android.systemui.pluginlock.PluginLockMediator r3 = r9.mMediator
            r4 = 1
            r5 = 0
            r6 = -1
            if (r2 != 0) goto L3a
            r2 = r3
            com.android.systemui.pluginlock.PluginLockMediatorImpl r2 = (com.android.systemui.pluginlock.PluginLockMediatorImpl) r2
            com.android.systemui.pluginlock.component.PluginLockWallpaper r2 = r2.mLockWallpaper
            boolean r7 = r9.isDynamicLockEnabled()
            if (r7 == 0) goto L37
            if (r2 == 0) goto L37
            int r7 = r2.getScreenType()
            boolean r7 = r2.isCustomPack(r7)
            if (r7 != 0) goto L32
            int r7 = r2.getScreenType()
            boolean r2 = r2.isServiceWallpaper(r7)
            if (r2 != 0) goto L32
            r2 = r4
            goto L33
        L32:
            r2 = r5
        L33:
            if (r2 == 0) goto L37
            r2 = r4
            goto L38
        L37:
            r2 = r5
        L38:
            if (r2 == 0) goto Lb5
        L3a:
            java.lang.String r2 = r9.getWallpaperPath()
            if (r2 != 0) goto L41
            return r6
        L41:
            java.lang.String r7 = "/"
            int r7 = r2.lastIndexOf(r7)     // Catch: java.lang.Exception -> Laf
            int r7 = r7 + r4
            java.lang.String r2 = r2.substring(r7)     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = "."
            int r7 = r2.indexOf(r7)     // Catch: java.lang.Exception -> Laf
            if (r7 <= 0) goto L58
            java.lang.String r2 = r2.substring(r5, r7)     // Catch: java.lang.Exception -> Laf
        L58:
            java.lang.String r7 = "[^0-9]"
            java.lang.String r8 = ""
            java.lang.String r2 = r2.replaceAll(r7, r8)     // Catch: java.lang.Exception -> Laf
            java.lang.String r7 = "^(0|[1-9][0-9]*)$"
            boolean r7 = r2.matches(r7)     // Catch: java.lang.Exception -> Laf
            if (r7 == 0) goto Lb5
            int r7 = java.lang.Integer.parseInt(r2)     // Catch: java.lang.Exception -> Laf
            com.android.systemui.pluginlock.PluginLockMediatorImpl r3 = (com.android.systemui.pluginlock.PluginLockMediatorImpl) r3     // Catch: java.lang.Exception -> Laf
            com.android.systemui.pluginlock.component.PluginLockWallpaper r3 = r3.mLockWallpaper     // Catch: java.lang.Exception -> Laf
            boolean r9 = r9.isDynamicLockEnabled()     // Catch: java.lang.Exception -> Laf
            if (r9 == 0) goto L92
            if (r3 == 0) goto L92
            int r9 = r3.getScreenType()     // Catch: java.lang.Exception -> Laf
            boolean r9 = r3.isCustomPack(r9)     // Catch: java.lang.Exception -> Laf
            if (r9 != 0) goto L8e
            int r9 = r3.getScreenType()     // Catch: java.lang.Exception -> Laf
            boolean r9 = r3.isServiceWallpaper(r9)     // Catch: java.lang.Exception -> Laf
            if (r9 != 0) goto L8e
            r9 = r4
            goto L8f
        L8e:
            r9 = r5
        L8f:
            if (r9 == 0) goto L92
            goto L93
        L92:
            r4 = r5
        L93:
            if (r4 == 0) goto L97
            int r7 = r7 + (-1)
        L97:
            java.lang.StringBuilder r9 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> Laf
            r9.<init>(r1)     // Catch: java.lang.Exception -> Laf
            r9.append(r2)     // Catch: java.lang.Exception -> Laf
            java.lang.String r1 = ", index = "
            r9.append(r1)     // Catch: java.lang.Exception -> Laf
            r9.append(r7)     // Catch: java.lang.Exception -> Laf
            java.lang.String r9 = r9.toString()     // Catch: java.lang.Exception -> Laf
            android.util.Log.d(r0, r9)     // Catch: java.lang.Exception -> Laf
            return r7
        Laf:
            r9 = move-exception
            java.lang.String r1 = "getWallpaperIndex, "
            com.android.keyguard.EmergencyButton$$ExternalSyntheticOutline0.m(r1, r9, r0)
        Lb5:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginWallpaperManagerImpl.getWallpaperIndex():int");
    }

    public final String getWallpaperIntelligentCrop(int i) {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (pluginLockWallpaper != null) {
            if (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY || PluginLockWallpaper.isCloneDisplayRequired()) {
                i = 0;
            }
            return ((PluginLockWallpaper.PluginLockWallpaperData) ((ArrayList) pluginLockWallpaper.mWallpaperDataList).get(i)).mIntelligentCrop;
        }
        return null;
    }

    public final String getWallpaperPath() {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (pluginLockWallpaper != null) {
            return pluginLockWallpaper.getWallpaperPath(pluginLockWallpaper.getScreenType());
        }
        return null;
    }

    public final Uri getWallpaperUri() {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (pluginLockWallpaper != null) {
            return ((PluginLockWallpaper.PluginLockWallpaperData) ((ArrayList) pluginLockWallpaper.mWallpaperDataList).get(pluginLockWallpaper.getScreenType())).mUri;
        }
        return null;
    }

    public final boolean isCustomPackApplied() {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (isDynamicLockEnabled() && pluginLockWallpaper != null && pluginLockWallpaper.isCustomPack(pluginLockWallpaper.getScreenType())) {
            return true;
        }
        return false;
    }

    public final boolean isDynamicLockEnabled() {
        return ((PluginLockMediatorImpl) this.mMediator).isDynamicLockEnabled();
    }

    public final boolean isDynamicWallpaperEnabled() {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        return isDynamicLockEnabled() && pluginLockWallpaper != null && pluginLockWallpaper.isDynamicWallpaper();
    }

    public final boolean isFbeRequired(int i) {
        if (!this.mKeyguardUpdateMonitor.isUserUnlocked()) {
            SettingsHelper settingsHelper = this.mSettingsHelper;
            if (settingsHelper.getPluginLockValue(i) % 10 != 0 || settingsHelper.getPluginLockValue(i) == 30000) {
                return true;
            }
        }
        return false;
    }

    public final boolean isFbeWallpaperAvailable(int i) {
        boolean z;
        String str;
        File fbeFile = getFbeFile(i, "fbe");
        if (fbeFile != null && fbeFile.exists() && fbeFile.canRead()) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder m = KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0.m("isFbeWallpaperAvailable: screen = ", i, ", flag = ", z, ", file = ");
        if (fbeFile != null) {
            str = fbeFile.getAbsolutePath();
        } else {
            str = "null";
        }
        m.append(str);
        Log.i("PluginWallpaperManagerImpl", m.toString());
        if (z) {
            this.mUtils.getClass();
            if (!PluginLockUtils.isGoingToRescueParty()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isFbeWallpaperVideo(int i) {
        String str;
        File fbeFile = getFbeFile(i, "fbe");
        if (fbeFile != null && fbeFile.exists() && fbeFile.canRead() && (str = fbeFile.getName().split("_")[1]) != null && str.equals(ServiceTuple.MEDIA_CAP_VIDEO)) {
            this.mUtils.getClass();
            if (!PluginLockUtils.isGoingToRescueParty()) {
                return true;
            }
        }
        return false;
    }

    public final boolean isMultiPackApplied(int i) {
        boolean z;
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (!isDynamicLockEnabled() || pluginLockWallpaper == null) {
            return false;
        }
        if (!pluginLockWallpaper.isCustomPack(i) && !pluginLockWallpaper.isServiceWallpaper(i)) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    public final boolean isVideoWallpaperEnabled() {
        boolean z;
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (!isDynamicLockEnabled() || pluginLockWallpaper == null) {
            return false;
        }
        PluginLockWallpaper.PluginLockWallpaperData pluginLockWallpaperData = (PluginLockWallpaper.PluginLockWallpaperData) ((ArrayList) pluginLockWallpaper.mWallpaperDataList).get(pluginLockWallpaper.getScreenType());
        if (pluginLockWallpaper.isDynamicWallpaper() && pluginLockWallpaperData.mType == 2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLockWallpaperChanged(int r12) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.pluginlock.PluginWallpaperManagerImpl.onLockWallpaperChanged(int):void");
    }

    @Override // com.android.systemui.pluginlock.listener.KeyguardListener$UserSwitch
    public final void onUserSwitchComplete(int i) {
        this.mUtils.addDump("PluginWallpaperManagerImpl", "onUserSwitchComplete, userId: " + i);
        this.mIsSwitchingToSub = false;
    }

    @Override // com.android.systemui.pluginlock.listener.KeyguardListener$UserSwitch
    public final void onUserSwitching(int i) {
        this.mUtils.addDump("PluginWallpaperManagerImpl", "onUserSwitching, userId: " + i);
        this.mIsSwitchingToSub = true;
    }

    public final void onWallpaperConsumed(int i, boolean z) {
        PluginLockDelegateApp pluginLockDelegateApp;
        PluginLockMediatorImpl pluginLockMediatorImpl = (PluginLockMediatorImpl) this.mMediator;
        boolean isDynamicLockEnabled = pluginLockMediatorImpl.isDynamicLockEnabled();
        PluginLockUtils pluginLockUtils = this.mUtils;
        pluginLockUtils.getClass();
        boolean isCurrentOwner = PluginLockUtils.isCurrentOwner();
        StringBuilder m = RowView$$ExternalSyntheticOutline0.m("onWallpaperConsumed, enabled:", isDynamicLockEnabled, ", mIsSwitchingToSub: ");
        KeyguardFaceListenModel$$ExternalSyntheticOutline0.m(m, this.mIsSwitchingToSub, ", isOwner: ", isCurrentOwner, ", screen:");
        m.append(i);
        m.append(", updateColor:");
        m.append(z);
        pluginLockUtils.addDump("PluginWallpaperManagerImpl", m.toString());
        if (pluginLockMediatorImpl.mLockWallpaper != null && isDynamicLockEnabled && !this.mIsSwitchingToSub && isCurrentOwner && (pluginLockDelegateApp = this.mDelegateApp) != null) {
            try {
                pluginLockUtils.addDump("PluginWallpaperManagerImpl", "onWallpaperConsumed called");
                pluginLockDelegateApp.onWallpaperConsumed(i, z);
            } catch (Throwable th) {
                pluginLockUtils.addDump("PluginWallpaperManagerImpl", "onWallpaperConsumed, " + th.toString());
                th.printStackTrace();
            }
        }
    }

    public final boolean isDynamicWallpaperEnabled(int i) {
        PluginLockWallpaper pluginLockWallpaper = ((PluginLockMediatorImpl) this.mMediator).mLockWallpaper;
        if (!isDynamicLockEnabled() || pluginLockWallpaper == null) {
            return false;
        }
        int i2 = (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY || PluginLockWallpaper.isCloneDisplayRequired()) ? 0 : i;
        boolean z = ((PluginLockWallpaper.PluginLockWallpaperData) ((ArrayList) pluginLockWallpaper.mWallpaperDataList).get(i2)).mType != -2;
        ActionBarContextView$$ExternalSyntheticOutline0.m(GridLayoutManager$$ExternalSyntheticOutline0.m("isDynamicWallpaper() required:", i, ", final: ", i2, ", ret:"), z, "PluginLockWallpaper");
        return z;
    }
}
