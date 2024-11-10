package com.android.server.wallpaper;

import android.R;
import android.app.SemWallpaperResourcesInfo;
import android.app.WallpaperColors;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Color;
import android.os.Bundle;
import android.os.FileUtils;
import android.util.SparseArray;
import android.util.Xml;
import com.android.internal.util.JournaledFile;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.display.DisplayPowerController2;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import com.android.server.wallpaper.WallpaperDisplayHelper;
import com.samsung.android.wallpaper.utils.WallpaperExtraBundleHelper;
import com.samsung.android.wallpaper.utils.WhichChecker;
import com.samsung.server.wallpaper.SemWallpaperManagerService;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import libcore.io.IoUtils;

/* loaded from: classes3.dex */
public class WallpaperDataParser {
    public static final String TAG = "WallpaperDataParser";
    public final Context mContext;
    public final ComponentName mImageWallpaper;
    public final boolean mIsLockscreenLiveWallpaperEnabled;
    public SemWallpaperManagerService mSemService;
    public SemWallpaperResourcesInfo mSemWallpaperResourcesInfo;
    public final WallpaperCropper mWallpaperCropper;
    public final WallpaperDisplayHelper mWallpaperDisplayHelper;

    public WallpaperDataParser(Context context, WallpaperDisplayHelper wallpaperDisplayHelper, WallpaperCropper wallpaperCropper, boolean z, SemWallpaperManagerService semWallpaperManagerService, SemWallpaperResourcesInfo semWallpaperResourcesInfo) {
        this.mContext = context;
        this.mWallpaperDisplayHelper = wallpaperDisplayHelper;
        this.mWallpaperCropper = wallpaperCropper;
        this.mImageWallpaper = ComponentName.unflattenFromString(context.getResources().getString(R.string.permlab_bindCarrierMessagingService));
        this.mIsLockscreenLiveWallpaperEnabled = z;
        this.mSemService = semWallpaperManagerService;
        this.mSemWallpaperResourcesInfo = semWallpaperResourcesInfo;
    }

    public JournaledFile makeJournaledFile(int i, int i2) {
        String absolutePath = new File(WallpaperUtils.getWallpaperDir(i), SemWallpaperManagerService.getFileName(i2, 2, 0)).getAbsolutePath();
        return new JournaledFile(new File(absolutePath), new File(absolutePath + ".tmp"));
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean isSameWithPreviousWallpaper(com.android.server.wallpaper.WallpaperData r9, int r10) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wallpaper.WallpaperDataParser.isSameWithPreviousWallpaper(com.android.server.wallpaper.WallpaperData, int):boolean");
    }

    /* loaded from: classes3.dex */
    public class WallpaperLoadingResult {
        public final WallpaperData mLockWallpaperData;
        public final boolean mSuccess;
        public final WallpaperData mSystemWallpaperData;

        public WallpaperLoadingResult(WallpaperData wallpaperData, WallpaperData wallpaperData2, boolean z) {
            this.mSystemWallpaperData = wallpaperData;
            this.mLockWallpaperData = wallpaperData2;
            this.mSuccess = z;
        }

        public WallpaperData getSystemWallpaperData() {
            return this.mSystemWallpaperData;
        }

        public WallpaperData getLockWallpaperData() {
            return this.mLockWallpaperData;
        }

        public boolean success() {
            return this.mSuccess;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x05f8  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0627  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0623  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.android.server.wallpaper.WallpaperDataParser.WallpaperLoadingResult loadSettingsLocked(int r24, boolean r25, com.android.server.wallpaper.WallpaperData r26, com.android.server.wallpaper.WallpaperData r27, int r28, int r29) {
        /*
            Method dump skipped, instructions count: 1594
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wallpaper.WallpaperDataParser.loadSettingsLocked(int, boolean, com.android.server.wallpaper.WallpaperData, com.android.server.wallpaper.WallpaperData, int, int):com.android.server.wallpaper.WallpaperDataParser$WallpaperLoadingResult");
    }

    public void ensureSaneWallpaperData(WallpaperData wallpaperData) {
        if (wallpaperData.cropHint.width() < 0 || wallpaperData.cropHint.height() < 0) {
            wallpaperData.cropHint.set(0, 0, 0, 0);
        }
    }

    public void parseWallpaperAttributes(TypedXmlPullParser typedXmlPullParser, WallpaperData wallpaperData, boolean z) {
        int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "id", -1);
        if (attributeInt != -1) {
            wallpaperData.wallpaperId = attributeInt;
            if (attributeInt > WallpaperUtils.getCurrentWallpaperId()) {
                WallpaperUtils.setCurrentWallpaperId(attributeInt);
            }
        } else {
            wallpaperData.wallpaperId = WallpaperUtils.makeWallpaperIdLocked();
        }
        WallpaperDisplayHelper.DisplayData displayDataOrCreate = this.mWallpaperDisplayHelper.getDisplayDataOrCreate(0);
        if (!z) {
            displayDataOrCreate.mWidth = typedXmlPullParser.getAttributeInt((String) null, "width");
            displayDataOrCreate.mHeight = typedXmlPullParser.getAttributeInt((String) null, "height");
        }
        wallpaperData.cropHint.left = getAttributeInt(typedXmlPullParser, "cropLeft", 0);
        wallpaperData.cropHint.top = getAttributeInt(typedXmlPullParser, "cropTop", 0);
        wallpaperData.cropHint.right = getAttributeInt(typedXmlPullParser, "cropRight", 0);
        wallpaperData.cropHint.bottom = getAttributeInt(typedXmlPullParser, "cropBottom", 0);
        displayDataOrCreate.mPadding.left = getAttributeInt(typedXmlPullParser, "paddingLeft", 0);
        displayDataOrCreate.mPadding.top = getAttributeInt(typedXmlPullParser, "paddingTop", 0);
        displayDataOrCreate.mPadding.right = getAttributeInt(typedXmlPullParser, "paddingRight", 0);
        displayDataOrCreate.mPadding.bottom = getAttributeInt(typedXmlPullParser, "paddingBottom", 0);
        wallpaperData.mWallpaperDimAmount = getAttributeFloat(typedXmlPullParser, "dimAmount", DisplayPowerController2.RATE_FROM_DOZE_TO_ON);
        int attributeInt2 = getAttributeInt(typedXmlPullParser, "dimAmountsCount", 0);
        if (attributeInt2 > 0) {
            SparseArray sparseArray = new SparseArray(attributeInt2);
            for (int i = 0; i < attributeInt2; i++) {
                sparseArray.put(getAttributeInt(typedXmlPullParser, "dimUID" + i, 0), Float.valueOf(getAttributeFloat(typedXmlPullParser, "dimValue" + i, DisplayPowerController2.RATE_FROM_DOZE_TO_ON)));
            }
            wallpaperData.mUidToDimAmount = sparseArray;
        }
        int attributeInt3 = getAttributeInt(typedXmlPullParser, "colorsCount", 0);
        int attributeInt4 = getAttributeInt(typedXmlPullParser, "allColorsCount", 0);
        if (attributeInt4 > 0) {
            HashMap hashMap = new HashMap(attributeInt4);
            for (int i2 = 0; i2 < attributeInt4; i2++) {
                hashMap.put(Integer.valueOf(getAttributeInt(typedXmlPullParser, "allColorsValue" + i2, 0)), Integer.valueOf(getAttributeInt(typedXmlPullParser, "allColorsPopulation" + i2, 0)));
            }
            wallpaperData.primaryColors = new WallpaperColors(hashMap, getAttributeInt(typedXmlPullParser, "colorHints", 0));
        } else if (attributeInt3 > 0) {
            Color color = null;
            Color color2 = null;
            Color color3 = null;
            for (int i3 = 0; i3 < attributeInt3; i3++) {
                Color valueOf = Color.valueOf(getAttributeInt(typedXmlPullParser, "colorValue" + i3, 0));
                if (i3 == 0) {
                    color = valueOf;
                } else if (i3 == 1) {
                    color2 = valueOf;
                } else if (i3 != 2) {
                    break;
                } else {
                    color3 = valueOf;
                }
            }
            wallpaperData.primaryColors = new WallpaperColors(color, color2, color3, getAttributeInt(typedXmlPullParser, "colorHints", 0));
        }
        wallpaperData.name = typedXmlPullParser.getAttributeValue((String) null, "name");
        wallpaperData.allowBackup = typedXmlPullParser.getAttributeBoolean((String) null, "backup", false);
        wallpaperData.mSemWallpaperData.setCreationTime(typedXmlPullParser.getAttributeValue((String) null, "creationTime"));
        wallpaperData.mSemWallpaperData.setIsPreloaded("true".equals(typedXmlPullParser.getAttributeValue((String) null, "isPreloaded")));
        wallpaperData.mSemWallpaperData.setIsCopied("true".equals(typedXmlPullParser.getAttributeValue((String) null, "isCopied")));
        wallpaperData.mSemWallpaperData.setLastCallingPackage(typedXmlPullParser.getAttributeValue((String) null, "lastCallingPackage"));
        wallpaperData.mSemWallpaperData.setLastClearCallstackWithNullPackage(typedXmlPullParser.getAttributeValue((String) null, "lastClearCallstackWithNullPackage"));
        int attributeInt5 = getAttributeInt(typedXmlPullParser, "type", 0);
        if (attributeInt5 == 9) {
            attributeInt5 = 1000;
        }
        wallpaperData.mSemWallpaperData.setWpType(attributeInt5);
        if (wallpaperData.mSemWallpaperData.getWpType() == 1) {
            wallpaperData.mSemWallpaperData.setMotionPkgName(typedXmlPullParser.getAttributeValue((String) null, "motionPkgName"));
        }
        if (wallpaperData.mSemWallpaperData.getWpType() == 4) {
            wallpaperData.mSemWallpaperData.setAnimatedPkgName(typedXmlPullParser.getAttributeValue((String) null, "animatedPkgName"));
        }
        if (wallpaperData.mSemWallpaperData.getWpType() == 8) {
            wallpaperData.mSemWallpaperData.setVideoFilePath(typedXmlPullParser.getAttributeValue((String) null, "videoFilePath"));
            wallpaperData.mSemWallpaperData.setVideoPkgName(typedXmlPullParser.getAttributeValue((String) null, "videoPkgName"));
            wallpaperData.mSemWallpaperData.setVideoFileName(typedXmlPullParser.getAttributeValue((String) null, "videoFileName"));
            wallpaperData.mSemWallpaperData.setVideoDefaultHasBeenUsed("true".equals(typedXmlPullParser.getAttributeValue((String) null, "videoDefaultHasBeenUsed")));
        }
        wallpaperData.mSemWallpaperData.setExternalParams(WallpaperExtraBundleHelper.fromJson(typedXmlPullParser.getAttributeValue((String) null, "externalParams")));
        wallpaperData.mSemWallpaperData.setUri(typedXmlPullParser.getAttributeValue((String) null, "uri"));
        wallpaperData.mSemWallpaperData.parseWallpaperHistoryInfo(typedXmlPullParser.getAttributeValue((String) null, "history"));
    }

    public final int getAttributeInt(TypedXmlPullParser typedXmlPullParser, String str, int i) {
        return typedXmlPullParser.getAttributeInt((String) null, str, i);
    }

    public final float getAttributeFloat(TypedXmlPullParser typedXmlPullParser, String str, float f) {
        return typedXmlPullParser.getAttributeFloat((String) null, str, f);
    }

    public void saveSettingsLocked(int i, WallpaperData wallpaperData, WallpaperData wallpaperData2) {
        FileOutputStream fileOutputStream;
        JournaledFile makeJournaledFile = makeJournaledFile(i, wallpaperData == null ? 0 : WhichChecker.getMode(wallpaperData.mWhich));
        FileOutputStream fileOutputStream2 = null;
        try {
            fileOutputStream = new FileOutputStream(makeJournaledFile.chooseForWrite(), false);
        } catch (IOException unused) {
        }
        try {
            TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(fileOutputStream);
            resolveSerializer.startDocument((String) null, Boolean.TRUE);
            if (wallpaperData != null) {
                writeWallpaperAttributes(resolveSerializer, "wp", wallpaperData);
            }
            if (wallpaperData2 != null) {
                writeWallpaperAttributes(resolveSerializer, "kwp", wallpaperData2);
            }
            resolveSerializer.endDocument();
            fileOutputStream.flush();
            FileUtils.sync(fileOutputStream);
            fileOutputStream.close();
            makeJournaledFile.commit();
        } catch (IOException unused2) {
            fileOutputStream2 = fileOutputStream;
            IoUtils.closeQuietly(fileOutputStream2);
            makeJournaledFile.rollback();
        }
    }

    public void writeWallpaperAttributes(TypedXmlSerializer typedXmlSerializer, String str, WallpaperData wallpaperData) {
        String json;
        WallpaperDisplayHelper.DisplayData displayDataOrCreate = this.mWallpaperDisplayHelper.getDisplayDataOrCreate(0);
        typedXmlSerializer.startTag((String) null, str);
        typedXmlSerializer.attributeInt((String) null, "id", wallpaperData.wallpaperId);
        typedXmlSerializer.attributeInt((String) null, "width", displayDataOrCreate.mWidth);
        typedXmlSerializer.attributeInt((String) null, "height", displayDataOrCreate.mHeight);
        typedXmlSerializer.attributeInt((String) null, "cropLeft", wallpaperData.cropHint.left);
        typedXmlSerializer.attributeInt((String) null, "cropTop", wallpaperData.cropHint.top);
        typedXmlSerializer.attributeInt((String) null, "cropRight", wallpaperData.cropHint.right);
        typedXmlSerializer.attributeInt((String) null, "cropBottom", wallpaperData.cropHint.bottom);
        int i = displayDataOrCreate.mPadding.left;
        if (i != 0) {
            typedXmlSerializer.attributeInt((String) null, "paddingLeft", i);
        }
        int i2 = displayDataOrCreate.mPadding.top;
        if (i2 != 0) {
            typedXmlSerializer.attributeInt((String) null, "paddingTop", i2);
        }
        int i3 = displayDataOrCreate.mPadding.right;
        if (i3 != 0) {
            typedXmlSerializer.attributeInt((String) null, "paddingRight", i3);
        }
        int i4 = displayDataOrCreate.mPadding.bottom;
        if (i4 != 0) {
            typedXmlSerializer.attributeInt((String) null, "paddingBottom", i4);
        }
        typedXmlSerializer.attributeFloat((String) null, "dimAmount", wallpaperData.mWallpaperDimAmount);
        int size = wallpaperData.mUidToDimAmount.size();
        typedXmlSerializer.attributeInt((String) null, "dimAmountsCount", size);
        if (size > 0) {
            int i5 = 0;
            for (int i6 = 0; i6 < wallpaperData.mUidToDimAmount.size(); i6++) {
                typedXmlSerializer.attributeInt((String) null, "dimUID" + i5, wallpaperData.mUidToDimAmount.keyAt(i6));
                typedXmlSerializer.attributeFloat((String) null, "dimValue" + i5, ((Float) wallpaperData.mUidToDimAmount.valueAt(i6)).floatValue());
                i5++;
            }
        }
        WallpaperColors wallpaperColors = wallpaperData.primaryColors;
        if (wallpaperColors != null) {
            int size2 = wallpaperColors.getMainColors().size();
            typedXmlSerializer.attributeInt((String) null, "colorsCount", size2);
            if (size2 > 0) {
                for (int i7 = 0; i7 < size2; i7++) {
                    typedXmlSerializer.attributeInt((String) null, "colorValue" + i7, ((Color) wallpaperData.primaryColors.getMainColors().get(i7)).toArgb());
                }
            }
            int size3 = wallpaperData.primaryColors.getAllColors().size();
            typedXmlSerializer.attributeInt((String) null, "allColorsCount", size3);
            if (size3 > 0) {
                int i8 = 0;
                for (Map.Entry entry : wallpaperData.primaryColors.getAllColors().entrySet()) {
                    typedXmlSerializer.attributeInt((String) null, "allColorsValue" + i8, ((Integer) entry.getKey()).intValue());
                    typedXmlSerializer.attributeInt((String) null, "allColorsPopulation" + i8, ((Integer) entry.getValue()).intValue());
                    i8++;
                }
            }
            typedXmlSerializer.attributeInt((String) null, "colorHints", wallpaperData.primaryColors.getColorHints());
        }
        typedXmlSerializer.attribute((String) null, "name", wallpaperData.name);
        ComponentName componentName = wallpaperData.wallpaperComponent;
        if (componentName != null && !componentName.equals(this.mImageWallpaper)) {
            typedXmlSerializer.attribute((String) null, "component", wallpaperData.wallpaperComponent.flattenToShortString());
        }
        if (wallpaperData.allowBackup) {
            typedXmlSerializer.attributeBoolean((String) null, "backup", true);
        }
        if (wallpaperData.mSemWallpaperData.getCreationTime() != null) {
            typedXmlSerializer.attributeInterned((String) null, "creationTime", wallpaperData.mSemWallpaperData.getCreationTime());
        }
        if (wallpaperData.mSemWallpaperData.getIsPreloaded()) {
            typedXmlSerializer.attributeInterned((String) null, "isPreloaded", "true");
        }
        if (wallpaperData.mSemWallpaperData.getIsCopied()) {
            typedXmlSerializer.attributeInterned((String) null, "isCopied", "true");
        }
        if (wallpaperData.mSemWallpaperData.getLastCallingPackage() != null) {
            typedXmlSerializer.attributeInterned((String) null, "lastCallingPackage", wallpaperData.mSemWallpaperData.getLastCallingPackage());
        }
        if (wallpaperData.mSemWallpaperData.getLastClearCallstackWithNullPackage() != null) {
            typedXmlSerializer.attributeInterned((String) null, "lastClearCallstackWithNullPackage", wallpaperData.mSemWallpaperData.getLastClearCallstackWithNullPackage());
        }
        Bundle externalParams = wallpaperData.mSemWallpaperData.getExternalParams();
        if (externalParams != null && (json = WallpaperExtraBundleHelper.toJson(externalParams)) != null) {
            typedXmlSerializer.attributeInterned((String) null, "externalParams", json);
        }
        typedXmlSerializer.attributeInterned((String) null, "type", Integer.toString(wallpaperData.mSemWallpaperData.getWpType()));
        if (!WhichChecker.isDex(wallpaperData.mWhich) && wallpaperData.mSemWallpaperData.getWpType() == 8) {
            if (wallpaperData.mSemWallpaperData.getVideoFilePath() != null) {
                typedXmlSerializer.attributeInterned((String) null, "videoFilePath", wallpaperData.mSemWallpaperData.getVideoFilePath());
            }
            if (wallpaperData.mSemWallpaperData.getVideoPkgName() != null) {
                typedXmlSerializer.attributeInterned((String) null, "videoPkgName", wallpaperData.mSemWallpaperData.getVideoPkgName());
            }
            if (wallpaperData.mSemWallpaperData.getVideoFileName() != null) {
                typedXmlSerializer.attributeInterned((String) null, "videoFileName", wallpaperData.mSemWallpaperData.getVideoFileName());
            }
        }
        if (this.mSemWallpaperResourcesInfo.getDefaultWallpaperType(2, this.mSemService.mCMFWallpaper.getDeviceColor()) == 8 && wallpaperData.mSemWallpaperData.getVideoDefaultHasBeenUsed()) {
            typedXmlSerializer.attributeInterned((String) null, "videoDefaultHasBeenUsed", wallpaperData.mSemWallpaperData.getVideoDefaultHasBeenUsed() ? "true" : "false");
        }
        if (str.equals("kwp")) {
            if (!WhichChecker.isDex(wallpaperData.mWhich) && wallpaperData.mSemWallpaperData.getWpType() == 1 && wallpaperData.mSemWallpaperData.getMotionPkgName() != null) {
                typedXmlSerializer.attributeInterned((String) null, "motionPkgName", wallpaperData.mSemWallpaperData.getMotionPkgName());
            }
            if (!WhichChecker.isDex(wallpaperData.mWhich) && wallpaperData.mSemWallpaperData.getWpType() == 4 && wallpaperData.mSemWallpaperData.getAnimatedPkgName() != null) {
                typedXmlSerializer.attributeInterned((String) null, "animatedPkgName", wallpaperData.mSemWallpaperData.getAnimatedPkgName());
            }
        }
        if (!WhichChecker.isDex(wallpaperData.mWhich) && ((wallpaperData.mSemWallpaperData.getWpType() == 3 || wallpaperData.mSemWallpaperData.getWpType() == 5 || wallpaperData.mSemWallpaperData.getWpType() == 0 || wallpaperData.mSemWallpaperData.getWpType() == 1000 || wallpaperData.mSemWallpaperData.getWpType() == 9) && wallpaperData.mSemWallpaperData.getUri() != null)) {
            typedXmlSerializer.attributeInterned((String) null, "uri", wallpaperData.mSemWallpaperData.getUri().toString());
        }
        ArrayList wallpaperHistoryList = wallpaperData.mSemWallpaperData.getWallpaperHistoryList();
        if (wallpaperHistoryList != null) {
            StringBuffer stringBuffer = new StringBuffer();
            int size4 = wallpaperHistoryList.size() - 1;
            if (size4 >= 0) {
                for (int i9 = 0; i9 <= size4; i9++) {
                    stringBuffer.append((String) wallpaperHistoryList.get(i9));
                    if (i9 != size4) {
                        stringBuffer.append(KnoxVpnFirewallHelper.DELIMITER);
                    }
                }
                typedXmlSerializer.attributeInterned((String) null, "history", stringBuffer.toString());
            }
        }
        typedXmlSerializer.endTag((String) null, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x017f, code lost:
    
        if (r3 != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0130, code lost:
    
        libcore.io.IoUtils.closeQuietly((java.lang.AutoCloseable) r2);
        libcore.io.IoUtils.closeQuietly((java.lang.AutoCloseable) r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012d, code lost:
    
        android.os.FileUtils.sync(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0157, code lost:
    
        if (r3 != 0) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x012b, code lost:
    
        if (r3 != 0) goto L73;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v18, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v22, types: [java.io.FileOutputStream, java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.io.FileOutputStream, java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v8, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.FileOutputStream, java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [java.io.FileOutputStream] */
    /* JADX WARN: Type inference failed for: r3v14, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v29, types: [java.io.FileOutputStream, java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v35 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean restoreNamedResourceLocked(com.android.server.wallpaper.WallpaperData r11) {
        /*
            Method dump skipped, instructions count: 408
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.wallpaper.WallpaperDataParser.restoreNamedResourceLocked(com.android.server.wallpaper.WallpaperData):boolean");
    }
}
