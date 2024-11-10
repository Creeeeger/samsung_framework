package com.android.server.enterprise;

import android.content.ContentValues;
import android.content.Context;
import android.util.Log;
import com.android.server.enterprise.storage.EdmStorageProvider;
import com.samsung.android.knox.ControlInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public abstract class BlackWhiteListPolicy {
    public Context mContext;
    public EdmStorageProvider mEdmStorageProvider;
    public String mTable;
    public List mEffectiveBlacklist = new ArrayList();
    public List mEffectiveWhitelist = new ArrayList();
    public boolean bUpdateToDB = false;

    public abstract boolean isPolicyActive(int i);

    public BlackWhiteListPolicy(Context context, String str) {
        this.mContext = context;
        this.mEdmStorageProvider = new EdmStorageProvider(context);
        this.mTable = str;
    }

    public boolean reload() {
        this.bUpdateToDB = false;
        updateEffectivePolicy();
        return true;
    }

    public boolean addObjectsToBlackList(int i, List list) {
        return addObjectsToList(i, list, "black");
    }

    public boolean removeObjectsFromBlackList(int i, List list) {
        return removeObjectsFromList(i, list, "black");
    }

    public boolean clearObjectsFromBlackList(int i) {
        return clearObjectsFromList(i, "black");
    }

    public List getAllObjectsFromBlackListForAllAdmins() {
        return getAllObjectsFromListForAllAdmins("black");
    }

    public boolean addObjectsToWhiteList(int i, List list) {
        return addObjectsToList(i, list, "white");
    }

    public boolean removeObjectsFromWhiteList(int i, List list) {
        return removeObjectsFromList(i, list, "white");
    }

    public boolean clearObjectsFromWhiteList(int i) {
        return clearObjectsFromList(i, "white");
    }

    public List getAllObjectsFromWhiteListForAllAdmins() {
        return getAllObjectsFromListForAllAdmins("white");
    }

    public List getEffectiveWhiteList() {
        if (this.bUpdateToDB) {
            updateEffectivePolicy();
            this.bUpdateToDB = true;
        }
        return this.mEffectiveWhitelist;
    }

    public List getEffectiveBlackList() {
        if (!this.bUpdateToDB) {
            updateEffectivePolicy();
            this.bUpdateToDB = true;
        }
        return this.mEffectiveBlacklist;
    }

    public boolean isObjectAllowed(String str) {
        List effectiveWhiteList = getEffectiveWhiteList();
        List effectiveBlackList = getEffectiveBlackList();
        for (int i = 0; i < effectiveWhiteList.size(); i++) {
            if (((String) effectiveWhiteList.get(i)).equalsIgnoreCase(str) || ((String) effectiveWhiteList.get(i)).equalsIgnoreCase("*")) {
                return true;
            }
        }
        for (int i2 = 0; i2 < effectiveBlackList.size(); i2++) {
            if (((String) effectiveBlackList.get(i2)).equalsIgnoreCase(str) || ((String) effectiveBlackList.get(i2)).equalsIgnoreCase("*")) {
                return false;
            }
        }
        return true;
    }

    public final boolean addObjectsToList(int i, List list, String str) {
        removeDuplicates(list);
        for (int i2 = 0; i2 < list.size(); i2++) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("Object", (String) list.get(i2));
            contentValues.put("adminUid", String.valueOf(i));
            contentValues.put("ListType", str);
            ContentValues contentValues2 = new ContentValues();
            contentValues2.put("Object", (String) list.get(i2));
            contentValues2.put("adminUid", String.valueOf(i));
            contentValues2.put("ListType", str);
            if (!this.mEdmStorageProvider.putValues(this.mTable, contentValues2, contentValues)) {
                return false;
            }
        }
        updateEffectivePolicy();
        return true;
    }

    public final boolean removeObjectsFromList(int i, List list, String str) {
        removeDuplicates(list);
        for (int i2 = 0; i2 < list.size(); i2++) {
            HashMap hashMap = new HashMap();
            hashMap.put("adminUid", String.valueOf(i));
            hashMap.put("Object", (String) list.get(i2));
            hashMap.put("ListType", str);
            if (this.mEdmStorageProvider.removeByFields(this.mTable, hashMap) == -1) {
                return false;
            }
        }
        updateEffectivePolicy();
        return true;
    }

    public final boolean clearObjectsFromList(int i, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put("adminUid", String.valueOf(i));
        hashMap.put("ListType", str);
        if (this.mEdmStorageProvider.removeByFields(this.mTable, hashMap) == -1) {
            return false;
        }
        updateEffectivePolicy();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
    
        android.util.Log.i("BlackWhiteListPolicyService", "getAllObjectsFromList:");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0055, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004d, code lost:
    
        if (r8 == null) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void getAllObjectsFromList(int r10, java.lang.String r11, java.util.List r12) {
        /*
            r9 = this;
            java.lang.String r0 = "BlackWhiteListPolicyService"
            java.lang.String r1 = "Object"
            java.lang.String[] r7 = new java.lang.String[]{r1}
            r8 = 0
            com.android.server.enterprise.storage.EdmStorageProvider r2 = r9.mEdmStorageProvider     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            java.lang.String r3 = r9.mTable     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            java.lang.String r5 = "ListType"
            r4 = r10
            r6 = r11
            android.database.Cursor r8 = r2.getCursorByAdminAndField(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            if (r8 == 0) goto L2c
            r12.clear()     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
        L1a:
            boolean r9 = r8.moveToNext()     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            if (r9 == 0) goto L2c
            int r9 = r8.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            java.lang.String r9 = r8.getString(r9)     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            r12.add(r9)     // Catch: java.lang.Throwable -> L32 android.database.SQLException -> L34
            goto L1a
        L2c:
            if (r8 == 0) goto L50
        L2e:
            r8.close()
            goto L50
        L32:
            r9 = move-exception
            goto L56
        L34:
            r9 = move-exception
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L32
            r10.<init>()     // Catch: java.lang.Throwable -> L32
            java.lang.String r11 = "Exception occurred accessing Enterprise db "
            r10.append(r11)     // Catch: java.lang.Throwable -> L32
            java.lang.String r9 = r9.getMessage()     // Catch: java.lang.Throwable -> L32
            r10.append(r9)     // Catch: java.lang.Throwable -> L32
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> L32
            android.util.Log.e(r0, r9)     // Catch: java.lang.Throwable -> L32
            if (r8 == 0) goto L50
            goto L2e
        L50:
            java.lang.String r9 = "getAllObjectsFromList:"
            android.util.Log.i(r0, r9)
            return
        L56:
            if (r8 == 0) goto L5b
            r8.close()
        L5b:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.enterprise.BlackWhiteListPolicy.getAllObjectsFromList(int, java.lang.String, java.util.List):void");
    }

    public final List getAllObjectsFromListForAllAdmins(String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.mEdmStorageProvider.getAdminUidList().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            ArrayList arrayList2 = new ArrayList();
            getAllObjectsFromList(intValue, str, arrayList2);
            if (!arrayList2.isEmpty()) {
                ControlInfo controlInfo = new ControlInfo();
                controlInfo.adminPackageName = getPackageNameForUid(intValue);
                controlInfo.entries = arrayList2;
                arrayList.add(controlInfo);
            }
        }
        Log.i("BlackWhiteListPolicyService", "getAllObjectsFromLists:");
        return arrayList;
    }

    public final void createEffectiveList(int i, List list, List list2) {
        list.clear();
        list2.clear();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        getAllObjectsFromList(i, "black", arrayList);
        addList(list, arrayList);
        getAllObjectsFromList(i, "white", arrayList2);
        addList(list2, arrayList2);
        subtractList(list, list2);
        logList("effectiveblacklist for admin " + String.valueOf(i) + ": ", list);
        logList("effectivewhitelist for admin " + String.valueOf(i) + ": ", list2);
    }

    public final void createEffectiveListAllAdmins(List list, List list2) {
        list.clear();
        list2.clear();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Iterator it = this.mEdmStorageProvider.getAdminUidList().iterator();
        while (it.hasNext()) {
            int intValue = ((Integer) it.next()).intValue();
            if (isPolicyActive(intValue)) {
                hashMap.put(Integer.valueOf(intValue), new ArrayList());
                hashMap2.put(Integer.valueOf(intValue), new ArrayList());
                createEffectiveList(intValue, (List) hashMap.get(Integer.valueOf(intValue)), (List) hashMap2.get(Integer.valueOf(intValue)));
                addList(list, (List) hashMap.get(Integer.valueOf(intValue)));
                logList("finalblacklist after adding admin " + String.valueOf(intValue) + ": ", list);
            }
        }
        for (Map.Entry entry : hashMap2.entrySet()) {
            subtractWhitelistFromOthersBlacklists(((Integer) entry.getKey()).intValue(), (List) entry.getValue(), hashMap);
            addList(list2, (List) entry.getValue());
            logList("finalwhitelist after adding admin " + String.valueOf(entry.getKey()) + ": ", list2);
        }
    }

    public final void updateEffectivePolicy() {
        createEffectiveListAllAdmins(this.mEffectiveBlacklist, this.mEffectiveWhitelist);
    }

    public final void removeDuplicates(List list) {
        if (list.size() == 0) {
            return;
        }
        HashSet hashSet = new HashSet();
        hashSet.addAll(list);
        list.clear();
        list.addAll(hashSet);
    }

    public final String getPackageNameForUid(int i) {
        return this.mEdmStorageProvider.getPackageNameForUid(i);
    }

    public final void subtractList(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            if (((String) list2.get(i)).equalsIgnoreCase("*")) {
                list.clear();
                return;
            }
            list.remove(list2.get(i));
        }
    }

    public final void addList(List list, List list2) {
        for (int i = 0; i < list2.size(); i++) {
            if (((String) list2.get(i)).equalsIgnoreCase("*")) {
                list.clear();
                list.add("*");
                return;
            }
            list.add((String) list2.get(i));
        }
        removeDuplicates(list);
    }

    public final void subtractWhitelistFromOthersBlacklists(int i, List list, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            if (((Integer) entry.getKey()).intValue() != i) {
                subtractList(list, (List) entry.getValue());
            }
        }
    }

    public final void logList(String str, List list) {
        for (int i = 0; i < list.size(); i++) {
            Log.i("BlackWhiteListPolicyService", "logList:" + str + " " + ((String) list.get(i)));
        }
    }
}
