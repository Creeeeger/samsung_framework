package com.android.server.voiceinteraction;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.hardware.soundtrigger.SoundTrigger;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DatabaseHelper extends SQLiteOpenHelper implements IEnrolledModelDb {
    public DatabaseHelper(Context context) {
        super(context, "sound_model.db", (SQLiteDatabase.CursorFactory) null, 7);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE sound_model(model_uuid TEXT,vendor_uuid TEXT,keyphrase_id INTEGER,type INTEGER,data BLOB,recognition_modes INTEGER,locale TEXT,hint_text TEXT,users TEXT,model_version INTEGER,PRIMARY KEY (keyphrase_id,locale,users))");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0032, code lost:
    
        r4.add(new com.android.server.voiceinteraction.DatabaseHelper.SoundModelRecord(5, r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x003b, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x003c, code lost:
    
        android.util.Slog.e("SoundModelDBHelper", "Failed to extract V5 record", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
    
        if (r3.moveToFirst() != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    @Override // android.database.sqlite.SQLiteOpenHelper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onUpgrade(android.database.sqlite.SQLiteDatabase r8, int r9, int r10) {
        /*
            r7 = this;
            java.lang.String r10 = "DROP TABLE IF EXISTS sound_model"
            java.lang.String r0 = "SoundModelDBHelper"
            r1 = 4
            if (r9 >= r1) goto Le
            r8.execSQL(r10)
            r7.onCreate(r8)
            goto L1c
        Le:
            if (r9 != r1) goto L1c
            java.lang.String r1 = "Adding vendor UUID column"
            android.util.Slog.d(r0, r1)
            java.lang.String r1 = "ALTER TABLE sound_model ADD COLUMN vendor_uuid TEXT"
            r8.execSQL(r1)
            int r9 = r9 + 1
        L1c:
            r1 = 6
            r2 = 5
            if (r9 != r2) goto Laf
            java.lang.String r3 = "SELECT * FROM sound_model"
            r4 = 0
            android.database.Cursor r3 = r8.rawQuery(r3, r4)
            java.util.ArrayList r4 = new java.util.ArrayList
            r4.<init>()
            boolean r5 = r3.moveToFirst()     // Catch: java.lang.Throwable -> Laa
            if (r5 == 0) goto L47
        L32:
            com.android.server.voiceinteraction.DatabaseHelper$SoundModelRecord r5 = new com.android.server.voiceinteraction.DatabaseHelper$SoundModelRecord     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> Laa
            r5.<init>(r2, r3)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> Laa
            r4.add(r5)     // Catch: java.lang.Exception -> L3b java.lang.Throwable -> Laa
            goto L41
        L3b:
            r5 = move-exception
            java.lang.String r6 = "Failed to extract V5 record"
            android.util.Slog.e(r0, r6, r5)     // Catch: java.lang.Throwable -> Laa
        L41:
            boolean r5 = r3.moveToNext()     // Catch: java.lang.Throwable -> Laa
            if (r5 != 0) goto L32
        L47:
            r3.close()
            r8.execSQL(r10)
            r7.onCreate(r8)
            java.util.Iterator r7 = r4.iterator()
        L54:
            boolean r10 = r7.hasNext()
            if (r10 == 0) goto La7
            java.lang.Object r10 = r7.next()
            com.android.server.voiceinteraction.DatabaseHelper$SoundModelRecord r10 = (com.android.server.voiceinteraction.DatabaseHelper.SoundModelRecord) r10
            boolean r2 = r10.ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(r4)
            if (r2 == 0) goto L54
            long r2 = r10.writeToDatabase(r1, r8)     // Catch: java.lang.Exception -> L8f
            r5 = -1
            int r5 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
            if (r5 != 0) goto L54
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L8f
            r5.<init>()     // Catch: java.lang.Exception -> L8f
            java.lang.String r6 = "Database write failed "
            r5.append(r6)     // Catch: java.lang.Exception -> L8f
            java.lang.String r6 = r10.modelUuid     // Catch: java.lang.Exception -> L8f
            r5.append(r6)     // Catch: java.lang.Exception -> L8f
            java.lang.String r6 = ": "
            r5.append(r6)     // Catch: java.lang.Exception -> L8f
            r5.append(r2)     // Catch: java.lang.Exception -> L8f
            java.lang.String r2 = r5.toString()     // Catch: java.lang.Exception -> L8f
            android.util.Slog.e(r0, r2)     // Catch: java.lang.Exception -> L8f
            goto L54
        L8f:
            r2 = move-exception
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.String r5 = "Failed to update V6 record "
            r3.append(r5)
            java.lang.String r10 = r10.modelUuid
            r3.append(r10)
            java.lang.String r10 = r3.toString()
            android.util.Slog.e(r0, r10, r2)
            goto L54
        La7:
            int r9 = r9 + 1
            goto Laf
        Laa:
            r7 = move-exception
            r3.close()
            throw r7
        Laf:
            if (r9 != r1) goto Lbb
            java.lang.String r7 = "Adding model version column"
            android.util.Slog.d(r0, r7)
            java.lang.String r7 = "ALTER TABLE sound_model ADD COLUMN model_version INTEGER DEFAULT -1"
            r8.execSQL(r7)
        Lbb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.voiceinteraction.DatabaseHelper.onUpgrade(android.database.sqlite.SQLiteDatabase, int, int):void");
    }

    @Override // com.android.server.voiceinteraction.IEnrolledModelDb
    public boolean updateKeyphraseSoundModel(SoundTrigger.KeyphraseSoundModel keyphraseSoundModel) {
        synchronized (this) {
            SQLiteDatabase writableDatabase = getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("model_uuid", keyphraseSoundModel.getUuid().toString());
            if (keyphraseSoundModel.getVendorUuid() != null) {
                contentValues.put("vendor_uuid", keyphraseSoundModel.getVendorUuid().toString());
            }
            contentValues.put("type", (Integer) 0);
            contentValues.put("data", keyphraseSoundModel.getData());
            contentValues.put("model_version", Integer.valueOf(keyphraseSoundModel.getVersion()));
            if (keyphraseSoundModel.getKeyphrases() == null || keyphraseSoundModel.getKeyphrases().length != 1) {
                return false;
            }
            contentValues.put("keyphrase_id", Integer.valueOf(keyphraseSoundModel.getKeyphrases()[0].getId()));
            contentValues.put("recognition_modes", Integer.valueOf(keyphraseSoundModel.getKeyphrases()[0].getRecognitionModes()));
            contentValues.put("users", getCommaSeparatedString(keyphraseSoundModel.getKeyphrases()[0].getUsers()));
            contentValues.put("locale", keyphraseSoundModel.getKeyphrases()[0].getLocale().toLanguageTag());
            contentValues.put("hint_text", keyphraseSoundModel.getKeyphrases()[0].getText());
            try {
                return writableDatabase.insertWithOnConflict("sound_model", null, contentValues, 5) != -1;
            } finally {
                writableDatabase.close();
            }
        }
    }

    @Override // com.android.server.voiceinteraction.IEnrolledModelDb
    public boolean deleteKeyphraseSoundModel(int i, int i2, String str) {
        String languageTag = Locale.forLanguageTag(str).toLanguageTag();
        synchronized (this) {
            SoundTrigger.KeyphraseSoundModel keyphraseSoundModel = getKeyphraseSoundModel(i, i2, languageTag);
            if (keyphraseSoundModel == null) {
                return false;
            }
            SQLiteDatabase writableDatabase = getWritableDatabase();
            StringBuilder sb = new StringBuilder();
            sb.append("model_uuid='");
            sb.append(keyphraseSoundModel.getUuid().toString());
            sb.append("'");
            try {
                return writableDatabase.delete("sound_model", sb.toString(), null) != 0;
            } finally {
                writableDatabase.close();
            }
        }
    }

    @Override // com.android.server.voiceinteraction.IEnrolledModelDb
    public SoundTrigger.KeyphraseSoundModel getKeyphraseSoundModel(int i, int i2, String str) {
        SoundTrigger.KeyphraseSoundModel validKeyphraseSoundModelForUser;
        String languageTag = Locale.forLanguageTag(str).toLanguageTag();
        synchronized (this) {
            validKeyphraseSoundModelForUser = getValidKeyphraseSoundModelForUser("SELECT  * FROM sound_model WHERE keyphrase_id= '" + i + "' AND locale='" + languageTag + "'", i2);
        }
        return validKeyphraseSoundModelForUser;
    }

    @Override // com.android.server.voiceinteraction.IEnrolledModelDb
    public SoundTrigger.KeyphraseSoundModel getKeyphraseSoundModel(String str, int i, String str2) {
        SoundTrigger.KeyphraseSoundModel validKeyphraseSoundModelForUser;
        String languageTag = Locale.forLanguageTag(str2).toLanguageTag();
        synchronized (this) {
            validKeyphraseSoundModelForUser = getValidKeyphraseSoundModelForUser("SELECT  * FROM sound_model WHERE hint_text= '" + str + "' AND locale='" + languageTag + "'", i);
        }
        return validKeyphraseSoundModelForUser;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c1, code lost:
    
        r13 = new android.hardware.soundtrigger.SoundTrigger.Keyphrase[]{new android.hardware.soundtrigger.SoundTrigger.Keyphrase(r8, r9, r10, r11, r12)};
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00cc, code lost:
    
        if (r5 == null) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
    
        r11 = java.util.UUID.fromString(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00e6, code lost:
    
        return new android.hardware.soundtrigger.SoundTrigger.KeyphraseSoundModel(java.util.UUID.fromString(r3), r11, r6, r13, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d4, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x00be A[LOOP:0: B:5:0x0011->B:10:0x00be, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00bd A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.hardware.soundtrigger.SoundTrigger.KeyphraseSoundModel getValidKeyphraseSoundModelForUser(java.lang.String r17, int r18) {
        /*
            Method dump skipped, instructions count: 247
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.voiceinteraction.DatabaseHelper.getValidKeyphraseSoundModelForUser(java.lang.String, int):android.hardware.soundtrigger.SoundTrigger$KeyphraseSoundModel");
    }

    public static String getCommaSeparatedString(int[] iArr) {
        if (iArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < iArr.length; i++) {
            if (i != 0) {
                sb.append(',');
            }
            sb.append(iArr[i]);
        }
        return sb.toString();
    }

    public static int[] getArrayForCommaSeparatedString(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split(",");
        int[] iArr = new int[split.length];
        for (int i = 0; i < split.length; i++) {
            iArr[i] = Integer.parseInt(split[i]);
        }
        return iArr;
    }

    /* loaded from: classes3.dex */
    public class SoundModelRecord {
        public final byte[] data;
        public final String hintText;
        public final int keyphraseId;
        public final String locale;
        public final String modelUuid;
        public final int recognitionModes;
        public final int type;
        public final String users;
        public final String vendorUuid;

        public SoundModelRecord(int i, Cursor cursor) {
            this.modelUuid = cursor.getString(cursor.getColumnIndex("model_uuid"));
            if (i >= 5) {
                this.vendorUuid = cursor.getString(cursor.getColumnIndex("vendor_uuid"));
            } else {
                this.vendorUuid = null;
            }
            this.keyphraseId = cursor.getInt(cursor.getColumnIndex("keyphrase_id"));
            this.type = cursor.getInt(cursor.getColumnIndex("type"));
            this.data = cursor.getBlob(cursor.getColumnIndex("data"));
            this.recognitionModes = cursor.getInt(cursor.getColumnIndex("recognition_modes"));
            this.locale = cursor.getString(cursor.getColumnIndex("locale"));
            this.hintText = cursor.getString(cursor.getColumnIndex("hint_text"));
            this.users = cursor.getString(cursor.getColumnIndex("users"));
        }

        public final boolean V6PrimaryKeyMatches(SoundModelRecord soundModelRecord) {
            return this.keyphraseId == soundModelRecord.keyphraseId && stringComparisonHelper(this.locale, soundModelRecord.locale) && stringComparisonHelper(this.users, soundModelRecord.users);
        }

        public boolean ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(List list) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                SoundModelRecord soundModelRecord = (SoundModelRecord) it.next();
                if (this != soundModelRecord && V6PrimaryKeyMatches(soundModelRecord) && !Arrays.equals(this.data, soundModelRecord.data)) {
                    return false;
                }
            }
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                SoundModelRecord soundModelRecord2 = (SoundModelRecord) it2.next();
                if (V6PrimaryKeyMatches(soundModelRecord2)) {
                    return this == soundModelRecord2;
                }
            }
            return true;
        }

        public long writeToDatabase(int i, SQLiteDatabase sQLiteDatabase) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("model_uuid", this.modelUuid);
            if (i >= 5) {
                contentValues.put("vendor_uuid", this.vendorUuid);
            }
            contentValues.put("keyphrase_id", Integer.valueOf(this.keyphraseId));
            contentValues.put("type", Integer.valueOf(this.type));
            contentValues.put("data", this.data);
            contentValues.put("recognition_modes", Integer.valueOf(this.recognitionModes));
            contentValues.put("locale", this.locale);
            contentValues.put("hint_text", this.hintText);
            contentValues.put("users", this.users);
            return sQLiteDatabase.insertWithOnConflict("sound_model", null, contentValues, 5);
        }

        public static boolean stringComparisonHelper(String str, String str2) {
            if (str != null) {
                return str.equals(str2);
            }
            return str == str2;
        }
    }

    @Override // com.android.server.voiceinteraction.IEnrolledModelDb
    public void dump(PrintWriter printWriter) {
        synchronized (this) {
            SQLiteDatabase readableDatabase = getReadableDatabase();
            Cursor rawQuery = readableDatabase.rawQuery("SELECT  * FROM sound_model", null);
            try {
                printWriter.println("  Enrolled KeyphraseSoundModels:");
                if (rawQuery.moveToFirst()) {
                    String[] columnNames = rawQuery.getColumnNames();
                    do {
                        for (String str : columnNames) {
                            int columnIndex = rawQuery.getColumnIndex(str);
                            int type = rawQuery.getType(columnIndex);
                            if (type == 0) {
                                printWriter.printf("    %s: null\n", str);
                            } else if (type == 1) {
                                printWriter.printf("    %s: %d\n", str, Integer.valueOf(rawQuery.getInt(columnIndex)));
                            } else if (type == 2) {
                                printWriter.printf("    %s: %f\n", str, Float.valueOf(rawQuery.getFloat(columnIndex)));
                            } else if (type == 3) {
                                printWriter.printf("    %s: %s\n", str, rawQuery.getString(columnIndex));
                            } else if (type == 4) {
                                printWriter.printf("    %s: data blob\n", str);
                            }
                        }
                        printWriter.println();
                    } while (rawQuery.moveToNext());
                }
            } finally {
                rawQuery.close();
                readableDatabase.close();
            }
        }
    }
}
