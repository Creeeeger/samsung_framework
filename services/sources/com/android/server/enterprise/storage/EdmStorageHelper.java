package com.android.server.enterprise.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemProperties;
import android.util.Log;
import com.android.server.enterprise.vpn.knoxvpn.KnoxVpnFirewallHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class EdmStorageHelper extends SQLiteOpenHelper {
    public static EdmStorageHelper mInstance;
    public Context mContext;

    public static void preTableCreate(SQLiteDatabase sQLiteDatabase, Table table) {
    }

    public static synchronized EdmStorageHelper getInstance(Context context) {
        EdmStorageHelper edmStorageHelper;
        synchronized (EdmStorageHelper.class) {
            if (mInstance == null) {
                mInstance = new EdmStorageHelper(context);
            }
            edmStorageHelper = mInstance;
        }
        return edmStorageHelper;
    }

    public EdmStorageHelper(Context context) {
        super(context, "enterprise.db", (SQLiteDatabase.CursorFactory) null, 9);
        this.mContext = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        try {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        } catch (Exception e) {
            Log.w("EdmStorageHelper", "Foreign Key Config failed", e);
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        doTablesCreationOrUpdate(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Log.w("EdmStorageHelper", "Downgrading not supported");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i2 == 8) {
            updateProfilePoicyTable(sQLiteDatabase);
        }
        if (i2 == 9) {
            updateDomainFilterTable(sQLiteDatabase);
        }
    }

    public final void updateProfilePoicyTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("alter table ProfilePolicyPORestrictions rename to ProfilePolicyPORestrictions_tmp");
            sQLiteDatabase.execSQL("CREATE TABLE ProfilePolicyPORestrictions (adminUid INTEGER, ProfilePolicyPORestrictionsValue NUMERIC DEFAULT 1, ProfilePolicyPORestrictionsProperty TEXT, PRIMARY KEY (adminUid, ProfilePolicyPORestrictionsProperty) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)");
            StringBuilder sb = new StringBuilder();
            sb.append("insert into ");
            sb.append("ProfilePolicyPORestrictions");
            sb.append(" select * from ");
            sb.append("ProfilePolicyPORestrictions");
            sb.append("_tmp");
            sQLiteDatabase.execSQL(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("drop table ");
            sb2.append("ProfilePolicyPORestrictions");
            sb2.append("_tmp");
            sQLiteDatabase.execSQL(sb2.toString());
            Log.d("EdmStorageHelper", "ProfilePolicy table is migrated");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void updateDomainFilterTable(SQLiteDatabase sQLiteDatabase) {
        if (createDomainFilterListTable(sQLiteDatabase)) {
            Log.i("EdmStorageHelper", "DomainFilterListTable is created");
            if (insertDomainFilterData(sQLiteDatabase)) {
                Log.i("EdmStorageHelper", "DomainFilterListTable is updated");
                if (alterDomainFilterTable(sQLiteDatabase)) {
                    Log.i("EdmStorageHelper", "DomainFilterTable is migrated");
                }
            }
        }
    }

    public final boolean createDomainFilterListTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TABLE DomainFilterListTable (adminUid INTEGER, packageName TEXT,domain TEXT,typeList TEXT, PRIMARY KEY (adminUid, packageName, domain) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)");
            return true;
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "createDomainFilterListTable() - failed");
            e.printStackTrace();
            return false;
        }
    }

    public final boolean alterDomainFilterTable(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("ALTER TABLE DomainFilterTable rename to DomainFilterTable_tmp");
            sQLiteDatabase.execSQL("CREATE TABLE DomainFilterTable (adminUid INTEGER, packageName TEXT, signature TEXT, dns1 TEXT, dns2 TEXT, networkId INT, PRIMARY KEY (adminUid, packageName) FOREIGN KEY (adminUid) REFERENCES ADMIN(adminUid) ON DELETE CASCADE ON UPDATE CASCADE)");
            sQLiteDatabase.execSQL("INSERT INTO DomainFilterTable SELECT adminUid, packageName, signature, dns1, dns2, networkId from DomainFilterTable_tmp");
            sQLiteDatabase.execSQL("DROP TABLE DomainFilterTable_tmp");
            return true;
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "alterDomainFilterTable() - failed");
            e.printStackTrace();
            return false;
        }
    }

    public final boolean insertDomainListData(SQLiteDatabase sQLiteDatabase, int i, String str, List list, String str2) {
        if (list == null) {
            return true;
        }
        try {
            if (list.isEmpty()) {
                return true;
            }
            Iterator it = list.iterator();
            while (it.hasNext()) {
                String str3 = (String) it.next();
                ContentValues contentValues = new ContentValues();
                contentValues.put("adminUid", Integer.valueOf(i));
                contentValues.put("packageName", str);
                contentValues.put("domain", str3);
                contentValues.put("typeList", str2);
                sQLiteDatabase.insert("DomainFilterListTable", null, contentValues);
            }
            return true;
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "insertDomainListData() - failed");
            e.printStackTrace();
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean insertDomainFilterData(android.database.sqlite.SQLiteDatabase r15) {
        /*
            r14 = this;
            r0 = 0
            r1 = 0
            r2 = 1
            java.lang.String r3 = "SELECT adminUid, packageName, blacklist, whitelist FROM DomainFilterTable"
            android.database.Cursor r1 = r15.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            r3 = r2
        La:
            boolean r4 = r1.moveToNext()     // Catch: java.lang.Throwable -> L80 java.lang.Exception -> L84
            if (r4 == 0) goto L7c
            java.lang.String r3 = "adminUid"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            int r3 = r1.getInt(r3)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r4 = "packageName"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r10 = r1.getString(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r4 = "blacklist"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r4 = r1.getString(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r5 = "whitelist"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r11 = r1.getString(r5)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r12 = ";"
            if (r5 != 0) goto L58
            java.lang.String[] r4 = r4.split(r12)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.util.List r8 = java.util.Arrays.asList(r4)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            java.lang.String r9 = "blacklist"
            r4 = r14
            r5 = r15
            r6 = r3
            r7 = r10
            boolean r4 = r4.insertDomainListData(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L82 java.lang.Exception -> L84
            if (r4 != 0) goto L58
            r13 = r0
            goto L59
        L58:
            r13 = r2
        L59:
            boolean r4 = android.text.TextUtils.isEmpty(r11)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L84
            if (r4 != 0) goto L78
            if (r13 == 0) goto L78
            java.lang.String[] r4 = r11.split(r12)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L84
            java.util.List r8 = java.util.Arrays.asList(r4)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L84
            java.lang.String r9 = "whitelist"
            r4 = r14
            r5 = r15
            r6 = r3
            r7 = r10
            boolean r3 = r4.insertDomainListData(r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L7a java.lang.Exception -> L84
            if (r3 != 0) goto L78
            r3 = r0
            goto La
        L78:
            r3 = r13
            goto La
        L7a:
            r0 = r13
            goto L95
        L7c:
            r1.close()
            return r3
        L80:
            r0 = r3
            goto L95
        L82:
            r0 = r2
            goto L95
        L84:
            r14 = move-exception
            java.lang.String r15 = "EdmStorageHelper"
            java.lang.String r2 = "insertDomainFilterData() - failed"
            android.util.Log.e(r15, r2)     // Catch: java.lang.Throwable -> L95
            r14.printStackTrace()     // Catch: java.lang.Throwable -> L95
            if (r1 == 0) goto L94
            r1.close()
        L94:
            return r0
        L95:
            if (r1 == 0) goto L9a
            r1.close()
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.storage.EdmStorageHelper.insertDomainFilterData(android.database.sqlite.SQLiteDatabase):boolean");
    }

    public static void createTable(SQLiteDatabase sQLiteDatabase, Table table) {
        String str;
        String str2;
        String format = String.format("CREATE TABLE %s (%s", table.mTableName, table.buildTableColumns());
        String buildPrimaryKeys = table.buildPrimaryKeys();
        if (buildPrimaryKeys != null) {
            format = String.format("%s, PRIMARY KEY (%s)", format, buildPrimaryKeys);
        }
        String str3 = table.mForeignReferTable;
        if (str3 != null && (str = table.mForeignReferKey) != null && (str2 = table.mForeignKeyName) != null) {
            format = String.format("%s FOREIGN KEY (%s) REFERENCES %s(%s) ON DELETE CASCADE ON UPDATE CASCADE", format, str2, str3, str);
        }
        sQLiteDatabase.execSQL(format + ");");
        Log.d("EdmStorageHelper", String.format("onTableFound Created Table %s with Columns %d", table.mTableName, Integer.valueOf(table.mColumns.size())));
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0043, code lost:
    
        if (r0 == null) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0038, code lost:
    
        if (r0 != null) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0048, code lost:
    
        android.util.Log.d("EdmStorageHelper", "doTableCreationOrUpdate Done + " + java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0060, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0045, code lost:
    
        r0.close();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void doTablesCreationOrUpdate(final android.database.sqlite.SQLiteDatabase r5) {
        /*
            r4 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = "doTableCreationOrUpdate Starting + "
            r0.append(r1)
            long r1 = java.lang.System.currentTimeMillis()
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            java.lang.String r1 = "EdmStorageHelper"
            android.util.Log.d(r1, r0)
            r0 = 0
            android.content.Context r2 = r4.mContext     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            android.content.res.Resources r2 = r2.getResources()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r3 = 18284557(0x117000d, float:2.7734356E-38)
            android.content.res.XmlResourceParser r0 = r2.getXml(r3)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            com.android.server.enterprise.storage.EdmStorageHelper$1 r2 = new com.android.server.enterprise.storage.EdmStorageHelper$1     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r2.<init>()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            com.android.server.enterprise.storage.EnterpriseXmlParser r3 = new com.android.server.enterprise.storage.EnterpriseXmlParser     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r3.<init>(r0, r2)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r3.parseXML()     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            r4.doCreationOrUpdatePostCommands(r5)     // Catch: java.lang.Throwable -> L3b java.lang.Exception -> L3d
            if (r0 == 0) goto L48
            goto L45
        L3b:
            r4 = move-exception
            goto L61
        L3d:
            r4 = move-exception
            java.lang.String r5 = "doTableCreationOrUpdate EX:"
            android.util.Log.w(r1, r5, r4)     // Catch: java.lang.Throwable -> L3b
            if (r0 == 0) goto L48
        L45:
            r0.close()
        L48:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>()
            java.lang.String r5 = "doTableCreationOrUpdate Done + "
            r4.append(r5)
            long r2 = java.lang.System.currentTimeMillis()
            r4.append(r2)
            java.lang.String r4 = r4.toString()
            android.util.Log.d(r1, r4)
            return
        L61:
            if (r0 == 0) goto L66
            r0.close()
        L66:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.storage.EdmStorageHelper.doTablesCreationOrUpdate(android.database.sqlite.SQLiteDatabase):void");
    }

    public void doCreationOrUpdatePostCommands(SQLiteDatabase sQLiteDatabase) {
        Cursor query;
        try {
            sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS webFilterLoggingPolicy_TbSize  AFTER INSERT  ON WebFilterLogTable WHEN (SELECT COUNT(*) FROM WebFilterLogTable) > 1000  BEGIN  DELETE FROM WebFilterLogTable WHERE id = (SELECT id FROM WebFilterLogTable ORDER BY id LIMIT 1); END;  END;");
        } catch (Exception e) {
            Log.d("EdmStorageHelper", "doCreationOrUpdatePostCommands EX1:", e);
        }
        try {
            sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS bluetoothLoggingPolicy_TbSize  AFTER INSERT  ON BluetoothLogTable WHEN (SELECT COUNT(*) FROM BluetoothLogTable) > 1000  BEGIN  DELETE FROM BluetoothLogTable WHERE id = (SELECT id FROM BluetoothLogTable ORDER BY id LIMIT 1); END;  END;");
        } catch (Exception e2) {
            Log.d("EdmStorageHelper", "doCreationOrUpdatePostCommands EX2:", e2);
        }
        try {
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (1, 'SpaceView');");
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (2, 'TextView');");
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (3, 'ImageView');");
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (4, 'ContainerView');");
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOItemTypes(Item_Type, Item_Description) VALUES (5, 'CustomWidget');");
        } catch (Exception unused) {
        }
        try {
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (0, 'VERTICAL');");
            sQLiteDatabase.execSQL("INSERT INTO EnumLSOOrientation(Id, Description ) VALUES (1, 'HORIZONTAL');");
        } catch (Exception unused2) {
        }
        Cursor cursor = null;
        try {
            String str = SystemProperties.get("ro.build.fingerprint", "unknown");
            if (str.equalsIgnoreCase("unknown")) {
                str = null;
            }
            sQLiteDatabase.execSQL(String.format("INSERT INTO generic VALUES ('PlatformSoftwareVersion', '%s', %d);", str, 0));
        } catch (Exception unused3) {
        }
        try {
            if (isTableExists(sQLiteDatabase, "APPLICATION_SIGNATURE")) {
                try {
                    query = sQLiteDatabase.query("APPLICATION_SIGNATURE", null, null, null, null, null, null);
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    Log.d("EdmStorageHelper", "APPLICATION_SIGNATURE Current Count : " + query.getCount());
                    while (query.moveToNext()) {
                        int i = query.getInt(query.getColumnIndex("adminUid"));
                        String string = query.getString(query.getColumnIndex("signature"));
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("signature", string);
                        contentValues.put("adminUid", Integer.valueOf(i));
                        contentValues.put("controlState", (Integer) 1);
                        sQLiteDatabase.insert("APPLICATION_SIGNATURE2", null, contentValues);
                    }
                    query.close();
                    sQLiteDatabase.execSQL("DROP TABLE APPLICATION_SIGNATURE;");
                } catch (Throwable th2) {
                    th = th2;
                    cursor = query;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
        } catch (Exception unused4) {
        }
        try {
            sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS  domainFilterReportTableCircularBuffer  AFTER INSERT  ON DomainFilterReportTable WHEN (SELECT COUNT(*) FROM DomainFilterReportTable) > 1000 BEGIN  DELETE FROM DomainFilterReportTable WHERE id = (SELECT id FROM DomainFilterReportTable ORDER BY id LIMIT 1); END;  END;");
        } catch (Exception e3) {
            Log.d("EdmStorageHelper", "doCreationOrUpdatePostCommands EX1:", e3);
        }
    }

    public static boolean isTableExists(SQLiteDatabase sQLiteDatabase, String str) {
        if (sQLiteDatabase == null || str == null) {
            return false;
        }
        String trim = str.trim();
        if (trim.length() <= 0) {
            return false;
        }
        try {
            sQLiteDatabase.execSQL("SELECT 1 FROM " + trim + " WHERE 1=0");
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static ArrayList getMissingColumns(SQLiteDatabase sQLiteDatabase, String str, Table table) {
        Cursor cursor = null;
        try {
            cursor = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 1", null);
            ArrayList missingColumns = table.getMissingColumns(Arrays.asList(cursor.getColumnNames()));
            cursor.close();
            return missingColumns;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    public static void postTableCreate(SQLiteDatabase sQLiteDatabase, Table table) {
        String str = table.mTableName;
        if (str.compareToIgnoreCase("ADMIN_INFO") == 0) {
            postAdminInfoTableCreate(sQLiteDatabase);
            return;
        }
        if (str.compareToIgnoreCase("CONTAINER") == 0) {
            postContainerTableCreate(sQLiteDatabase);
            return;
        }
        if (str.compareToIgnoreCase("ADMIN") == 0) {
            postAdminTableCreate(sQLiteDatabase);
        } else if (str.compareToIgnoreCase("KNOX_CUSTOM") == 0) {
            Log.d("EdmStorageHelper", "Calling postKnoxCustomTableCreate");
            postKnoxCustomTableCreate(sQLiteDatabase);
        }
    }

    public static boolean preTableUpdate(SQLiteDatabase sQLiteDatabase, Table table) {
        String str = table.mTableName;
        if (str.compareToIgnoreCase("ADMIN") == 0) {
            updateAdminInfoTrigger(sQLiteDatabase);
            return upgradeAdminTable(sQLiteDatabase, table);
        }
        if (str.compareToIgnoreCase("generic") == 0) {
            return addContainerIdColumn(sQLiteDatabase, table);
        }
        if (str.compareToIgnoreCase("WebFilterLogTable") == 0) {
            return addContainerIdColumn(sQLiteDatabase, table);
        }
        if (str.compareToIgnoreCase("EnterpriseIslFpTable") == 0) {
            Log.e("EdmStorageHelper", "Coming inside ISL Pretable update");
            return addISAPackageNameColumn(sQLiteDatabase, table);
        }
        if (str.compareToIgnoreCase("RCP_DATA") != 0) {
            return false;
        }
        Log.e("EdmStorageHelper", "Coming inside RCP TABLE " + str);
        return addCidColumnForRCP(sQLiteDatabase, table);
    }

    public static boolean addCidColumnForRCP(SQLiteDatabase sQLiteDatabase, Table table) {
        ContentValues tableColumns;
        sQLiteDatabase.beginTransaction();
        try {
            try {
                tableColumns = getTableColumns(sQLiteDatabase, table.mTableName);
                Log.e("EdmStorageHelper", "Content Values is" + tableColumns);
            } catch (Exception e) {
                Log.w("EdmStorageHelper", table.mTableName + "inside exception for rcp data " + e);
            }
            if (tableColumns != null && tableColumns.containsKey("cid")) {
                Log.w("EdmStorageHelper", "Generic Table is already updated. for rcp ");
                sQLiteDatabase.endTransaction();
                Log.e("EdmStorageHelper", "after end transaction");
                return false;
            }
            Log.w("EdmStorageHelper", "Upgrading " + table.mTableName + " Table");
            StringBuilder sb = new StringBuilder();
            sb.append(table.mTableName);
            sb.append("_temp");
            String sb2 = sb.toString();
            sQLiteDatabase.execSQL("CREATE TABLE " + sb2 + " AS SELECT * FROM " + table.mTableName + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("DROP TABLE ");
            sb3.append(table.mTableName);
            sQLiteDatabase.execSQL(sb3.toString());
            createTable(sQLiteDatabase, table);
            sQLiteDatabase.execSQL("INSERT INTO " + table.mTableName + "( adminUid,name,propertyName,propertyValue)  SELECT * FROM " + sb2 + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("DROP TABLE ");
            sb4.append(sb2);
            sQLiteDatabase.execSQL(sb4.toString());
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            Log.e("EdmStorageHelper", "after end transaction");
            return true;
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            Log.e("EdmStorageHelper", "after end transaction");
            throw th;
        }
    }

    public static void postAdminInfoTableCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("INSERT INTO ADMIN_INFO VALUES (0, 'SYSTEM-LEVEL-ADMIN', 0, 0);");
            sQLiteDatabase.execSQL("INSERT INTO ADMIN_INFO VALUES (1000, 'KNOX-CUSTOM', 0, 0);");
            if (isTableExists(sQLiteDatabase, "ADMIN")) {
                sQLiteDatabase.execSQL("INSERT INTO ADMIN_INFO(adminUid,adminName,canRemove) SELECT * from ADMIN WHERE adminUid!=1000" + KnoxVpnFirewallHelper.DELIMITER);
                Log.d("EdmStorageHelper", "In postAdminInfoTableCreate - Start adding KnoxCustomManagerService.DB_UID to ADMIN table...");
                sQLiteDatabase.execSQL("INSERT INTO ADMIN VALUES (1000,1000,0);");
                Log.d("EdmStorageHelper", "In postAdminInfoTableCreate - Finished adding KnoxCustomManagerService.DB_UID to ADMIN table");
            }
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "ADMIN_INFO postAdminInfoTableCreate failed  EX: " + e);
        }
    }

    public static void postContainerTableCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("INSERT INTO CONTAINER(containerID,adminUid) VALUES (0,0);");
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "CONTAINER postContainerTableCreate failed  EX: " + e);
        }
    }

    public static void postAdminTableCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;");
            if (getCount(sQLiteDatabase, "ADMIN_INFO", "adminUid!=0") > 0) {
                sQLiteDatabase.execSQL("INSERT INTO ADMIN SELECT adminUid,adminUid,0,adminUid/100000 FROM ADMIN_INFO WHERE adminUid!=0" + KnoxVpnFirewallHelper.DELIMITER);
            }
            sQLiteDatabase.execSQL("CREATE TRIGGER ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;");
            try {
                Log.d("EdmStorageHelper", "Start adding KnoxCustomManagerService.DB_UID to ADMIN table...");
                sQLiteDatabase.execSQL("INSERT INTO ADMIN VALUES (1000,1000,0);");
                Log.d("EdmStorageHelper", "Finished adding KnoxCustomManagerService.DB_UID to ADMIN table");
            } catch (Exception unused) {
                Log.d("EdmStorageHelper", "KnoxCustomManagerService.DB_UID already exists in ADMIN table");
            }
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "ADMIN_INFO postAdminTableCreate failed  EX: " + e);
        }
    }

    public static void postKnoxCustomTableCreate(SQLiteDatabase sQLiteDatabase) {
        Log.d("EdmStorageHelper", "postKnoxCustomTableCreate()");
        try {
            Log.d("EdmStorageHelper", "Initialise KNOX_CUSTOM table...");
            sQLiteDatabase.execSQL("INSERT INTO KNOX_CUSTOM (adminUid) VALUES (1000);");
            Log.d("EdmStorageHelper", "Finished initialising KNOX_CUSTOM table");
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "ADMIN_INFO postKnoxCustomTableCreate failed  EX: " + e);
        }
    }

    public static void updateAdminInfoTrigger(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("DROP TRIGGER ADMIN_INFO_ONINSERT");
            sQLiteDatabase.execSQL("CREATE TRIGGER ADMIN_INFO_ONINSERT  AFTER INSERT  ON ADMIN_INFO BEGIN INSERT INTO ADMIN VALUES (NEW.adminUid,NEW.adminUid,0, NEW.adminUid/100000); END;");
            sQLiteDatabase.execSQL("CREATE TRIGGER IF NOT EXISTS ADMIN_INFO_ONUPDATE  UPDATE  OF adminUid ON ADMIN_INFO BEGIN UPDATE ADMIN SET adminUid = NEW.adminUid WHERE adminUid = OLD.adminUid; END;");
        } catch (Exception e) {
            Log.e("EdmStorageHelper", "ADMIN_INFOUpdate of ADMIN_INFO_ONINSERT trigger has failed : " + e);
        }
    }

    public static boolean upgradeAdminTable(SQLiteDatabase sQLiteDatabase, Table table) {
        ContentValues tableColumns;
        try {
            try {
                tableColumns = getTableColumns(sQLiteDatabase, "ADMIN");
            } catch (Exception e) {
                Log.e("EdmStorageHelper", "ADMIN upgrade failed  EX: " + e);
            }
            if (tableColumns != null && tableColumns.containsKey("containerID")) {
                Log.w("EdmStorageHelper", "Admin Table is already updated.");
                return false;
            }
            sQLiteDatabase.setForeignKeyConstraintsEnabled(false);
            sQLiteDatabase.execSQL("DROP TABLE ADMIN");
            createTable(sQLiteDatabase, table);
            postAdminTableCreate(sQLiteDatabase);
            return true;
        } finally {
            sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
        }
    }

    public static boolean addContainerIdColumn(SQLiteDatabase sQLiteDatabase, Table table) {
        ContentValues tableColumns;
        sQLiteDatabase.beginTransaction();
        try {
            try {
                tableColumns = getTableColumns(sQLiteDatabase, table.mTableName);
            } catch (Exception e) {
                Log.w("EdmStorageHelper", table.mTableName + " upgrade EX: " + e);
            }
            if (tableColumns != null && tableColumns.containsKey("containerID")) {
                Log.w("EdmStorageHelper", "Generic Table is already updated.");
                return false;
            }
            Log.w("EdmStorageHelper", "Upgrading " + table.mTableName + " Table");
            StringBuilder sb = new StringBuilder();
            sb.append(table.mTableName);
            sb.append("_temp");
            String sb2 = sb.toString();
            sQLiteDatabase.execSQL("CREATE TABLE " + sb2 + " AS SELECT * FROM " + table.mTableName + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("DROP TABLE ");
            sb3.append(table.mTableName);
            sQLiteDatabase.execSQL(sb3.toString());
            createTable(sQLiteDatabase, table);
            sQLiteDatabase.execSQL("INSERT INTO " + table.mTableName + " SELECT *,0,0 from " + sb2 + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("DROP TABLE ");
            sb4.append(sb2);
            sQLiteDatabase.execSQL(sb4.toString());
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            return true;
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public static boolean addISAPackageNameColumn(SQLiteDatabase sQLiteDatabase, Table table) {
        ContentValues tableColumns;
        sQLiteDatabase.beginTransaction();
        try {
            try {
                tableColumns = getTableColumns(sQLiteDatabase, table.mTableName);
            } catch (Exception e) {
                Log.e("EdmStorageHelper", table.mTableName + " upgrade ISL Table: " + e);
            }
            if (tableColumns != null && tableColumns.containsKey("isaPackageName")) {
                Log.e("EdmStorageHelper", "ISL Table is already updated.");
                sQLiteDatabase.endTransaction();
                return false;
            }
            Log.e("EdmStorageHelper", "Upgrading " + table.mTableName + " Table");
            StringBuilder sb = new StringBuilder();
            sb.append(table.mTableName);
            sb.append("_temp");
            String sb2 = sb.toString();
            sQLiteDatabase.execSQL("CREATE TABLE " + sb2 + " AS SELECT * FROM " + table.mTableName + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("DROP TABLE ");
            sb3.append(table.mTableName);
            sQLiteDatabase.execSQL(sb3.toString());
            createTable(sQLiteDatabase, table);
            sQLiteDatabase.execSQL("INSERT INTO " + table.mTableName + " (adminUid,fpBaseLined,packageName,fpCurrent,fpDirty,fpNewRow) SELECT adminUid,fpBaseLined,packageName,fpCurrent,fpDirty,fpNewRow from " + sb2 + KnoxVpnFirewallHelper.DELIMITER);
            StringBuilder sb4 = new StringBuilder();
            sb4.append("DROP TABLE ");
            sb4.append(sb2);
            sQLiteDatabase.execSQL(sb4.toString());
            sQLiteDatabase.setTransactionSuccessful();
            sQLiteDatabase.endTransaction();
            return true;
        } catch (Throwable th) {
            sQLiteDatabase.endTransaction();
            throw th;
        }
    }

    public static ContentValues getTableColumns(SQLiteDatabase sQLiteDatabase, String str) {
        ContentValues contentValues;
        Cursor rawQuery;
        Cursor cursor = null;
        try {
            try {
                rawQuery = sQLiteDatabase.rawQuery("PRAGMA table_info(" + str + ")", null);
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception unused) {
            contentValues = null;
        }
        if (rawQuery != null) {
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    cursor = rawQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                contentValues = null;
            }
            if (rawQuery.getCount() != 0) {
                contentValues = new ContentValues();
                while (rawQuery.moveToNext() && rawQuery.getCount() > 0) {
                    try {
                        contentValues.put(rawQuery.getString(1), rawQuery.getString(2));
                    } catch (Exception unused3) {
                        cursor = rawQuery;
                        Log.d("EdmStorageHelper", str + "does not exists");
                        if (cursor != null) {
                            cursor.close();
                        }
                        return contentValues;
                    }
                }
                rawQuery.close();
                return contentValues;
            }
        }
        Log.d("EdmStorageHelper", "Failed to get list of columns for table: " + str);
        if (rawQuery != null) {
            rawQuery.close();
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0065, code lost:
    
        if (r1 == null) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getCount(android.database.sqlite.SQLiteDatabase r5, java.lang.String r6, java.lang.String r7) {
        /*
            java.lang.String r0 = "EdmStorageHelper"
            r1 = 0
            r2 = 0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r3.<init>()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r4 = "SELECT COUNT(*) from "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r3.append(r6)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            if (r7 == 0) goto L2b
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r4.<init>()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r4.append(r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r3 = " WHERE "
            r4.append(r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r4.append(r7)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r3 = r4.toString()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
        L2b:
            android.database.Cursor r1 = r5.rawQuery(r3, r1)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r1.moveToNext()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            int r2 = r1.getInt(r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r5.<init>()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r3 = "getCount("
            r5.append(r3)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r5.append(r6)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r6 = ") with Condition "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r5.append(r7)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r6 = " = "
            r5.append(r6)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            r5.append(r2)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
            android.util.Log.d(r0, r5)     // Catch: java.lang.Throwable -> L5e java.lang.Exception -> L60
        L5a:
            r1.close()
            goto L68
        L5e:
            r5 = move-exception
            goto L69
        L60:
            java.lang.String r5 = "getCount() failed"
            android.util.Log.w(r0, r5)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L68
            goto L5a
        L68:
            return r2
        L69:
            if (r1 == 0) goto L6e
            r1.close()
        L6e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.storage.EdmStorageHelper.getCount(android.database.sqlite.SQLiteDatabase, java.lang.String, java.lang.String):int");
    }
}
