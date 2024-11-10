package com.android.server.enterprise.lso;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import com.android.server.display.DisplayPowerController2;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.samsung.android.knox.lockscreen.LSOAttributeSet;
import com.samsung.android.knox.lockscreen.LSOConstants;
import com.samsung.android.knox.lockscreen.LSOItemContainer;
import com.samsung.android.knox.lockscreen.LSOItemCreator;
import com.samsung.android.knox.lockscreen.LSOItemData;
import com.samsung.android.knox.lockscreen.LSOItemImage;
import com.samsung.android.knox.lockscreen.LSOItemText;
import com.samsung.android.knox.lockscreen.LSOItemWidget;
import java.security.InvalidParameterException;

/* loaded from: classes2.dex */
public class LSOStorageProvider extends EdmStorageProvider {
    public static final String[] tblColumns = {"Item_RowId", "Item_Type", "Item_Id", "Item_Width", "Item_Height", "Item_Weight", "Item_Bg_Color", "Item_Gravity", "Item_TxtColor_or_PollingInterval", "Item_Txt_or_ImgPath", "Item_TxtStyle_or_ScaleType", "Item_TxtSize", "Item_Url", "Item_Orientation", "Item_PackageName", "Item_Attributes", "Item_Layer", "Item_ParentId"};

    public LSOStorageProvider(Context context) {
        super(context);
    }

    public boolean isEmpty() {
        return getCount("LOCKSCREEN_OVERLAY") == 0;
    }

    public int getCount(String str) {
        Cursor rawQuery = this.mEdmDbHelper.getWritableDatabase().rawQuery("SELECT COUNT(*) from " + str, null);
        if (rawQuery == null) {
            return 0;
        }
        rawQuery.moveToNext();
        int i = rawQuery.getInt(0);
        rawQuery.close();
        Log.d("LSOStorageProvider", "getCount(" + str + ") - " + i);
        return i;
    }

    public int getOverlayAdminUid() {
        return getAdminUid("LOCKSCREEN_OVERLAY");
    }

    public int getWallpaperAdminUid() {
        return getAdminUid("LOCKSCREEN_WALLPAPER");
    }

    public final int getAdminUid(String str) {
        int adminByField = getAdminByField("ADMIN_REF", "policyName", str);
        Log.d("LSOStorageProvider", str + " - Configured admin UID: " + adminByField);
        return adminByField;
    }

    public LSOAttributeSet getAdminPref() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("policyName", "LOCKSCREEN_OVERLAY");
        Cursor cursor = getCursor("ADMIN_REF", new String[]{"accountObject"}, contentValues, null);
        if (cursor == null) {
            return null;
        }
        cursor.moveToNext();
        byte[] blob = cursor.getBlob(0);
        cursor.close();
        if (blob != null) {
            return LSOAttributeSet.fromByteArray(blob);
        }
        return null;
    }

    public boolean updateAdminPref(LSOAttributeSet lSOAttributeSet) {
        ContentValues contentValues = new ContentValues();
        if (lSOAttributeSet != null) {
            contentValues.put("accountObject", lSOAttributeSet.toByteArray());
        } else {
            contentValues.put("accountObject", (byte[]) null);
        }
        return updateRecord("ADMIN_REF", contentValues, "policyName=?", new String[]{"LOCKSCREEN_OVERLAY"}) > 0;
    }

    public final void wipeLayerData(int i) {
        if (i == 0) {
            remove("LOCKSCREEN_OVERLAY");
        } else {
            deleteDataByFields("LOCKSCREEN_OVERLAY", new String[]{"Item_Layer"}, new String[]{String.valueOf(i)});
        }
        Log.d("LSOStorageProvider", "wipeLayerData() - LOCKSCREEN_OVERLAY - cleaned : " + LSOConstants.getLayerName(i));
    }

    public void resetOverlayData(int i) {
        wipeLayerData(i);
        String[] strArr = {"LOCKSCREEN_OVERLAY"};
        if (isEmpty()) {
            deleteRecord("ADMIN_REF", "policyName=?", strArr);
        }
        Log.d("LSOStorageProvider", "resetOverlayData() LOCKSCREEN_OVERLAY - resetted layer : " + LSOConstants.getLayerName(i));
    }

    public void resetWallpaperData() {
        deleteRecord("ADMIN_REF", "policyName=?", new String[]{"LOCKSCREEN_WALLPAPER"});
        Log.d("LSOStorageProvider", "resetWallpaperData() LOCKSCREEN_WALLPAPER - resetted");
    }

    public boolean setOverlayData(long j, LSOItemData lSOItemData, int i, LSOAttributeSet lSOAttributeSet) {
        if (lSOItemData == null || j == -1) {
            throw new InvalidParameterException("Parameter cannot be null");
        }
        int overlayAdminUid = getOverlayAdminUid();
        wipeLayerData(i);
        boolean overlayData = setOverlayData(lSOItemData, i, 0L);
        if (!overlayData) {
            resetOverlayData(0);
        } else if (overlayAdminUid != j) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("policyName", "LOCKSCREEN_OVERLAY");
            contentValues.put("adminUid", Long.valueOf(j));
            if (lSOAttributeSet != null) {
                contentValues.put("accountObject", lSOAttributeSet.toByteArray());
            }
            overlayData = -1 != insertRecord("ADMIN_REF", contentValues);
            if (!overlayData) {
                resetOverlayData(0);
            }
        }
        return overlayData;
    }

    public boolean setWallpaperData(long j, String str) {
        if (str == null || j == -1) {
            throw new InvalidParameterException("Parameter cannot be null");
        }
        resetWallpaperData();
        ContentValues contentValues = new ContentValues();
        contentValues.put("policyName", "LOCKSCREEN_WALLPAPER");
        contentValues.put("adminUid", Long.valueOf(j));
        boolean z = -1 != insertRecord("ADMIN_REF", contentValues);
        if (!z) {
            resetWallpaperData();
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0090, code lost:
    
        if (r5 == null) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        r5.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0070, code lost:
    
        if (r5 == null) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.samsung.android.knox.lockscreen.LSOItemData getOverlay(int r5) {
        /*
            r4 = this;
            java.lang.String r0 = "LSOStorageProvider"
            android.content.ContentValues r1 = new android.content.ContentValues
            r1.<init>()
            r2 = 0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.String r3 = "Item_ParentId"
            r1.put(r3, r2)
            java.lang.String r2 = "Item_Layer"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
            r1.put(r2, r5)
            r5 = 0
            java.lang.String r2 = "LOCKSCREEN_OVERLAY"
            java.lang.String[] r3 = com.android.server.enterprise.lso.LSOStorageProvider.tblColumns     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a android.database.SQLException -> L76
            android.database.Cursor r1 = r4.getCursor(r2, r3, r1, r5)     // Catch: java.lang.Throwable -> L68 java.lang.Exception -> L6a android.database.SQLException -> L76
            java.lang.String r2 = "No record found in LOCKSCREEN_OVERLAY"
            if (r1 != 0) goto L30
            android.util.Log.d(r0, r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            if (r1 == 0) goto L2f
            r1.close()
        L2f:
            return r5
        L30:
            int r3 = r1.getCount()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            if (r3 != 0) goto L3d
            android.util.Log.d(r0, r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            r1.close()
            return r5
        L3d:
            r1.moveToNext()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            r2 = 1
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            byte r2 = (byte) r2     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            com.samsung.android.knox.lockscreen.LSOItemData r2 = com.samsung.android.knox.lockscreen.LSOItemCreator.createItem(r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L61 android.database.SQLException -> L64
            if (r2 != 0) goto L55
            java.lang.String r4 = "Invalid Item type"
            android.util.Log.e(r0, r4)     // Catch: android.database.SQLException -> L5c java.lang.Throwable -> L5e java.lang.Exception -> L62
            r1.close()
            return r5
        L55:
            r4.loadItemData(r2, r1)     // Catch: android.database.SQLException -> L5c java.lang.Throwable -> L5e java.lang.Exception -> L62
            r1.close()
            goto L93
        L5c:
            r4 = move-exception
            goto L66
        L5e:
            r4 = move-exception
            r5 = r1
            goto L94
        L61:
            r2 = r5
        L62:
            r5 = r1
            goto L6b
        L64:
            r4 = move-exception
            r2 = r5
        L66:
            r5 = r1
            goto L78
        L68:
            r4 = move-exception
            goto L94
        L6a:
            r2 = r5
        L6b:
            java.lang.String r4 = "getOverlay() falied "
            android.util.Log.e(r0, r4)     // Catch: java.lang.Throwable -> L68
            if (r5 == 0) goto L93
        L72:
            r5.close()
            goto L93
        L76:
            r4 = move-exception
            r2 = r5
        L78:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L68
            r1.<init>()     // Catch: java.lang.Throwable -> L68
            java.lang.String r3 = "Exception occurred accessing Enterprise db "
            r1.append(r3)     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> L68
            r1.append(r4)     // Catch: java.lang.Throwable -> L68
            java.lang.String r4 = r1.toString()     // Catch: java.lang.Throwable -> L68
            android.util.Log.e(r0, r4)     // Catch: java.lang.Throwable -> L68
            if (r5 == 0) goto L93
            goto L72
        L93:
            return r2
        L94:
            if (r5 == 0) goto L99
            r5.close()
        L99:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.lso.LSOStorageProvider.getOverlay(int):com.samsung.android.knox.lockscreen.LSOItemData");
    }

    public final void loadItemData(LSOItemData lSOItemData, Cursor cursor) {
        String string = cursor.getString(2);
        if (string != null) {
            lSOItemData.setId(string);
        }
        int i = cursor.getInt(3);
        if (i != -99) {
            lSOItemData.setWidth(i);
        }
        int i2 = cursor.getInt(4);
        if (i2 != -99) {
            lSOItemData.setHeight(i2);
        }
        float f = cursor.getFloat(5);
        if (f != DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
            lSOItemData.setWeight(f);
        }
        int i3 = cursor.getInt(6);
        if (i3 != -1) {
            lSOItemData.setBgColor(i3);
        }
        if (lSOItemData.getType() == 1) {
            Log.d("LSOStorageProvider", "LoadItemData -- " + lSOItemData.toString());
            return;
        }
        int i4 = cursor.getInt(7);
        if (i4 != -1) {
            lSOItemData.setGravity(i4);
        }
        byte[] blob = cursor.getBlob(15);
        if (blob != null) {
            lSOItemData.setAttrs(LSOAttributeSet.fromByteArray(blob));
        }
        byte type = lSOItemData.getType();
        if (type == 2) {
            loadTextData((LSOItemText) lSOItemData, cursor);
            return;
        }
        if (type == 3) {
            loadImageData((LSOItemImage) lSOItemData, cursor);
        } else if (type == 4) {
            loadContainerData((LSOItemContainer) lSOItemData, cursor);
        } else {
            if (type != 5) {
                return;
            }
            loadWidgetData((LSOItemWidget) lSOItemData, cursor);
        }
    }

    public final void loadTextData(LSOItemText lSOItemText, Cursor cursor) {
        String string = cursor.getString(9);
        if (string != null && string.length() != 0) {
            lSOItemText.setText(string);
        }
        int i = cursor.getInt(8);
        if (i != -1) {
            lSOItemText.setTextColor(i);
        }
        int i2 = cursor.getInt(10);
        if (i2 != -1) {
            lSOItemText.setTextStyle(i2);
        }
        float f = cursor.getFloat(11);
        if (f != DisplayPowerController2.RATE_FROM_DOZE_TO_ON) {
            lSOItemText.setTextSize(f);
        }
        Log.d("LSOStorageProvider", "LoadTextData -- " + lSOItemText.toString());
    }

    public final void loadImageData(LSOItemImage lSOItemImage, Cursor cursor) {
        String string = cursor.getString(9);
        if (string != null && string.length() != 0) {
            lSOItemImage.setImagePath(string);
            int i = cursor.getInt(10);
            if (i != -1) {
                lSOItemImage.setScaleType(i);
            }
            int i2 = cursor.getInt(8);
            String string2 = cursor.getString(12);
            if (string2 != null && string2.length() != 0) {
                lSOItemImage.setURL(string2, i2);
            }
        }
        Log.d("LSOStorageProvider", "LoadImageData -- " + lSOItemImage.toString());
    }

    public final void loadContainerData(LSOItemContainer lSOItemContainer, Cursor cursor) {
        String string = cursor.getString(9);
        int i = cursor.getInt(13);
        if (string != null && string.length() != 0) {
            lSOItemContainer.setBGImage(string);
        }
        if (i != 0) {
            lSOItemContainer.setOrientation(LSOItemContainer.ORIENTATION.HORIZONTAL);
        }
        Log.d("LSOStorageProvider", "LoadContainerData -- " + lSOItemContainer.toString());
        int i2 = cursor.getInt(0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("Item_ParentId", Integer.valueOf(i2));
        Cursor cursor2 = getCursor("LOCKSCREEN_OVERLAY", tblColumns, contentValues, null);
        if (cursor2 == null) {
            return;
        }
        try {
            try {
            } catch (SQLException e) {
                Log.e("LSOStorageProvider", "Exception occurred accessing Enterprise db " + e.getMessage());
            }
            if (cursor2.getCount() == 0) {
                return;
            }
            while (cursor2.moveToNext()) {
                LSOItemData createItem = LSOItemCreator.createItem((byte) cursor2.getInt(1));
                if (createItem != null) {
                    loadItemData(createItem, cursor2);
                    lSOItemContainer.addItem(createItem);
                }
            }
        } finally {
            cursor2.close();
        }
    }

    public final void loadWidgetData(LSOItemWidget lSOItemWidget, Cursor cursor) {
        String string = cursor.getString(14);
        if (string != null && string.length() != 0) {
            lSOItemWidget.setWidget(string);
        }
        Log.d("LSOStorageProvider", "LoadWidgetData -- " + lSOItemWidget.toString());
    }

    public final long insertRecord(String str, ContentValues contentValues) {
        Log.d("LSOStorageProvider", "Insert record: " + str + " -- " + contentValues.toString());
        SQLiteDatabase writableDatabase = this.mEdmDbHelper.getWritableDatabase();
        long insert = writableDatabase.insert(str, null, contentValues);
        if (insert == -1) {
            Log.e("LSOStorageProvider", str + ": Failed to insert record - " + contentValues.toString());
            writableDatabase.close();
        }
        return insert;
    }

    public final long deleteRecord(String str, String str2, String[] strArr) {
        SQLiteDatabase writableDatabase = this.mEdmDbHelper.getWritableDatabase();
        if (str2 != null) {
            Log.d("LSOStorageProvider", "Delete from " + str + " where ");
        } else {
            Log.d("LSOStorageProvider", "Delete from " + str);
        }
        return writableDatabase.delete(str, str2, strArr);
    }

    public final int updateRecord(String str, ContentValues contentValues, String str2, String[] strArr) {
        Log.d("LSOStorageProvider", "Insert/Update record: " + str);
        SQLiteDatabase writableDatabase = this.mEdmDbHelper.getWritableDatabase();
        int update = writableDatabase.update(str, contentValues, str2, strArr);
        Log.d("LSOStorageProvider", "Number of rows updated: " + update);
        if (update <= 0) {
            Log.e("LSOStorageProvider", str + ": Failed to insert record - " + contentValues.toString());
            writableDatabase.close();
        }
        return update;
    }

    public final boolean setOverlayData(LSOItemData lSOItemData, int i, long j) {
        int i2 = 0;
        if (lSOItemData == null) {
            return false;
        }
        ContentValues constructContentValues = constructContentValues(lSOItemData, i, j);
        if (constructContentValues == null) {
            Log.e("LSOStorageProvider", "Cannot construct content values");
            return false;
        }
        long insertRecord = insertRecord("LOCKSCREEN_OVERLAY", constructContentValues);
        if (insertRecord == -1) {
            return false;
        }
        boolean z = true;
        if (lSOItemData.getType() != 4) {
            return true;
        }
        LSOItemContainer lSOItemContainer = (LSOItemContainer) lSOItemData;
        while (i2 < lSOItemContainer.getNumItems() && z) {
            z = setOverlayData(lSOItemContainer.getItem(i2), i, insertRecord);
            i2++;
        }
        if (!z) {
            Log.e("LSOStorageProvider", "Failed to store LSOItemData for " + i2 + " with ParendId: " + insertRecord);
        }
        return z;
    }

    public final ContentValues constructContentValues(LSOItemData lSOItemData, int i, long j) {
        ContentValues contentValues = new ContentValues();
        byte type = lSOItemData.getType();
        String[] strArr = tblColumns;
        int i2 = 16;
        contentValues.put(strArr[16], Integer.valueOf(i));
        contentValues.put(strArr[17], Long.valueOf(j));
        int i3 = 1;
        contentValues.put(strArr[1], Byte.valueOf(type));
        int[] updatedFields = lSOItemData.getUpdatedFields();
        if (updatedFields == null || updatedFields.length == 0) {
            return contentValues;
        }
        int i4 = 0;
        boolean z = false;
        while (i4 < updatedFields.length && !z) {
            int i5 = updatedFields[i4];
            if (i5 == i3) {
                contentValues.put(tblColumns[2], lSOItemData.getId());
            } else if (i5 == 2) {
                contentValues.put(tblColumns[3], Integer.valueOf(lSOItemData.getWidth()));
            } else if (i5 == 4) {
                contentValues.put(tblColumns[4], Integer.valueOf(lSOItemData.getHeight()));
            } else if (i5 == 8) {
                contentValues.put(tblColumns[5], Float.valueOf(lSOItemData.getWeight()));
            } else if (i5 == i2) {
                contentValues.put(tblColumns[6], Integer.valueOf(lSOItemData.getBgColor()));
            } else if (i5 == 32) {
                contentValues.put(tblColumns[7], Integer.valueOf(lSOItemData.getGravity()));
            } else if (i5 == 64) {
                contentValues.put(tblColumns[15], lSOItemData.getAttrs().toByteArray());
            } else if (type == 2) {
                LSOItemText lSOItemText = (LSOItemText) lSOItemData;
                if (i5 == 128) {
                    contentValues.put(tblColumns[9], lSOItemText.getText());
                } else if (i5 == 256) {
                    contentValues.put(tblColumns[8], Integer.valueOf(lSOItemText.getTextColor()));
                } else if (i5 == 512) {
                    contentValues.put(tblColumns[11], Float.valueOf(lSOItemText.getTextSizeAsFloat()));
                } else if (i5 == 1024) {
                    contentValues.put(tblColumns[10], Integer.valueOf(lSOItemText.getTextStyle()));
                }
            } else if (type == 3) {
                LSOItemImage lSOItemImage = (LSOItemImage) lSOItemData;
                if (i5 == 128) {
                    contentValues.put(tblColumns[9], lSOItemImage.getImagePath());
                } else if (i5 == 256) {
                    String[] strArr2 = tblColumns;
                    contentValues.put(strArr2[12], lSOItemImage.getUrl());
                    contentValues.put(strArr2[8], Long.valueOf(lSOItemImage.getPollingInterval()));
                } else if (i5 == 512) {
                    contentValues.put(tblColumns[10], Integer.valueOf(lSOItemImage.getScaleTypeAsInteger()));
                }
            } else if (type == 4) {
                LSOItemContainer lSOItemContainer = (LSOItemContainer) lSOItemData;
                if (i5 == 128) {
                    contentValues.put(tblColumns[13], Integer.valueOf(lSOItemContainer.getOrientation() == LSOItemContainer.ORIENTATION.VERTICAL ? 0 : 1));
                } else if (i5 == 256) {
                    contentValues.put(tblColumns[9], lSOItemContainer.getBGImagePath());
                }
            } else if (type == 5) {
                LSOItemWidget lSOItemWidget = (LSOItemWidget) lSOItemData;
                if (i5 == 128) {
                    contentValues.put(tblColumns[14], lSOItemWidget.getWidget());
                }
            } else {
                Log.e("LSOStorageProvider", "unknown LSOItem");
                z = true;
            }
            i4++;
            i2 = 16;
            i3 = 1;
        }
        if (z) {
            return null;
        }
        return contentValues;
    }
}
