package com.android.systemui.pluginlock.component;

import android.app.SemWallpaperColors;
import android.app.WallpaperManager;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.appcompat.widget.ActionBarContextView$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.ListPopupWindow$$ExternalSyntheticOutline0;
import androidx.appcompat.widget.SuggestionsAdapter$$ExternalSyntheticOutline0;
import androidx.picker3.widget.SeslColorSpectrumView$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.RecyclerView$$ExternalSyntheticOutline0;
import androidx.slice.widget.RowView$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;
import com.android.keyguard.KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;
import com.android.keyguard.logging.KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import com.android.systemui.Prefs;
import com.android.systemui.pluginlock.PluginLockInstanceData;
import com.android.systemui.pluginlock.PluginLockInstanceState;
import com.android.systemui.pluginlock.model.DynamicLockData;
import com.android.systemui.util.SettingsHelper;
import com.samsung.android.feature.SemCscFeature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginLockWallpaper extends AbstractPluginLockItem {
    public static boolean sDualDisplayPlugin = false;
    public static int sScreenType = 0;
    public static boolean sScreenTypeChanged = false;
    public boolean mHasData;
    public boolean mHintUpdatedSkip;
    public int mRecoverRequestedScreen;
    public final List mWallpaperDataList;
    public PluginWallpaperCallback mWallpaperUpdateCallback;
    public boolean mWholeRecoverRequired;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class PluginLockWallpaperData {
        public Bitmap mBitmap;
        public SemWallpaperColors mHints;
        public String mIntelligentCrop;
        public String mPath;
        public int mResourceId;
        public int mType;
        public Uri mUri;

        public /* synthetic */ PluginLockWallpaperData(int i) {
            this();
        }

        public final void resetAll() {
            this.mType = -2;
            Bitmap bitmap = this.mBitmap;
            if (bitmap != null && !bitmap.isRecycled()) {
                this.mBitmap.recycle();
            }
            this.mPath = null;
            this.mBitmap = null;
            this.mUri = null;
            this.mHints = null;
            this.mResourceId = 0;
        }

        private PluginLockWallpaperData() {
            this.mType = -2;
            this.mPath = null;
            this.mBitmap = null;
            this.mIntelligentCrop = null;
            this.mResourceId = 0;
            this.mUri = null;
            this.mHints = null;
        }
    }

    public PluginLockWallpaper(Context context, PluginLockInstanceState pluginLockInstanceState, SettingsHelper settingsHelper) {
        super(context, pluginLockInstanceState, settingsHelper);
        this.mRecoverRequestedScreen = -1;
        int i = 0;
        this.mHintUpdatedSkip = false;
        this.mWholeRecoverRequired = false;
        this.mHasData = false;
        ArrayList arrayList = new ArrayList();
        this.mWallpaperDataList = arrayList;
        arrayList.add(0, new PluginLockWallpaperData(i));
        if (LsRune.LOCKUI_SUB_DISPLAY_LOCK) {
            arrayList.add(1, new PluginLockWallpaperData(i));
        }
    }

    public static Bitmap getBitmap(int i, Resources resources) {
        Drawable drawable = resources.getDrawable(i, null);
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return BitmapFactory.decodeResource(resources, i);
        }
        if (drawable instanceof GradientDrawable) {
            DisplayMetrics displayMetrics = resources.getDisplayMetrics();
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            Canvas canvas = new Canvas();
            Bitmap createBitmap = Bitmap.createBitmap(i2, i3, Bitmap.Config.ARGB_8888);
            canvas.setBitmap(createBitmap);
            drawable.setBounds(0, 0, i2, i3);
            drawable.draw(canvas);
            return createBitmap;
        }
        Log.w("PluginLockWallpaper", "getBitmap() unsupported " + drawable);
        return null;
    }

    public static String getMultiPackPkgName(String str) {
        if (str != null && !str.isEmpty()) {
            Matcher matcher = Pattern.compile("MULTIPLE=(.*):tilt").matcher(str);
            if (matcher.find()) {
                return matcher.group(1);
            }
            return "no_matched_pkg_name";
        }
        return "no_matched_pkg_name";
    }

    public static boolean isCloneDisplayRequired() {
        if (!sDualDisplayPlugin && LsRune.LOCKUI_SUB_DISPLAY_LOCK) {
            return true;
        }
        return false;
    }

    public final void apply(DynamicLockData dynamicLockData, DynamicLockData dynamicLockData2) {
        Log.d("PluginLockWallpaper", "apply()");
        if (dynamicLockData == null || !dynamicLockData2.getWallpaperData().equals(dynamicLockData.getWallpaperData())) {
            dynamicLockData2.getWallpaperData().getUpdateStyle().intValue();
            dynamicLockData2.getWallpaperData().getRecoverType().intValue();
        }
        if (isCloneDisplayRequired()) {
            Iterator it = ((ArrayList) this.mWallpaperDataList).iterator();
            while (it.hasNext()) {
                ((PluginLockWallpaperData) it.next()).resetAll();
            }
        }
    }

    public final void backupWallpaperSource(int i) {
        String str;
        if (i == 0) {
            str = "lockscreen_wallpaper_transparent";
        } else {
            str = "sub_display_lockscreen_wallpaper_transparency";
        }
        int settingsInt = getSettingsInt(-1, str);
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("backupWallpaperSource() backupSource: ", settingsInt, ", screenType:", i, "PluginLockWallpaper");
        if (settingsInt != 1) {
            setWallpaperSourceBackupValue(i, settingsInt);
            putSettingsSystem(1, str);
        }
    }

    public final void backupWallpaperType(int i) {
        String str;
        if (i == 0) {
            str = "lockscreen_wallpaper";
        } else {
            str = "lockscreen_wallpaper_sub";
        }
        int settingsInt = getSettingsInt(-1, str);
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("backupWallpaperType() backupType: ", settingsInt, ", screenType:", i, "PluginLockWallpaper");
        if (settingsInt == 0) {
            setWallpaperTypeBackupValue(i, -3);
            putSettingsSystem(1, str);
        }
    }

    public final int getScreenType() {
        boolean z;
        int i;
        int i2 = this.mRecoverRequestedScreen;
        if (i2 == -1) {
            if (LsRune.LOCKUI_SUB_DISPLAY_LOCK && sScreenType != 0 && !isCloneDisplayRequired()) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                i = 0;
            } else {
                i = sScreenType;
            }
            if (((ArrayList) this.mWallpaperDataList).size() <= i) {
                return 0;
            }
            return i;
        }
        return i2;
    }

    public final String getWallpaperPath(int i) {
        String str = ((PluginLockWallpaperData) ((ArrayList) this.mWallpaperDataList).get(i)).mPath;
        if (str == null) {
            Log.d("PluginLockWallpaper", "getWallpaperPath() path: null");
            return null;
        }
        try {
            Log.d("PluginLockWallpaper", "getWallpaperPath() path: " + str.substring((str.length() * 20) / 100));
        } catch (Throwable unused) {
        }
        return str;
    }

    public final boolean isCustomPack(int i) {
        boolean z;
        String wallpaperPath = getWallpaperPath(i);
        if (wallpaperPath != null && wallpaperPath.contains("com.samsung.custompack")) {
            z = true;
        } else {
            z = false;
        }
        KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isCustomPack, ret:", z, "PluginLockWallpaper");
        return z;
    }

    public final boolean isDynamicWallpaper() {
        boolean z;
        int screenType = getScreenType();
        if (((PluginLockWallpaperData) ((ArrayList) this.mWallpaperDataList).get(screenType)).mType != -2) {
            z = true;
        } else {
            z = false;
        }
        KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0.m("isDynamicWallpaper() screen:", screenType, ", ret:", z, "PluginLockWallpaper");
        return z;
    }

    public final boolean isServiceWallpaper(int i) {
        String wallpaperPath = getWallpaperPath(i);
        List list = this.mWallpaperDataList;
        Bitmap bitmap = ((PluginLockWallpaperData) ((ArrayList) list).get(i)).mBitmap;
        Uri uri = ((PluginLockWallpaperData) ((ArrayList) list).get(i)).mUri;
        if ((wallpaperPath == null || !wallpaperPath.contains("SamsungUX.DW.FreshP")) && bitmap == null && uri == null) {
            return false;
        }
        return true;
    }

    public final void recoverWallpaperSource(int i) {
        int i2;
        String str;
        PluginLockInstanceData.Data.RecoverData recoverData;
        PluginLockInstanceState pluginLockInstanceState = this.mInstanceState;
        if (pluginLockInstanceState != null && (recoverData = pluginLockInstanceState.getRecoverData()) != null) {
            i2 = recoverData.getWallpaperSource(i).intValue();
        } else {
            i2 = -1;
        }
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("recoverWallpaperSource() backupWallpaperSource: ", i2, ", screenType:", i, "PluginLockWallpaper");
        if (i2 != -1 && i2 != -2 && i2 != 1) {
            if (i == 0) {
                str = "lockscreen_wallpaper_transparent";
            } else {
                str = "sub_display_lockscreen_wallpaper_transparency";
            }
            putSettingsSystem(i2, str);
        }
    }

    public final void recoverWallpaperType(int i) {
        String str;
        PluginLockInstanceData.Data.RecoverData recoverData;
        PluginLockInstanceState pluginLockInstanceState = this.mInstanceState;
        int i2 = -1;
        if (pluginLockInstanceState != null && (recoverData = pluginLockInstanceState.getRecoverData()) != null) {
            i2 = recoverData.getWallpaperType(i).intValue();
        }
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("recoverWallpaperType() backupType: ", i2, ", screenType:", i, "PluginLockWallpaper");
        if (i2 == -3) {
            if (i == 0) {
                str = "lockscreen_wallpaper";
            } else {
                str = "lockscreen_wallpaper_sub";
            }
            putSettingsSystem(0, str);
        }
    }

    public final void reset(boolean z) {
        PluginLockInstanceData.Data.RecoverData recoverData;
        RecyclerView$$ExternalSyntheticOutline0.m(RowView$$ExternalSyntheticOutline0.m("reset() reconnectReq:", z, ", screenType:"), sScreenType, "PluginLockWallpaper");
        PluginLockWallpaperData pluginLockWallpaperData = (PluginLockWallpaperData) ((ArrayList) this.mWallpaperDataList).get(getScreenType());
        Bitmap bitmap = pluginLockWallpaperData.mBitmap;
        if (bitmap != null && !bitmap.isRecycled()) {
            pluginLockWallpaperData.mBitmap.recycle();
        }
        pluginLockWallpaperData.mPath = null;
        pluginLockWallpaperData.mBitmap = null;
        pluginLockWallpaperData.mUri = null;
        pluginLockWallpaperData.mHints = null;
        pluginLockWallpaperData.mResourceId = 0;
        if (pluginLockWallpaperData.mType != -2) {
            if (isCloneDisplayRequired()) {
                recoverWallpaperSource(0);
                recoverWallpaperSource(1);
                recoverWallpaperType(0);
                recoverWallpaperType(1);
            } else {
                recoverWallpaperSource(sScreenType);
                recoverWallpaperType(sScreenType);
            }
            pluginLockWallpaperData.mType = -2;
            if (isCloneDisplayRequired()) {
                setWallpaperBackupValue();
            } else {
                int i = sScreenType;
                PluginLockInstanceState pluginLockInstanceState = this.mInstanceState;
                if (pluginLockInstanceState != null && (recoverData = pluginLockInstanceState.getRecoverData()) != null) {
                    recoverData.setWallpaperDynamic(i, -2);
                    recoverData.setWallpaperSource(i, -1);
                    recoverData.setWallpaperType(i, -1);
                    this.mInstanceState.updateDb();
                }
            }
            if (!z && !sScreenTypeChanged && this.mWallpaperUpdateCallback != null) {
                Log.d("PluginLockWallpaper", "reset() onWallpaperUpdate will be called");
                this.mWallpaperUpdateCallback.onWallpaperUpdate(isCloneDisplayRequired());
                updateHint();
            }
        }
        setPluginWallpaperType(0);
        sScreenTypeChanged = false;
        this.mHintUpdatedSkip = false;
        this.mWholeRecoverRequired = false;
        this.mRecoverRequestedScreen = -1;
    }

    public final void resetAll() {
        Log.d("PluginLockWallpaper", "resetAll()");
        Iterator it = ((ArrayList) this.mWallpaperDataList).iterator();
        while (it.hasNext()) {
            ((PluginLockWallpaperData) it.next()).resetAll();
        }
        recoverWallpaperSource(0);
        recoverWallpaperSource(1);
        recoverWallpaperType(0);
        recoverWallpaperType(1);
        setWallpaperBackupValue();
        if (this.mWallpaperUpdateCallback != null) {
            Log.d("PluginLockWallpaper", "resetAll() onWallpaperUpdate will be called");
            this.mWallpaperUpdateCallback.onWallpaperUpdate(false);
            updateHint();
        }
        Context context = this.mContext;
        Prefs.putBoolean(context, "WPaperChangedByDls", false);
        Prefs.putBoolean(context, "WPaperChangedByDlsSub", false);
        this.mWholeRecoverRequired = true;
        setPluginWallpaperType(0);
        sScreenTypeChanged = false;
        this.mHintUpdatedSkip = false;
        this.mWholeRecoverRequired = false;
        this.mRecoverRequestedScreen = -1;
        this.mHasData = false;
    }

    public final void setMultiPackWallpaperSource(int i) {
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        if (i == 0) {
            str = "lockscreen_wallpaper_transparent";
        } else {
            str = "sub_display_lockscreen_wallpaper_transparency";
        }
        int settingsInt = getSettingsInt(-1, str);
        SuggestionsAdapter$$ExternalSyntheticOutline0.m("setMultiPackWallpaperSource() currentType: ", settingsInt, ", screenType:", i, "PluginLockWallpaper");
        setWallpaperTypeBackupValue(i, -1);
        setWallpaperSourceBackupValue(i, -1);
        String wallpaperPath = getWallpaperPath(getScreenType());
        WallpaperManager wallpaperManager = WallpaperManager.getInstance(this.mContext);
        String defaultMultipackStyle = wallpaperManager.getDefaultMultipackStyle(2);
        String defaultMultipackStyle2 = wallpaperManager.getDefaultMultipackStyle(18);
        if (wallpaperPath != null) {
            String multiPackPkgName = getMultiPackPkgName(defaultMultipackStyle);
            String multiPackPkgName2 = getMultiPackPkgName(defaultMultipackStyle2);
            if (!wallpaperPath.contains(multiPackPkgName) && !wallpaperPath.contains(multiPackPkgName2)) {
                z = false;
            } else {
                z = true;
            }
            ActionBarContextView$$ExternalSyntheticOutline0.m(KeyguardUpdateMonitorLogger$logAssistantVisible$2$$ExternalSyntheticOutline0.m("isPreloadedMultiPack, main:", multiPackPkgName, ", sub:", multiPackPkgName2, ", isPreload"), z, "PluginLockWallpaper");
        } else {
            z = false;
        }
        if (!z) {
            String wallpaperPath2 = getWallpaperPath(getScreenType());
            String str2 = null;
            String string = SemCscFeature.getInstance().getString("CscFeature_LockScreen_ConfigDefaultWallpaperStyle", (String) null);
            if (string != null && !string.isEmpty()) {
                str2 = new StringTokenizer(string, ";").nextToken();
            }
            if (wallpaperPath2 != null && str2 != null && wallpaperPath2.contains(str2)) {
                z2 = true;
            } else {
                z2 = false;
            }
            KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isSpecialEditionMultiPack, ret:", z2, "PluginLockWallpaper");
            if (!z2) {
                String wallpaperPath3 = getWallpaperPath(getScreenType());
                if (wallpaperPath3 != null && wallpaperPath3.contains("SamsungUX.DW.Stub")) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0.m("isStubPack, ret:", z3, "PluginLockWallpaper");
                if (!z3) {
                    if (isCustomPack(getScreenType())) {
                        Log.d("PluginLockWallpaper", "setMultiPackWallpaperSource, custom");
                        if (settingsInt != 0) {
                            putSettingsSystem(0, str);
                            return;
                        }
                        return;
                    }
                    Log.d("PluginLockWallpaper", "setMultiPackWallpaperSource, theme");
                    if (settingsInt != 3) {
                        putSettingsSystem(3, str);
                        return;
                    }
                    return;
                }
            }
        }
        Log.d("PluginLockWallpaper", "setMultiPackWallpaperSource, preload");
        if (settingsInt != 1) {
            putSettingsSystem(1, str);
        }
    }

    public final void setPluginWallpaperType(int i) {
        boolean z;
        if (sDualDisplayPlugin) {
            boolean z2 = LsRune.LOCKUI_SUB_DISPLAY_LOCK;
            boolean z3 = true;
            if (z2 && this.mWholeRecoverRequired) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                if (z2 && sScreenType != 0 && !isCloneDisplayRequired()) {
                    z3 = false;
                }
                if (z3) {
                    putSettingsSecure(i, "plugin_lock_wallpaper_type");
                    return;
                } else {
                    putSettingsSecure(i, "plugin_lock_wallpaper_type_sub");
                    return;
                }
            }
        }
        if (LsRune.LOCKUI_SUB_DISPLAY_LOCK) {
            putSettingsSecure(i, "plugin_lock_wallpaper_type");
            putSettingsSecure(i, "plugin_lock_wallpaper_type_sub");
        } else {
            putSettingsSecure(i, "plugin_lock_wallpaper_type");
        }
    }

    public final void setRecoverRequestedScreen(int i) {
        if (getScreenType() != i) {
            SeslColorSpectrumView$$ExternalSyntheticOutline0.m("setRecoverRequestedScreen() screen: ", i, "PluginLockWallpaper");
            this.mRecoverRequestedScreen = i;
        } else {
            this.mRecoverRequestedScreen = -1;
        }
    }

    public final void updateHint() {
        if (this.mWallpaperUpdateCallback != null && (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY || !this.mHintUpdatedSkip || !this.mHasData)) {
            ListPopupWindow$$ExternalSyntheticOutline0.m("updateHint() onWallpaperHintUpdate will be called: ", getScreenType(), "PluginLockWallpaper");
            this.mWallpaperUpdateCallback.onWallpaperHintUpdate(((PluginLockWallpaperData) ((ArrayList) this.mWallpaperDataList).get(getScreenType())).mHints);
        } else {
            StringBuilder sb = new StringBuilder("updateHint() mHintUpdatedSkip = ");
            sb.append(this.mHintUpdatedSkip);
            sb.append(", mHasData = ");
            ActionBarContextView$$ExternalSyntheticOutline0.m(sb, this.mHasData, "PluginLockWallpaper");
        }
        this.mHintUpdatedSkip = false;
        this.mHasData = true;
    }
}
