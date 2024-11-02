package com.android.systemui.pluginlock.component;

import android.app.SemWallpaperColors;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.util.Log;
import androidx.concurrent.futures.AbstractResolvableFuture$$ExternalSyntheticOutline0;
import androidx.exifinterface.media.ExifInterface$$ExternalSyntheticOutline0;
import androidx.recyclerview.widget.GridLayoutManager$$ExternalSyntheticOutline0;
import com.android.systemui.LsRune;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes2.dex */
public final class PluginHomeWallpaper {
    public static int sScreenType;
    public final Context mContext;
    public final Map mWallpaperDataList;
    public PluginWallpaperCallback mWallpaperUpdateCallback;

    /* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
    /* loaded from: classes2.dex */
    public final class WallpaperData {
        public SemWallpaperColors mHints;
        public String mIntelligentCrops;
        public String mPath;
        public Rect mRect;
        public int mType;
        public Uri mUri;

        public /* synthetic */ WallpaperData(int i) {
            this();
        }

        private WallpaperData() {
            this.mType = -2;
            this.mPath = null;
            this.mIntelligentCrops = null;
            this.mUri = null;
            this.mHints = null;
            this.mRect = null;
        }
    }

    public PluginHomeWallpaper(Context context) {
        HashMap hashMap = new HashMap();
        this.mWallpaperDataList = hashMap;
        this.mContext = context;
        int i = 0;
        hashMap.put(0, new WallpaperData(i));
        if (LsRune.WALLPAPER_SUB_WATCHFACE || LsRune.WALLPAPER_VIRTUAL_DISPLAY) {
            hashMap.put(1, new WallpaperData(i));
        }
    }

    public static int getKey(int i) {
        if (i != 1 && i != 0) {
            if ((i & 16) == 16 || (i & 32) == 32) {
                return 1;
            }
            return 0;
        }
        return i;
    }

    public final int getWallpaperType(int i) {
        WallpaperData wallpaperData = (WallpaperData) ((HashMap) this.mWallpaperDataList).get(Integer.valueOf(getKey(i)));
        if (wallpaperData != null) {
            return wallpaperData.mType;
        }
        Log.w("PluginHomeWallpaper", "getWallpaperType: WallpaperData is null for screen [" + i + "]");
        return -2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setWallpaper(int i, int i2, int i3, String str, String str2) {
        byte b;
        boolean contains;
        FileInputStream fileInputStream;
        StringBuilder m = GridLayoutManager$$ExternalSyntheticOutline0.m("setWallpaper() wallpaperType:", i2, ", sourceType:", i3, ", source:");
        m.append(str);
        m.append(", screen:");
        m.append(i);
        m.append(", iCrops = ");
        ExifInterface$$ExternalSyntheticOutline0.m(m, str2, "PluginHomeWallpaper");
        HashMap hashMap = (HashMap) this.mWallpaperDataList;
        WallpaperData wallpaperData = (WallpaperData) hashMap.get(Integer.valueOf(getKey(i)));
        boolean z = false;
        z = false;
        if (wallpaperData == null) {
            wallpaperData = new WallpaperData(z ? 1 : 0);
            hashMap.put(Integer.valueOf(getKey(i)), wallpaperData);
        }
        if (wallpaperData.mType != -2 && (wallpaperData.mPath != null || wallpaperData.mUri != null)) {
            b = true;
        } else {
            b = false;
        }
        wallpaperData.mType = i2;
        wallpaperData.mIntelligentCrops = str2;
        Rect rect = null;
        if (i3 != 0) {
            if (i3 != 2) {
                Log.w("PluginHomeWallpaper", "setWallpaper() unsupported type!");
                return;
            }
            Uri parse = Uri.parse(str);
            wallpaperData.mPath = null;
            wallpaperData.mUri = parse;
            wallpaperData.mRect = null;
            contains = false;
        } else {
            wallpaperData.mPath = str;
            wallpaperData.mUri = null;
            String m2 = AbstractResolvableFuture$$ExternalSyntheticOutline0.m(str.replaceFirst("[.^][^.]+$", ""), "_rect.txt");
            try {
                fileInputStream = new FileInputStream(m2);
            } catch (FileNotFoundException unused) {
                Log.w("PluginHomeWallpaper", "getRect, " + m2 + " is not available");
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
                try {
                    BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
                    try {
                        rect = Rect.unflattenFromString(bufferedReader.readLine());
                        bufferedReader.close();
                        inputStreamReader.close();
                        fileInputStream.close();
                        Log.d("PluginHomeWallpaper", "getRect, rectPath: " + m2 + ", rect: " + rect);
                        wallpaperData.mRect = rect;
                        contains = str.contains("wallpaper_0");
                    } finally {
                    }
                } finally {
                }
            } finally {
            }
        }
        Log.d("PluginHomeWallpaper", "setWallpaper() mWallpaperUpdateCallback:" + this.mWallpaperUpdateCallback);
        PluginWallpaperCallback pluginWallpaperCallback = this.mWallpaperUpdateCallback;
        if (pluginWallpaperCallback != null) {
            if (b == false && contains) {
                z = true;
            }
            pluginWallpaperCallback.onWallpaperUpdate(z);
        }
    }
}
