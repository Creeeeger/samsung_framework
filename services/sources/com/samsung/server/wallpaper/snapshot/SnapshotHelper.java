package com.samsung.server.wallpaper.snapshot;

import android.content.ComponentName;
import android.content.Context;
import android.os.Environment;
import android.os.FileUtils;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.JournaledFile;
import com.android.modules.utils.TypedXmlPullParser;
import com.android.modules.utils.TypedXmlSerializer;
import com.android.server.wallpaper.WallpaperData;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import com.samsung.android.wallpaper.Rune;
import com.samsung.android.wallpaper.utils.WhichChecker;
import com.samsung.server.wallpaper.AssetFileManager;
import com.samsung.server.wallpaper.Log;
import com.samsung.server.wallpaper.snapshot.SnapshotManager;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import libcore.io.IoUtils;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes2.dex */
public abstract class SnapshotHelper {
    public static int checkWhich(int i) {
        return WhichChecker.getMode(i) == 0 ? i | 4 : i;
    }

    public static ArrayList getWhiches(int i) {
        ArrayList arrayList = new ArrayList();
        if (WhichChecker.getType(i) == 3) {
            if (WhichChecker.getMode(i) == 0) {
                arrayList.addAll(getWhichesForEachMode(1));
                arrayList.addAll(getWhichesForEachMode(2));
            } else {
                arrayList.add(Integer.valueOf(WhichChecker.getMode(i) | 1));
                arrayList.add(Integer.valueOf(WhichChecker.getMode(i) | 2));
            }
        } else {
            if (WhichChecker.getMode(i) == 0) {
                i |= 4;
            }
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static ArrayList getWhichesForEachMode(int i) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(i | 4));
        if (Rune.SUPPORT_SUB_DISPLAY_MODE) {
            if (!Rune.SUPPORT_COVER_DISPLAY_WATCHFACE) {
                arrayList.add(Integer.valueOf(i | 16));
            } else if ((i & 2) == 0) {
                arrayList.add(Integer.valueOf(i | 16));
            }
        }
        return arrayList;
    }

    public static int getCorrespondingWhich(int i) {
        if (!WhichChecker.isSystem(i)) {
            return WhichChecker.isSubDisplay(i) ? 17 : 5;
        }
        if (WhichChecker.isVirtualDisplay(i) || WhichChecker.isWatchFaceDisplay(i)) {
            return 0;
        }
        return WhichChecker.isSubDisplay(i) ? 18 : 6;
    }

    public static int getCorrespondingWhichForDls(int i) {
        if (Rune.SUPPORT_PAIRED_DLS_SNAPSHOT && !WhichChecker.isSystem(i)) {
            return WhichChecker.isSubDisplay(i) ? 6 : 18;
        }
        return 0;
    }

    public static String getCurrentTime() {
        return SimpleDateFormat.getDateTimeInstance().format(new Date(System.currentTimeMillis()));
    }

    public static File getBackupWallpaperFileLegacy(int i, int i2, int i3) {
        return new File(WhichChecker.isLock(i2) ? getWallpaperLockDir(i) : getWallpaperDir(i), ((getBackupWallpaperDirLegacy(i2) + "/") + i3 + "_") + i2);
    }

    public static File getBackupWallpaperFile(int i, int i2, int i3) {
        if (!Rune.SUPPORT_LAYERED_WALLPAPER_SNAPSHOT) {
            return getBackupWallpaperFileLegacy(i, i3, i2);
        }
        return new File(getBackupWallpaperDir(i, i2, i3), "wallpaper");
    }

    public static File getBackupWallpaperAssetsDir(int i, int i2, int i3) {
        return new File(Environment.getUserSystemDirectory(i), "wallpaper_backup/" + i2 + "/" + i3 + "/wallpaper_assets");
    }

    public static String getBackupWallpaperDirLegacy(int i) {
        return WhichChecker.isDex(i) ? "dex_wallpaper_backup" : WhichChecker.isSubDisplay(i) ? "sub_wallpaper_backup" : "wallpaper_backup";
    }

    public static File getBackupWallpaperDir(int i) {
        return new File(Environment.getUserSystemDirectory(i), "wallpaper_backup");
    }

    public static File getBackupWallpaperDir(int i, int i2) {
        return new File(Environment.getUserSystemDirectory(i), "wallpaper_backup/" + i2);
    }

    public static File getBackupWallpaperDir(int i, int i2, int i3) {
        return new File(Environment.getUserSystemDirectory(i), "wallpaper_backup/" + i2 + "/" + i3);
    }

    public static boolean saveBackupFile(int i, int i2, int i3, WallpaperData wallpaperData) {
        Log.d("SnapshotHelper", "saveBackupFile: userId = " + i + ", which = " + i2 + ", key = " + i3 + ", backupWallpaper [" + wallpaperData + "]");
        if (wallpaperData == null) {
            return false;
        }
        File wallpaperFile = wallpaperData.getWallpaperFile();
        File backupWallpaperFile = getBackupWallpaperFile(i, i3, i2);
        Log.d("SnapshotHelper", "saveBackupFile: sourceFile = " + wallpaperFile);
        if (wallpaperFile == null || !wallpaperFile.exists()) {
            wallpaperData.setWallpaperFile(null);
            Log.d("SnapshotHelper", "saveBackupFile: sourceFile is not exist.");
            return true;
        }
        Log.d("SnapshotHelper", "saveBackupFile: targetFile = " + backupWallpaperFile);
        wallpaperData.setWallpaperFile(backupWallpaperFile);
        if (saveFile(wallpaperFile, backupWallpaperFile)) {
            return true;
        }
        Log.d("SnapshotHelper", "saveBackupFile: Failed to copy file.");
        return false;
    }

    public static boolean saveBackupFileForLiveWallpaper(int i, int i2, int i3, WallpaperData wallpaperData) {
        Log.d("SnapshotHelper", "saveBackupFileForLiveWallpaper: userId = " + i + ", which = " + i2 + ", key = " + i3 + ", backupWallpaper [" + wallpaperData + "]");
        if (wallpaperData == null) {
            Log.d("SnapshotHelper", "saveBackupFileForLiveWallpaper: wallpaper is null.");
            return false;
        }
        ComponentName wallpaperComponent = wallpaperData.getWallpaperComponent();
        if (wallpaperComponent == null) {
            Log.d("SnapshotHelper", "saveBackupFileForLiveWallpaper: ComponentName is missed.");
            return false;
        }
        String packageName = wallpaperComponent.getPackageName();
        if (!"com.samsung.android.wallpaper.live".equals(packageName)) {
            Log.d("SnapshotHelper", "saveBackupFileForLiveWallpaper: Package name is not [com.samsung.android.wallpaper.live], packageName = [" + packageName + "]");
            return true;
        }
        if (!AssetFileManager.getBaseAssetDir(i2, i).exists()) {
            Log.d("SnapshotHelper", "saveBackupFileForLiveWallpaper: No assets.");
            return true;
        }
        copyDirectory(AssetFileManager.getBaseAssetDir(i2, i), getBackupWallpaperAssetsDir(i, i3, i2));
        return true;
    }

    public static File getWallpaperLockDir(int i) {
        return new File(Environment.getUserSystemDirectory(i), "wallpaper_lock_images");
    }

    public static File getWallpaperDir(int i) {
        return Environment.getUserSystemDirectory(i);
    }

    public static boolean saveFile(File file, File file2) {
        if (file2 == null) {
            Log.e("SnapshotHelper", "saveFile: target is null.");
            return false;
        }
        if (file != null && file.exists()) {
            if (!file2.exists()) {
                Log.d("SnapshotHelper", "saveFile: target file doesn't exist, mkdir success? = " + file2.mkdirs());
            }
            if (FileUtils.copyFile(file, file2)) {
                Log.d("SnapshotHelper", "saveFile: success copy file. \n\tsource = " + file + "\n\ttarget = " + file2);
                return true;
            }
            Log.d("SnapshotHelper", "saveFile: Failed to copy file.");
        } else {
            Log.d("SnapshotHelper", "saveFile: Source file does not exist.");
        }
        deleteFile(file2);
        return false;
    }

    public static void deleteFile(File file) {
        if (file == null || !file.exists()) {
            return;
        }
        Log.d("SnapshotHelper", "deleteFile: " + file.getPath());
        file.delete();
    }

    public static void deleteFiles(WallpaperData wallpaperData) {
        if (wallpaperData != null) {
            deleteFile(wallpaperData.getWallpaperFile());
            deleteFile(wallpaperData.getWallpaperCropFile());
        }
    }

    public static void deleteFilesByKeyLegacy(int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        int[] iArr = {1, 2};
        int[] iArr2 = {4, 16, 8, 32};
        for (int i3 = 0; i3 < 2; i3++) {
            int i4 = iArr[i3];
            for (int i5 = 0; i5 < 4; i5++) {
                try {
                    File[] listBackupFiles = listBackupFiles(i, iArr2[i5] | i4);
                    if (listBackupFiles != null && listBackupFiles.length > 0) {
                        for (int i6 = 0; i6 < listBackupFiles.length; i6++) {
                            if (Integer.parseInt(listBackupFiles[i6].getName().split("_")[0]) == i2) {
                                listBackupFiles[i6].delete();
                            }
                        }
                    }
                } catch (Exception e) {
                    Log.e("SnapshotHelper", "deleteFilesByKeyLegacy: " + e.getMessage());
                }
            }
        }
    }

    public static void deleteFilesByKey(int i, int i2) {
        if (!Rune.SUPPORT_LAYERED_WALLPAPER_SNAPSHOT) {
            deleteFilesByKeyLegacy(i, i2);
        } else {
            if (i2 <= 0) {
                return;
            }
            deleteDirectory(getBackupWallpaperDir(i, i2));
        }
    }

    public static void deleteFilesByWhichLegacy(int i, int i2) {
        if (i2 <= 0) {
            return;
        }
        try {
            File[] listBackupFiles = listBackupFiles(i, i2);
            if (listBackupFiles == null || listBackupFiles.length <= 0) {
                return;
            }
            for (int i3 = 0; i3 < listBackupFiles.length; i3++) {
                if (Integer.parseInt(listBackupFiles[i3].getName().split("_")[1]) == i2) {
                    listBackupFiles[i3].delete();
                }
            }
        } catch (Exception e) {
            Log.e("SnapshotHelper", "deleteFilesByWhichLegacy: " + e.getMessage());
        }
    }

    public static void deleteFilesByWhich(int i, int i2) {
        if (!Rune.SUPPORT_LAYERED_WALLPAPER_SNAPSHOT) {
            deleteFilesByWhichLegacy(i, i2);
            return;
        }
        if (i2 <= 0) {
            return;
        }
        try {
            File[] listFiles = getBackupWallpaperDir(i).listFiles();
            for (int i3 = 0; i3 < listFiles.length; i3++) {
                if (listFiles[i3].isDirectory()) {
                    File[] listFiles2 = listFiles[i3].listFiles();
                    for (int i4 = 0; i4 < listFiles2.length; i4++) {
                        if (Integer.parseInt(listFiles2[i4].getName()) == i2) {
                            Log.d("SnapshotHelper", "deleteFilesByWhich: " + listFiles2[i4].getPath());
                            deleteDirectory(listFiles2[i4]);
                        }
                    }
                    if (listFiles[i3].listFiles().length <= 0) {
                        deleteDirectory(listFiles[i3]);
                    }
                }
            }
        } catch (Exception e) {
            Log.d("SnapshotHelper", "deleteFilesByWhich: " + e.getMessage());
        }
    }

    public static File[] listBackupFiles(int i, int i2) {
        try {
            File file = new File(WhichChecker.isLock(i2) ? getWallpaperLockDir(i) : getWallpaperDir(i), getBackupWallpaperDirLegacy(i2));
            Log.d("SnapshotHelper", "listBackupFiles: directory = " + file);
            return file.listFiles();
        } catch (Exception e) {
            Log.d("SnapshotHelper", "listBackupFiles: " + e.getMessage());
            return null;
        }
    }

    public static void copyDirectory(File file, File file2) {
        Log.d("SnapshotHelper", "copyDirectory: sourceLocation = " + file + ", targetLocation = " + file2);
        if (file.isDirectory()) {
            if (!file2.exists()) {
                file2.mkdirs();
            }
            String[] list = file.list();
            for (int i = 0; i < list.length; i++) {
                copyDirectory(new File(file, list[i]), new File(file2, list[i]));
            }
            return;
        }
        FileUtils.copyFile(file, file2);
    }

    public static void renameDirectory(File file, File file2) {
        if (!deleteDirectory(file2)) {
            Log.w("SnapshotHelper", "delete target Location failed : " + file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        Log.w("SnapshotHelper", "renameDirectory: Failed to rename from " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ", try copy and delete");
        copyDirectory(file, file2);
        deleteDirectory(file);
    }

    public static boolean deleteDirectory(File file) {
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            for (int i = 0; i < listFiles.length; i++) {
                if (listFiles[i].isDirectory()) {
                    deleteDirectory(listFiles[i]);
                } else {
                    listFiles[i].delete();
                }
            }
        }
        return file.delete();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:64:0x0083. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0233 A[Catch: IndexOutOfBoundsException -> 0x02b9, IOException -> 0x02bb, NumberFormatException -> 0x02c6, XmlPullParserException -> 0x02d1, NullPointerException -> 0x02dc, FileNotFoundException -> 0x02e7, TryCatch #1 {NumberFormatException -> 0x02c6, blocks: (B:28:0x0305, B:96:0x0140, B:102:0x015a, B:105:0x0157, B:108:0x0161, B:110:0x016f, B:150:0x01b9, B:151:0x01e3, B:153:0x020d, B:154:0x0213, B:156:0x021c, B:159:0x022c, B:161:0x0233, B:20:0x029f, B:22:0x02a9, B:24:0x02b1, B:60:0x02ec), top: B:95:0x0140 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0461  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int loadSettingsLockedForSnapshot(android.content.Context r25, int r26, com.samsung.server.wallpaper.snapshot.SnapshotManager.SnapshotRepository r27, com.samsung.server.wallpaper.snapshot.SnapshotCallback r28) {
        /*
            Method dump skipped, instructions count: 1152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.server.wallpaper.snapshot.SnapshotHelper.loadSettingsLockedForSnapshot(android.content.Context, int, com.samsung.server.wallpaper.snapshot.SnapshotManager$SnapshotRepository, com.samsung.server.wallpaper.snapshot.SnapshotCallback):int");
    }

    public static void saveSettingsLockedForSnapshot(Context context, int i, SnapshotManager.SnapshotRepository snapshotRepository, SnapshotCallback snapshotCallback) {
        String absolutePath = new File(getWallpaperDir(i), "wallpaper_backup_info.xml").getAbsolutePath();
        JournaledFile journaledFile = new JournaledFile(new File(absolutePath), new File(absolutePath + ".tmp"));
        FileOutputStream fileOutputStream = null;
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(journaledFile.chooseForWrite(), false);
            try {
                TypedXmlSerializer resolveSerializer = Xml.resolveSerializer(fileOutputStream2);
                resolveSerializer.startDocument((String) null, Boolean.TRUE);
                if (snapshotRepository != null && snapshotRepository.size() > 0) {
                    Log.d("SnapshotHelper", "saveSettingsLockedForSnapshot: Backup data size = " + snapshotRepository.size());
                    for (int size = snapshotRepository.size() + (-1); size >= 0; size--) {
                        SnapshotManager.SnapshotData byIndex = snapshotRepository.getByIndex(size);
                        if (byIndex != null) {
                            resolveSerializer.startTag((String) null, "Backup");
                            resolveSerializer.attribute((String) null, "key", Integer.toString(byIndex.getKey()));
                            resolveSerializer.attribute((String) null, "source", byIndex.getSource());
                            Iterator it = byIndex.getWhiches().iterator();
                            while (it.hasNext()) {
                                int intValue = ((Integer) it.next()).intValue();
                                WallpaperData wallpaperData = byIndex.getWallpaperData(intValue);
                                if (wallpaperData != null) {
                                    String str = WhichChecker.isSystem(intValue) ? "wp" : "kwp";
                                    if (WhichChecker.isSystem(intValue) || WhichChecker.isSupportLock(intValue)) {
                                        snapshotCallback.requestWriteWallpaperAttributes(resolveSerializer, str, wallpaperData);
                                        writeSnapshotSettingsData(resolveSerializer, str + "Settings", (HashMap) byIndex.getSettingsData(intValue), intValue);
                                    }
                                }
                            }
                            resolveSerializer.endTag((String) null, "Backup");
                        }
                    }
                }
                if (snapshotRepository.getHistoryLength() > 0) {
                    resolveSerializer.startTag((String) null, "History");
                    writeSnapshotHistory(resolveSerializer, snapshotRepository);
                    resolveSerializer.endTag((String) null, "History");
                }
                resolveSerializer.endDocument();
                fileOutputStream2.flush();
                FileUtils.sync(fileOutputStream2);
                fileOutputStream2.close();
                journaledFile.commit();
            } catch (IOException unused) {
                fileOutputStream = fileOutputStream2;
                IoUtils.closeQuietly(fileOutputStream);
                journaledFile.rollback();
            }
        } catch (IOException unused2) {
        }
    }

    public static void writeSnapshotSettingsData(XmlSerializer xmlSerializer, String str, HashMap hashMap, int i) {
        if (hashMap == null) {
            return;
        }
        xmlSerializer.startTag(null, str);
        xmlSerializer.attribute(null, "which", Integer.toString(i));
        for (String str2 : hashMap.keySet()) {
            xmlSerializer.attribute(null, str2, Integer.toString(((Integer) hashMap.get(str2)).intValue()));
        }
        xmlSerializer.endTag(null, str);
    }

    public static void parseSnapshotHistory(TypedXmlPullParser typedXmlPullParser, SnapshotManager.SnapshotRepository snapshotRepository) {
        int attributeInt = typedXmlPullParser.getAttributeInt((String) null, "hisotory_count", 0);
        for (int i = 0; i < attributeInt; i++) {
            if (attributeInt > 0) {
                int attributeInt2 = typedXmlPullParser.getAttributeInt((String) null, "type" + i, 0);
                int attributeInt3 = typedXmlPullParser.getAttributeInt((String) null, "key" + i, 0);
                String attributeValue = typedXmlPullParser.getAttributeValue((String) null, "time" + i);
                String attributeValue2 = typedXmlPullParser.getAttributeValue((String) null, "desc" + i);
                if (TextUtils.isEmpty(attributeValue2)) {
                    int attributeInt4 = typedXmlPullParser.getAttributeInt((String) null, "resultCount" + i, 0);
                    if (attributeInt4 > 0) {
                        HashMap hashMap = new HashMap();
                        for (int i2 = 0; i2 < attributeInt4; i2++) {
                            hashMap.put(Integer.valueOf(typedXmlPullParser.getAttributeInt((String) null, "which" + String.valueOf(i) + String.valueOf(i2), 0)), Integer.valueOf(typedXmlPullParser.getAttributeInt((String) null, KnoxCustomManagerService.SPCM_KEY_RESULT + String.valueOf(i) + String.valueOf(i2), 0)));
                        }
                        snapshotRepository.addHistory(new SnapshotManager.SnapshotHistory(attributeInt2, attributeInt3, attributeValue, hashMap));
                    }
                } else {
                    snapshotRepository.addHistory(new SnapshotManager.SnapshotHistory(attributeInt2, attributeInt3, attributeValue, attributeValue2));
                }
            }
        }
    }

    public static void writeSnapshotHistory(TypedXmlSerializer typedXmlSerializer, SnapshotManager.SnapshotRepository snapshotRepository) {
        int historyLength = snapshotRepository.getHistoryLength();
        typedXmlSerializer.attributeInt((String) null, "hisotory_count", snapshotRepository.getHistoryLength());
        if (historyLength > 0) {
            ArrayList arrayList = (ArrayList) snapshotRepository.getHistory();
            for (int i = 0; i < arrayList.size(); i++) {
                SnapshotManager.SnapshotHistory snapshotHistory = (SnapshotManager.SnapshotHistory) arrayList.get(i);
                if (snapshotHistory != null) {
                    typedXmlSerializer.attributeInt((String) null, "type" + i, snapshotHistory.type);
                    typedXmlSerializer.attributeInt((String) null, "key" + i, snapshotHistory.key);
                    typedXmlSerializer.attribute((String) null, "time" + i, snapshotHistory.time);
                    if (!TextUtils.isEmpty(snapshotHistory.desc)) {
                        typedXmlSerializer.attribute((String) null, "desc" + i, snapshotHistory.desc);
                    }
                    Map map = snapshotHistory.results;
                    if (map == null) {
                        typedXmlSerializer.attributeInt((String) null, "resultCount" + i, 0);
                    } else {
                        int size = map.size();
                        typedXmlSerializer.attributeInt((String) null, "resultCount" + i, size);
                        if (size > 0) {
                            int i2 = 0;
                            for (Map.Entry entry : snapshotHistory.results.entrySet()) {
                                typedXmlSerializer.attributeInt((String) null, "which" + String.valueOf(i) + String.valueOf(i2), ((Integer) entry.getKey()).intValue());
                                typedXmlSerializer.attributeInt((String) null, KnoxCustomManagerService.SPCM_KEY_RESULT + String.valueOf(i) + String.valueOf(i2), ((Integer) entry.getValue()).intValue());
                                i2++;
                            }
                        }
                    }
                }
            }
        }
    }

    public static void updateSettings(Context context, int i, Map map) {
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                int intValue = ((Integer) entry.getValue()).intValue();
                Log.d("SnapshotHelper", "updateSettings: " + str + "[" + intValue + "]");
                try {
                    if (intValue != Settings.System.getIntForUser(context.getContentResolver(), str, -1, i)) {
                        if (intValue != -1) {
                            Settings.System.putIntForUser(context.getContentResolver(), str, intValue, i);
                        } else {
                            Log.d("SnapshotHelper", "updateSettings: value is -1. Write default setting value. Need to monitor behaviours.");
                            Settings.System.putIntForUser(context.getContentResolver(), str, SettingsData.getDefaultValue(str), i);
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    public static void writeDefaultSettings(Context context, int i, int i2) {
        String[] settingNames = SettingsData.getSettingNames(i2);
        if (settingNames != null) {
            for (String str : settingNames) {
                int defaultValue = SettingsData.getDefaultValue(str);
                if (defaultValue != -1) {
                    Log.d("SnapshotHelper", "writeDefultSettings: Reset to default settings. name = " + str + ", value = " + defaultValue);
                    Settings.System.putIntForUser(context.getContentResolver(), str, defaultValue, i);
                }
            }
        }
    }

    public static void migrateFromOld(int i) {
        int[] iArr = {5, 17, 9, 6, 18, 10};
        for (int i2 = 0; i2 < 6; i2++) {
            try {
                int i3 = iArr[i2];
                File file = new File(WhichChecker.isLock(i3) ? getWallpaperLockDir(i) : getWallpaperDir(i), getBackupWallpaperDirLegacy(i3));
                if (file.exists()) {
                    File[] listFiles = file.listFiles();
                    for (int i4 = 0; i4 < listFiles.length; i4++) {
                        if (!listFiles[i4].isDirectory()) {
                            String[] split = listFiles[i4].getName().split("_");
                            File backupWallpaperFile = getBackupWallpaperFile(i, Integer.parseInt(split[0]), Integer.parseInt(split[1]));
                            Slog.d("SnapshotHelper", "migrateFromOld: from " + listFiles[i4].getPath() + ", to " + backupWallpaperFile.getPath());
                            saveFile(listFiles[i4], backupWallpaperFile);
                            deleteFile(listFiles[i4]);
                        }
                    }
                    if (!file.getPath().equals(getBackupWallpaperDir(i).getPath())) {
                        Slog.d("SnapshotHelper", "migrateFromOld: delete dir " + file);
                        deleteDirectory(file);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
    }

    /* loaded from: classes2.dex */
    public abstract class SettingsData {
        public static final String[] LOCK_SETTINGS;
        public static final String[] SUB_DISPLAY_LOCK_SETTINGS;
        public static final String[] SUB_DISPLAY_SYSTEM_SETTINGS;
        public static final String[] SYSTEM_SETTINGS;
        public static final String[] VIRTUAL_DISPLAY_SYSTEM_SETTINGS;
        public static final HashMap defaultSettings;
        public static final Map settingsData;

        static {
            String[] strArr = {"lockscreen_wallpaper", "wallpaper_tilt_status", "wallpaper_tilt_status_sub", "android.wallpaper.settings_systemui_transparency"};
            SYSTEM_SETTINGS = strArr;
            String[] strArr2 = {"lockscreen_wallpaper", "lockscreen_wallpaper_tilt_effect", "lockscreen_wallpaper_transparent"};
            LOCK_SETTINGS = strArr2;
            String[] strArr3 = {"lockscreen_wallpaper_sub", "sub_display_system_wallpaper_transparency"};
            SUB_DISPLAY_SYSTEM_SETTINGS = strArr3;
            String[] strArr4 = {"lockscreen_wallpaper_sub", "sub_display_lockscreen_wallpaper_transparency"};
            SUB_DISPLAY_LOCK_SETTINGS = strArr4;
            String[] strArr5 = {""};
            VIRTUAL_DISPLAY_SYSTEM_SETTINGS = strArr5;
            HashMap hashMap = new HashMap();
            settingsData = hashMap;
            hashMap.put(1, strArr);
            hashMap.put(5, strArr);
            hashMap.put(2, strArr2);
            hashMap.put(6, strArr2);
            hashMap.put(17, strArr3);
            hashMap.put(18, strArr4);
            hashMap.put(33, strArr5);
            defaultSettings = new HashMap() { // from class: com.samsung.server.wallpaper.snapshot.SnapshotHelper.SettingsData.1
                {
                    put("android.wallpaper.settings_systemui_transparency", 1);
                    put("lockscreen_wallpaper", 1);
                    put("lockscreen_wallpaper_transparent", 1);
                    put("sub_display_system_wallpaper_transparency", 1);
                    put("lockscreen_wallpaper_sub", 1);
                    put("sub_display_lockscreen_wallpaper_transparency", 1);
                }
            };
        }

        public static int getDefaultValue(String str) {
            HashMap hashMap = defaultSettings;
            if (hashMap.containsKey(str)) {
                return ((Integer) hashMap.get(str)).intValue();
            }
            return -1;
        }

        public static String[] getSettingNames(int i) {
            return (String[]) settingsData.get(Integer.valueOf(SnapshotHelper.checkWhich(i)));
        }
    }
}
