package com.android.server.policy;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.util.Slog;
import android.util.SparseArray;
import com.android.server.policy.KeyCustomizationInfoXmlUtils;
import com.android.server.policy.SideKeyDoublePress;
import com.samsung.android.rune.CoreRune;
import com.samsung.android.view.SemWindowManager;
import java.io.File;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class KeyCustomizationInfoManager {
    public static int[] ALL_HOT_KEYCODE = {1090, 1091, 1092};
    public final Context mContext;
    public SemWindowManager.KeyCustomizationInfo mGlobalSideKeyDoubleInfo;
    public SemWindowManager.KeyCustomizationInfo mGlobalSideKeyLongInfo;
    public final SparseArray mDownUpMap = new SparseArray();
    public final SparseArray mLongMap = new SparseArray();
    public final SparseArray mDoubleMap = new SparseArray();
    public final SparseArray mTripleMap = new SparseArray();
    public final SparseArray mQuadrupleMap = new SparseArray();
    public final SparseArray mQuintupleMap = new SparseArray();
    public final SparseArray mLastDownUpInfo = new SparseArray();
    public final SparseArray mLastLongInfo = new SparseArray();
    public final SparseArray mLastDoubleInfo = new SparseArray();
    public final SparseArray mLastTripleInfo = new SparseArray();
    public final SparseArray mLastQuadrupleInfo = new SparseArray();
    public final SparseArray mLastQuintupleInfo = new SparseArray();
    public final SparseArray mHotKeyMap = new SparseArray();
    public final Object mLock = new Object();
    public final ArrayList mOwnerPackageList = new ArrayList();
    public int mUserId = 0;
    public final KeyCustomizationInfoXmlUtils mXmlUtils = new KeyCustomizationInfoXmlUtils(this);

    public final String getKodiakIntentAction(int i) {
        if (i == 1015) {
            return "com.mcx.intent.action.CRITICAL_COMMUNICATION_CONTROL_KEY";
        }
        if (i != 1079) {
            return null;
        }
        return "com.mcx.intent.action.CRITICAL_COMMUNICATION_SOS_KEY";
    }

    public KeyCustomizationInfoManager(Context context) {
        this.mContext = context;
    }

    public void init(int i, boolean z) {
        synchronized (this.mLock) {
            long uptimeMillis = SystemClock.uptimeMillis();
            this.mXmlUtils.loadSettingsLocked(i);
            Log.d("KeyCustomizationInfoManager", "loadSettings duration=" + (SystemClock.uptimeMillis() - uptimeMillis) + " version=" + this.mXmlUtils.getXmlVersion() + " userId=" + i + " userSwitching=" + z);
            long uptimeMillis2 = SystemClock.uptimeMillis();
            if (this.mXmlUtils.getXmlFileErrorCode() == KeyCustomizationInfoXmlUtils.ErrorCode.FILE_NOT_FOUND) {
                initKeyCustomizationInfoLocked(8, 26, true);
                initKeyCustomizationInfoLocked(4, 26, true);
                if (CoreRune.FW_ACTIVE_OR_XCOVER_KEY) {
                    initUserTopKeyCustomizationInfoLocked(1015);
                }
                if (CoreRune.FW_XCOVER_AND_TOP_KEY) {
                    initUserTopKeyCustomizationInfoLocked(1079);
                }
                if (!CoreRune.FW_SIDE_KEY) {
                    initKeyCustomizationInfoLocked(8, 3, true);
                }
                this.mXmlUtils.initXmlVersion();
                if (!z) {
                    this.mXmlUtils.saveSettingsLocked(i);
                }
            } else if (this.mXmlUtils.getXmlFileErrorCode() == KeyCustomizationInfoXmlUtils.ErrorCode.SUCCESS) {
                boolean checkHomeLongPressInfo = CoreRune.FW_SUPPORT_SEARCLE_HOME_LONG ? false | checkHomeLongPressInfo() : false;
                if (!z) {
                    checkHomeLongPressInfo |= this.mXmlUtils.updateXmlVersionIfNeeded();
                }
                if (checkHomeLongPressInfo) {
                    saveSettingsLocked(i);
                }
                updateLastInfoMapLocked(KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL);
            } else {
                Log.e("KeyCustomizationInfoManager", "Xml file error code was wrong. code=" + this.mXmlUtils.getXmlFileErrorCode());
            }
            Log.d("KeyCustomizationInfoManager", "initKeyCustomizationInfo duration=" + (SystemClock.uptimeMillis() - uptimeMillis2));
        }
    }

    public final void updateLastInfoMapLocked(int[] iArr) {
        for (int i : iArr) {
            SparseArray infoMapLocked = getInfoMapLocked(i);
            for (int i2 = 0; i2 < infoMapLocked.size(); i2++) {
                updateHigherPriorityInfoLocked(i, infoMapLocked.keyAt(i2));
            }
        }
    }

    public void put(SemWindowManager.KeyCustomizationInfo keyCustomizationInfo) {
        put(keyCustomizationInfo, false);
    }

    public void put(SemWindowManager.KeyCustomizationInfo keyCustomizationInfo, boolean z) {
        int size;
        int i;
        if (keyCustomizationInfo == null) {
            return;
        }
        synchronized (this.mLock) {
            int i2 = keyCustomizationInfo.press;
            int i3 = keyCustomizationInfo.id;
            int i4 = keyCustomizationInfo.keyCode;
            String str = keyCustomizationInfo.ownerPackage;
            SparseArray infoMapLocked = getInfoMapLocked(i2);
            SparseArray sparseArray = (SparseArray) infoMapLocked.get(i4);
            if (sparseArray == null) {
                sparseArray = new SparseArray();
                infoMapLocked.put(i4, sparseArray);
            } else if (i3 >= 1000 && (size = sparseArray.size()) > 0) {
                ArrayList<Integer> arrayList = new ArrayList();
                for (int i5 = 0; i5 < size; i5++) {
                    SemWindowManager.KeyCustomizationInfo keyCustomizationInfo2 = (SemWindowManager.KeyCustomizationInfo) sparseArray.valueAt(i5);
                    if (keyCustomizationInfo2 != null && (i = keyCustomizationInfo2.id) >= 1000) {
                        arrayList.add(Integer.valueOf(i));
                    }
                }
                for (Integer num : arrayList) {
                    SemWindowManager.KeyCustomizationInfo keyCustomizationInfo3 = (SemWindowManager.KeyCustomizationInfo) sparseArray.get(num.intValue());
                    if (keyCustomizationInfo3 != null) {
                        String str2 = keyCustomizationInfo3.ownerPackage;
                        sparseArray.remove(num.intValue());
                        if (num.intValue() == 2003) {
                            removeOwnerPackageList(str2);
                        }
                    }
                }
            }
            sparseArray.put(i3, keyCustomizationInfo);
            updateHigherPriorityInfoLocked(i2, i4);
            if (!z) {
                saveSettingsLocked();
            }
            if (i3 == 2003) {
                addOwnerPackageList(str);
            }
        }
    }

    public SemWindowManager.KeyCustomizationInfo get(int i, int i2, int i3) {
        return get(i, null, i2, i3);
    }

    public SemWindowManager.KeyCustomizationInfo get(int i, String str, int i2, int i3) {
        synchronized (this.mLock) {
            SemWindowManager.KeyCustomizationInfo infoLocked = getInfoLocked(i2, i3, i);
            if (infoLocked == null) {
                return null;
            }
            if (i != 2003 || (!TextUtils.isEmpty(str) && str.equals(infoLocked.ownerPackage))) {
                return infoLocked;
            }
            return null;
        }
    }

    public final SemWindowManager.KeyCustomizationInfo getInfoLocked(int i, int i2, int i3) {
        SparseArray sparseArray = (SparseArray) getInfoMapLocked(i).get(i2);
        if (sparseArray == null) {
            return null;
        }
        return (SemWindowManager.KeyCustomizationInfo) sparseArray.get(i3);
    }

    public SemWindowManager.KeyCustomizationInfo getLast(int i, int i2) {
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo;
        synchronized (this.mLock) {
            keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) getLastInfoLocked(i).get(i2);
        }
        return keyCustomizationInfo;
    }

    public final void remove(int i, int i2, int i3, boolean z) {
        remove(i, null, i2, i3, z);
    }

    public final void remove(int i, int i2, int i3) {
        remove(i, null, i2, i3, false);
    }

    public boolean remove(int i, String str, int i2, int i3) {
        return remove(i, str, i2, i3, false);
    }

    public final boolean remove(int i, String str, int i2, int i3, boolean z) {
        synchronized (this.mLock) {
            SparseArray sparseArray = (SparseArray) getInfoMapLocked(i2).get(i3);
            if (sparseArray == null) {
                return false;
            }
            SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.get(i);
            if (keyCustomizationInfo == null) {
                return false;
            }
            if (i == 2003 && !TextUtils.isEmpty(str) && !str.equals(keyCustomizationInfo.ownerPackage)) {
                Slog.d("KeyCustomizationInfoManager", "Can not remove data, There is no matched with ownerPackage=" + str);
                return false;
            }
            sparseArray.remove(i);
            if (i == 2003) {
                initKeyCustomizationInfoLocked(i2, i3);
                removeOwnerPackageList(str);
            }
            updateHigherPriorityInfoLocked(i2, i3);
            if (!z) {
                saveSettingsLocked();
            }
            return true;
        }
    }

    public boolean clearByKeyCode(int i, int i2) {
        boolean z;
        synchronized (this.mLock) {
            z = false;
            for (int i3 : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL) {
                SparseArray sparseArray = (SparseArray) getInfoMapLocked(i3).get(i2);
                if (sparseArray != null && sparseArray.get(i) != null) {
                    sparseArray.remove(i);
                    updateHigherPriorityInfoLocked(i3, i2);
                    z = true;
                }
            }
            if (z) {
                saveSettingsLocked();
            }
        }
        return z;
    }

    public boolean clearByPackage(String str) {
        boolean z;
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo;
        synchronized (this.mLock) {
            z = false;
            for (int i : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_BASIC) {
                for (int i2 : KeyCustomizationConstants.ALL_KEYCODE_TYPE) {
                    SparseArray sparseArray = (SparseArray) getInfoMapLocked(i).get(i2);
                    if (sparseArray != null && (keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.get(2003)) != null && str.equals(keyCustomizationInfo.ownerPackage)) {
                        sparseArray.remove(2003);
                        initKeyCustomizationInfoLocked(i, i2);
                        updateHigherPriorityInfoLocked(i, i2);
                        z = true;
                    }
                }
            }
            if (z) {
                saveSettingsLocked();
                this.mOwnerPackageList.remove(str);
            }
        }
        return z;
    }

    public boolean clearByAction(int i, int i2, int i3) {
        boolean z;
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo;
        synchronized (this.mLock) {
            z = false;
            for (int i4 : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL) {
                SparseArray sparseArray = (SparseArray) getInfoMapLocked(i4).get(i2);
                if (sparseArray != null && (keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.get(i)) != null && keyCustomizationInfo.action == i3) {
                    sparseArray.remove(i);
                    updateHigherPriorityInfoLocked(i4, i2);
                    z = true;
                }
            }
            if (z) {
                saveSettingsLocked();
            }
        }
        return z;
    }

    public void initKeyCustomizationInfoLocked(int i, int i2) {
        initKeyCustomizationInfoLocked(i, i2, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x006b, code lost:
    
        if (r2 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x009d, code lost:
    
        if (r2 != false) goto L80;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void initKeyCustomizationInfoLocked(int r7, int r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.KeyCustomizationInfoManager.initKeyCustomizationInfoLocked(int, int, boolean):void");
    }

    public void saveSettingsLocked() {
        this.mXmlUtils.saveSettingsLocked(this.mUserId);
    }

    public void saveSettingsLocked(int i) {
        updateUserIdIfNeeded();
        this.mXmlUtils.saveSettingsLocked(i);
    }

    public SparseArray getInfoMapLocked(int i) {
        if ((i & 3) != 0) {
            return this.mDownUpMap;
        }
        if ((i & 4) != 0) {
            return this.mLongMap;
        }
        if ((i & 8) != 0) {
            return this.mDoubleMap;
        }
        if ((i & 16) != 0) {
            return this.mTripleMap;
        }
        if ((i & 32) != 0) {
            return this.mQuadrupleMap;
        }
        if ((i & 64) != 0) {
            return this.mQuintupleMap;
        }
        throw new IllegalArgumentException("Can not find infoMap. which=" + i);
    }

    public SparseArray getLastInfoLocked(int i) {
        if ((i & 3) != 0) {
            return this.mLastDownUpInfo;
        }
        if ((i & 4) != 0) {
            return this.mLastLongInfo;
        }
        if ((i & 8) != 0) {
            return this.mLastDoubleInfo;
        }
        if ((i & 16) != 0) {
            return this.mLastTripleInfo;
        }
        if ((i & 32) != 0) {
            return this.mLastQuadrupleInfo;
        }
        if ((i & 64) != 0) {
            return this.mLastQuintupleInfo;
        }
        throw new IllegalArgumentException("Can not find lastInfo. which=" + i);
    }

    public void updateHigherPriorityInfoLocked(int i, int i2) {
        updateHigherPriorityInfoLocked(i, i2, -1);
    }

    public void updateHigherPriorityInfoLocked(int i, int i2, int i3) {
        SemWindowManager.KeyCustomizationInfo infoLocked;
        if (i3 == -1) {
            i3 = getIdOfTopPriority(i, i2);
        }
        getLastInfoLocked(i).remove(i2);
        if (i3 == -1 || (infoLocked = getInfoLocked(i, i2, i3)) == null) {
            return;
        }
        getLastInfoLocked(i).put(i2, infoLocked);
    }

    public int getIdOfTopPriority(int i, int i2) {
        int i3;
        SparseArray sparseArray = (SparseArray) getInfoMapLocked(i).get(i2);
        if (sparseArray == null) {
            return -1;
        }
        int i4 = 2004;
        for (int i5 = 0; i5 < sparseArray.size(); i5++) {
            SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.valueAt(i5);
            if (keyCustomizationInfo != null && i4 > (i3 = keyCustomizationInfo.id)) {
                i4 = i3;
            }
        }
        if (i4 != 2004) {
            return i4;
        }
        return -1;
    }

    public boolean isEmptyKeyCustomizationInfo(int i, int i2, int i3) {
        synchronized (this.mLock) {
            SparseArray infoMapLocked = getInfoMapLocked(i2);
            if (infoMapLocked.get(i3) != null && ((SparseArray) infoMapLocked.get(i3)).get(i) != null) {
                return false;
            }
            return true;
        }
    }

    public void addOwnerPackageList(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Iterator it = this.mOwnerPackageList.iterator();
        while (it.hasNext()) {
            if (str.equals((String) it.next())) {
                return;
            }
        }
        this.mOwnerPackageList.add(str);
    }

    public void removeOwnerPackageList(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        for (int i : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_BASIC) {
            SparseArray infoMapLocked = getInfoMapLocked(i);
            for (int i2 = 0; i2 < infoMapLocked.size(); i2++) {
                SparseArray sparseArray = (SparseArray) infoMapLocked.valueAt(i2);
                if (sparseArray != null) {
                    for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.valueAt(i3);
                        if (keyCustomizationInfo != null && keyCustomizationInfo.id == 2003 && str.equals(keyCustomizationInfo.ownerPackage)) {
                            return;
                        }
                    }
                }
            }
        }
        this.mOwnerPackageList.remove(str);
    }

    public boolean hasOwnerPackage(String str) {
        if (this.mOwnerPackageList.size() == 0) {
            return false;
        }
        Iterator it = this.mOwnerPackageList.iterator();
        while (it.hasNext()) {
            if (str.equals((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public SparseArray getHotKeyMapLocked() {
        return this.mHotKeyMap;
    }

    public void putHotKey(int i, ComponentName componentName) {
        synchronized (this.mLock) {
            this.mHotKeyMap.put(i, componentName);
            saveSettingsLocked();
        }
    }

    public void removeHotKey(String str) {
        synchronized (this.mLock) {
            boolean z = false;
            for (int i : ALL_HOT_KEYCODE) {
                ComponentName componentName = (ComponentName) getHotKeyMapLocked().get(i);
                if (componentName != null && str.equals(componentName.getPackageName())) {
                    Slog.d("KeyCustomizationInfoManager", "removeHotKey keyCode=" + i + " packageName=" + str);
                    this.mHotKeyMap.remove(i);
                    z = true;
                }
            }
            if (z) {
                saveSettingsLocked();
            }
        }
    }

    public ComponentName getHotKeyComponentName(int i) {
        ComponentName componentName;
        synchronized (this.mLock) {
            componentName = (ComponentName) getHotKeyMapLocked().get(i);
        }
        return componentName;
    }

    public List getBackupKeyCustomizationInfoList() {
        synchronized (this.mLock) {
            ArrayList arrayList = new ArrayList();
            SparseArray hotKeyMapLocked = getHotKeyMapLocked();
            for (int i = 0; i < hotKeyMapLocked.size(); i++) {
                int keyAt = hotKeyMapLocked.keyAt(i);
                ComponentName componentName = (ComponentName) hotKeyMapLocked.get(keyAt);
                Intent intent = new Intent();
                intent.setComponent(componentName);
                arrayList.add(new SemWindowManager.KeyCustomizationInfo(3, 1000, keyAt, 1, intent));
            }
            if (arrayList.size() > 0) {
                return arrayList;
            }
            return null;
        }
    }

    public void restoreKeyCustomizationInfo(List list) {
        synchronized (this.mLock) {
            ArrayList<SemWindowManager.KeyCustomizationInfo> arrayList = new ArrayList();
            Iterator it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) it.next();
                if (keyCustomizationInfo != null) {
                    int i = keyCustomizationInfo.keyCode;
                    if (i != 1090 && i != 1091 && i != 1092) {
                        Slog.d("KeyCustomizationInfoManager", "restoreKeyCustomizationInfo keyCode=" + i + KeyCustomizationManager.pressToString(keyCustomizationInfo.press) + " " + KeyCustomizationManager.actionToString(keyCustomizationInfo.action) + keyCustomizationInfo.intent);
                        put(keyCustomizationInfo, true);
                        z = true;
                    }
                    Slog.d("KeyCustomizationInfoManager", "restoreKeyCustomizationInfo keyCode=" + i);
                    arrayList.add(keyCustomizationInfo);
                    z = true;
                }
            }
            if (arrayList.size() > 0) {
                this.mHotKeyMap.clear();
                for (SemWindowManager.KeyCustomizationInfo keyCustomizationInfo2 : arrayList) {
                    if (keyCustomizationInfo2 != null) {
                        int i2 = keyCustomizationInfo2.keyCode;
                        Intent intent = keyCustomizationInfo2.intent;
                        if (intent == null) {
                            Log.d("KeyCustomizationInfoManager", "restoreKeyCustomizationInfo, keyCode=" + i2 + " intent is null.");
                        } else {
                            ComponentName component = intent.getComponent();
                            if (component == null) {
                                Log.d("KeyCustomizationInfoManager", "restoreKeyCustomizationInfo, keyCode=" + i2 + " componentName is null.");
                            } else {
                                this.mHotKeyMap.put(i2, component);
                            }
                        }
                    }
                }
                z = true;
            }
            if (z) {
                saveSettingsLocked();
            }
        }
    }

    public final void initUserTopKeyCustomizationInfoLocked(int i) {
        initKeyCustomizationInfoLocked(3, i, true);
        if (hasB2BDeltaInfo(i)) {
            return;
        }
        initKeyCustomizationInfoLocked(4, i, true);
    }

    public final SemWindowManager.KeyCustomizationInfo getXCoverKeyPressInfoFromSetting() {
        if (CoreRune.FW_XCOVER_AND_TOP_KEY || !CoreRune.FW_ACTIVE_OR_XCOVER_KEY) {
            return null;
        }
        String stringForUser = Settings.System.getStringForUser(this.mContext.getContentResolver(), "short_press_app", -2);
        Log.d("KeyCustomizationInfoManager", "getXCoverKeyPressInfoFromSetting xcoverKeyPressApp=" + stringForUser);
        return getXCoverTopKeyCustomizationInfo(3, 1015, stringForUser);
    }

    public final SemWindowManager.KeyCustomizationInfo getXCoverTopKeyCustomizationInfo(int i, int i2, String str) {
        ComponentName unflattenFromString;
        if (TextUtils.isEmpty(str) || (unflattenFromString = ComponentName.unflattenFromString(str)) == null) {
            return null;
        }
        int i3 = ("torch/torch".equals(str) || "home/home".equals(str) || "back/back".equals(str) || "quickMessageSender/quickMessageSender".equals(str)) ? 0 : 1;
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.addFlags(270532608);
        intent.setComponent(unflattenFromString);
        return new SemWindowManager.KeyCustomizationInfo(i, 1103, i2, i3, intent);
    }

    public final SemWindowManager.KeyCustomizationInfo getXCoverKeyLongInfoFromSetting() {
        String stringForUser = Settings.System.getStringForUser(this.mContext.getContentResolver(), "long_press_app", -2);
        Log.d("KeyCustomizationInfoManager", "getXCoverKeyLongInfoFromSetting xcoverKeyLongPressLaunchApp=" + stringForUser);
        return getXCoverTopKeyCustomizationInfo(4, 1015, stringForUser);
    }

    public final SemWindowManager.KeyCustomizationInfo getTopKeyPressInfoFromSetting() {
        String stringForUser = Settings.System.getStringForUser(this.mContext.getContentResolver(), "xcover_top_short_press_app", -2);
        Log.d("KeyCustomizationInfoManager", "getTopKeyPressInfoFromSetting topKeyPressLaunchApp=" + stringForUser);
        return getXCoverTopKeyCustomizationInfo(3, 1079, stringForUser);
    }

    public final SemWindowManager.KeyCustomizationInfo getPowerKeyLongDefaultInfo() {
        Log.d("KeyCustomizationInfoManager", "getPowerKeyLongDefaultInfo");
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(ComponentName.unflattenFromString("globalAction/globalAction"));
        return new SemWindowManager.KeyCustomizationInfo(4, 1000, 26, 0, intent);
    }

    public final SemWindowManager.KeyCustomizationInfo getSideKeyLongInfoFromGlobalSetting() {
        ComponentName unflattenFromString;
        int i = 0;
        int i2 = Settings.Global.getInt(this.mContext.getContentResolver(), "function_key_config_longpress_type", 0);
        Log.d("KeyCustomizationInfoManager", "getSideKeyLongInfoFromGlobalSetting sideKeyLongPressType=" + i2);
        if (i2 == 0) {
            unflattenFromString = ComponentName.unflattenFromString("wakeBixby/wakeBixby");
            i = 3;
        } else {
            unflattenFromString = i2 != 1 ? null : ComponentName.unflattenFromString("globalAction/globalAction");
        }
        int i3 = i;
        if (unflattenFromString == null) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.setComponent(unflattenFromString);
        return new SemWindowManager.KeyCustomizationInfo(4, 1104, 26, i3, intent);
    }

    public SemWindowManager.KeyCustomizationInfo getSideKeyDoubleInfoFromGlobalSetting() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "function_key_config_doublepress", 1) == 1;
        if (!z) {
            return null;
        }
        int i = Settings.Global.getInt(contentResolver, "function_key_config_doublepress_type", 0);
        String string = Settings.Global.getString(contentResolver, "function_key_config_doublepress_value");
        Log.d("KeyCustomizationInfoManager", "getSideKeyDoubleInfoFromGlobalSetting enabled=" + z + " type=" + i + " appInfo=" + string);
        SideKeyDoublePress.Behavior typeToBehavior = SideKeyDoublePress.typeToBehavior(i, string);
        if (typeToBehavior == null) {
            return null;
        }
        return new SemWindowManager.KeyCustomizationInfo(8, 1104, 26, typeToBehavior.getAction(), typeToBehavior.getIntent());
    }

    public final SemWindowManager.KeyCustomizationInfo getQuickLaunchCameraInfoFromSetting(int i) {
        int doublePressLaunchCamera = getDoublePressLaunchCamera();
        Log.d("KeyCustomizationInfoManager", "getQuickLaunchCameraInfoFromSetting behavior=" + doublePressLaunchCamera);
        if (doublePressLaunchCamera == 2 || doublePressLaunchCamera == 0) {
            return null;
        }
        return new SemWindowManager.KeyCustomizationInfo(8, 2001, i, 1);
    }

    public final boolean shouldLaunchCameraByHomeDouble() {
        int doublePressLaunchCamera = getDoublePressLaunchCamera();
        return doublePressLaunchCamera == 1 || doublePressLaunchCamera == 0;
    }

    public final int getDoublePressLaunchCamera() {
        return Settings.System.getInt(this.mContext.getContentResolver(), "double_tab_launch", 2);
    }

    public final boolean getDoublePowerTvModeEnable() {
        ContentResolver contentResolver = this.mContext.getContentResolver();
        return (Settings.System.getInt(contentResolver, "tvmode_state", 0) == 1) && (Settings.System.getInt(contentResolver, "pwrkey_owner_status", 0) == 1);
    }

    public final SemWindowManager.KeyCustomizationInfo getSideKeyDoubleTvModeInfoFromSetting() {
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(ComponentName.unflattenFromString("com.samsung.tvmode/com.samsung.tvmode.activity.MainActivity"));
        return new SemWindowManager.KeyCustomizationInfo(8, 2002, 26, 1, intent);
    }

    public final boolean hasB2BDeltaInfo(int i) {
        return get(951, 3, i) != null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x006a, code lost:
    
        if (r0.equals("com.bell.ptt") == false) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.samsung.android.view.SemWindowManager.KeyCustomizationInfo getXCoverKeyB2BDeltaInfoFromSetting(int r8) {
        /*
            r7 = this;
            android.content.Context r0 = r7.mContext
            android.content.ContentResolver r0 = r0.getContentResolver()
            r1 = 1015(0x3f7, float:1.422E-42)
            r2 = 0
            if (r8 != r1) goto L10
            java.lang.String r1 = "dedicated_app_xcover_switch"
            java.lang.String r3 = "dedicated_app_xcover"
            goto L18
        L10:
            r1 = 1079(0x437, float:1.512E-42)
            if (r8 != r1) goto L7f
            java.lang.String r1 = "dedicated_app_top_switch"
            java.lang.String r3 = "dedicated_app_top"
        L18:
            r4 = 0
            r5 = -2
            int r1 = android.provider.Settings.System.getIntForUser(r0, r1, r4, r5)
            r6 = 1
            if (r1 != r6) goto L23
            r1 = r6
            goto L24
        L23:
            r1 = r4
        L24:
            if (r1 != 0) goto L27
            return r2
        L27:
            java.lang.String r0 = android.provider.Settings.System.getStringForUser(r0, r3, r5)
            r0.hashCode()
            int r1 = r0.hashCode()
            r2 = -1
            switch(r1) {
                case -1849030318: goto L64;
                case -1036550907: goto L59;
                case -100932730: goto L4e;
                case 1304193381: goto L43;
                case 2030292931: goto L38;
                default: goto L36;
            }
        L36:
            r4 = r2
            goto L6d
        L38:
            java.lang.String r1 = "com.verizon.pushtotalkplus"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L41
            goto L36
        L41:
            r4 = 4
            goto L6d
        L43:
            java.lang.String r1 = "com.att.eptt"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L4c
            goto L36
        L4c:
            r4 = 3
            goto L6d
        L4e:
            java.lang.String r1 = "com.att.firstnet.grey"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L57
            goto L36
        L57:
            r4 = 2
            goto L6d
        L59:
            java.lang.String r1 = "com.sprint.sdcplus"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L62
            goto L36
        L62:
            r4 = r6
            goto L6d
        L64:
            java.lang.String r1 = "com.bell.ptt"
            boolean r1 = r0.equals(r1)
            if (r1 != 0) goto L6d
            goto L36
        L6d:
            switch(r4) {
                case 0: goto L7a;
                case 1: goto L7a;
                case 2: goto L75;
                case 3: goto L7a;
                case 4: goto L7a;
                default: goto L70;
            }
        L70:
            com.samsung.android.view.SemWindowManager$KeyCustomizationInfo r7 = r7.getB2BDeltaDefaultInfo(r8, r0)
            return r7
        L75:
            com.samsung.android.view.SemWindowManager$KeyCustomizationInfo r7 = r7.getMcpttInfo(r8)
            return r7
        L7a:
            com.samsung.android.view.SemWindowManager$KeyCustomizationInfo r7 = r7.getKodiakPttInfo(r8, r0)
            return r7
        L7f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.KeyCustomizationInfoManager.getXCoverKeyB2BDeltaInfoFromSetting(int):com.samsung.android.view.SemWindowManager$KeyCustomizationInfo");
    }

    public final SemWindowManager.KeyCustomizationInfo getMcpttInfo(int i) {
        String kodiakIntentAction = getKodiakIntentAction(i);
        if (TextUtils.isEmpty(kodiakIntentAction)) {
            return null;
        }
        Intent intent = new Intent(kodiakIntentAction);
        intent.setComponent(ComponentName.unflattenFromString("com.att.firstnet.grey/com.samsung.android.sptt.keyevent.KeyEventService"));
        return new SemWindowManager.KeyCustomizationInfo(3, 951, i, 3, intent);
    }

    public final SemWindowManager.KeyCustomizationInfo getB2BDeltaDefaultInfo(int i, String str) {
        Intent intent = new Intent("com.samsung.android.knox.intent.action.HARD_KEY_REPORT");
        intent.setFlags(16777216);
        intent.putExtra("com.samsung.android.knox.intent.extra.KEY_CODE", 1015);
        if (!TextUtils.isEmpty(str)) {
            intent.setPackage(str);
        }
        return new SemWindowManager.KeyCustomizationInfo(3, 951, i, 2, intent);
    }

    public final boolean initKodiakDedicatedPttApp(SemWindowManager.KeyCustomizationInfo keyCustomizationInfo, int i) {
        for (String str : KeyCustomizationConstants.SUPPORT_PRELOAD_KODIAK_PTT) {
            if (initKodiakDedicatedPtt(keyCustomizationInfo, i, str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean initKodiakDedicatedPtt(SemWindowManager.KeyCustomizationInfo keyCustomizationInfo, int i, String str) {
        Intent intent;
        if (isAvailablePtt(str)) {
            if (keyCustomizationInfo != null) {
                return false;
            }
            put(getKodiakPttInfo(i, str), true);
            return true;
        }
        if (keyCustomizationInfo == null || keyCustomizationInfo.id != 951 || (intent = keyCustomizationInfo.intent) == null || !str.equals(intent.getPackage())) {
            return false;
        }
        remove(951, 3, i);
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008c A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean isAvailablePtt(java.lang.String r5) {
        /*
            r4 = this;
            boolean r0 = r4.hasPackage(r5)
            r1 = 0
            if (r0 != 0) goto L8
            return r1
        L8:
            java.lang.String r4 = r4.getSalesCode()
            r5.hashCode()
            int r0 = r5.hashCode()
            r2 = 1
            r3 = -1
            switch(r0) {
                case -1849030318: goto L3a;
                case -1036550907: goto L2f;
                case 1304193381: goto L24;
                case 2030292931: goto L19;
                default: goto L18;
            }
        L18:
            goto L44
        L19:
            java.lang.String r0 = "com.verizon.pushtotalkplus"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L22
            goto L44
        L22:
            r3 = 3
            goto L44
        L24:
            java.lang.String r0 = "com.att.eptt"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L2d
            goto L44
        L2d:
            r3 = 2
            goto L44
        L2f:
            java.lang.String r0 = "com.sprint.sdcplus"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L38
            goto L44
        L38:
            r3 = r2
            goto L44
        L3a:
            java.lang.String r0 = "com.bell.ptt"
            boolean r5 = r5.equals(r0)
            if (r5 != 0) goto L43
            goto L44
        L43:
            r3 = r1
        L44:
            switch(r3) {
                case 0: goto L83;
                case 1: goto L6a;
                case 2: goto L59;
                case 3: goto L48;
                default: goto L47;
            }
        L47:
            goto L8c
        L48:
            java.lang.String r5 = "VZW"
            boolean r5 = r5.equals(r4)
            if (r5 != 0) goto L58
            java.lang.String r5 = "VPP"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8c
        L58:
            return r2
        L59:
            java.lang.String r5 = "ATT"
            boolean r5 = r5.equals(r4)
            if (r5 != 0) goto L69
            java.lang.String r5 = "AIO"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8c
        L69:
            return r2
        L6a:
            java.lang.String r5 = "TMB"
            boolean r5 = r5.equals(r4)
            if (r5 != 0) goto L82
            java.lang.String r5 = "TMK"
            boolean r5 = r5.equals(r4)
            if (r5 != 0) goto L82
            java.lang.String r5 = "ASR"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8c
        L82:
            return r2
        L83:
            java.lang.String r5 = "BMC"
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L8c
            return r2
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.server.policy.KeyCustomizationInfoManager.isAvailablePtt(java.lang.String):boolean");
    }

    public final boolean hasPackage(String str) {
        try {
            this.mContext.getPackageManager().getApplicationInfo(str, 128);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            if (KeyCustomizationConstants.isSafeDebugInput()) {
                Log.d("KeyCustomizationInfoManager", "The " + str + " package is not found, " + e);
            }
            return false;
        }
    }

    public final String getSalesCode() {
        try {
            String str = SystemProperties.get("persist.omc.sales_code");
            if (!TextUtils.isEmpty(str)) {
                return str;
            }
            String str2 = SystemProperties.get("ro.csc.sales_code");
            return TextUtils.isEmpty(str2) ? SystemProperties.get("ril.sales_code") : str2;
        } catch (Exception unused) {
            return "";
        }
    }

    public final SemWindowManager.KeyCustomizationInfo getKodiakPttInfo(int i, String str) {
        Intent kodiakPttIntent = getKodiakPttIntent(i, str);
        if (kodiakPttIntent == null) {
            return null;
        }
        return new SemWindowManager.KeyCustomizationInfo(3, 951, i, 2, kodiakPttIntent);
    }

    public final Intent getKodiakPttIntent(int i, String str) {
        String kodiakIntentAction = getKodiakIntentAction(i);
        if (TextUtils.isEmpty(kodiakIntentAction)) {
            return null;
        }
        Intent intent = new Intent(kodiakIntentAction);
        intent.addFlags(32);
        intent.setPackage(str);
        return intent;
    }

    public void onUserSwitch(int i) {
        Slog.d("KeyCustomizationInfoManager", "onUserSwitch oldId=" + this.mUserId + " newId=" + i);
        this.mUserId = i;
        backupGlobalSideKeyInfo();
        clearAllKeyCustomizationInfoMap();
        init(i, true);
        restoreGlobalSideKeyInfo();
        synchronized (this.mLock) {
            saveSettingsLocked(i);
        }
    }

    public int getUserId() {
        return this.mUserId;
    }

    public void onUserRemove(int i) {
        File file = new File(KeyCustomizationInfoXmlUtils.getKeyCustomizationDir(i), "key_customize_info.xml");
        if (!file.exists() || file.delete()) {
            return;
        }
        Log.d("KeyCustomizationInfoManager", "Can not delete xml file when userRemove. userId=" + i);
    }

    public final void backupGlobalSideKeyInfo() {
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = get(1104, 4, 26);
        if (keyCustomizationInfo != null) {
            this.mGlobalSideKeyLongInfo = new SemWindowManager.KeyCustomizationInfo(keyCustomizationInfo.press, keyCustomizationInfo.id, keyCustomizationInfo.keyCode, keyCustomizationInfo.action, keyCustomizationInfo.intent);
        } else {
            this.mGlobalSideKeyLongInfo = null;
        }
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo2 = get(1104, 8, 26);
        if (keyCustomizationInfo2 != null) {
            this.mGlobalSideKeyDoubleInfo = new SemWindowManager.KeyCustomizationInfo(keyCustomizationInfo2.press, keyCustomizationInfo2.id, keyCustomizationInfo2.keyCode, keyCustomizationInfo2.action, keyCustomizationInfo2.intent);
        } else {
            this.mGlobalSideKeyDoubleInfo = null;
        }
    }

    public final void restoreGlobalSideKeyInfo() {
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = get(1104, 4, 26);
        SemWindowManager.KeyCustomizationInfo last = getLast(4, 26);
        if (this.mGlobalSideKeyLongInfo != null) {
            if ((keyCustomizationInfo == null && last == null) || (keyCustomizationInfo != null && keyCustomizationInfo.id == 1104)) {
                SemWindowManager.KeyCustomizationInfo keyCustomizationInfo2 = this.mGlobalSideKeyLongInfo;
                put(new SemWindowManager.KeyCustomizationInfo(keyCustomizationInfo2.press, keyCustomizationInfo2.id, keyCustomizationInfo2.keyCode, keyCustomizationInfo2.action, keyCustomizationInfo2.intent), true);
            }
        } else if ((keyCustomizationInfo == null && last == null) || (keyCustomizationInfo != null && keyCustomizationInfo.id == 1104)) {
            put(getSideKeyLongInfoFromGlobalSetting(), true);
        }
        this.mGlobalSideKeyLongInfo = null;
        SemWindowManager.KeyCustomizationInfo keyCustomizationInfo3 = get(1104, 8, 26);
        SemWindowManager.KeyCustomizationInfo last2 = getLast(8, 26);
        if (this.mGlobalSideKeyDoubleInfo != null) {
            if ((keyCustomizationInfo3 == null && last2 == null) || (keyCustomizationInfo3 != null && keyCustomizationInfo3.id == 1104)) {
                SemWindowManager.KeyCustomizationInfo keyCustomizationInfo4 = this.mGlobalSideKeyDoubleInfo;
                put(new SemWindowManager.KeyCustomizationInfo(keyCustomizationInfo4.press, keyCustomizationInfo4.id, keyCustomizationInfo4.keyCode, keyCustomizationInfo4.action, keyCustomizationInfo4.intent), true);
            }
        } else if ((keyCustomizationInfo3 == null && last2 == null) || (keyCustomizationInfo3 != null && keyCustomizationInfo3.id == 1104)) {
            SemWindowManager.KeyCustomizationInfo sideKeyDoubleInfoFromGlobalSetting = getSideKeyDoubleInfoFromGlobalSetting();
            if (sideKeyDoubleInfoFromGlobalSetting == null) {
                remove(1104, 8, 26, true);
            } else {
                put(sideKeyDoubleInfoFromGlobalSetting, true);
            }
        }
        this.mGlobalSideKeyDoubleInfo = null;
    }

    public final void clearAllKeyCustomizationInfoMap() {
        synchronized (this.mLock) {
            for (int i : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL) {
                getInfoMapLocked(i).clear();
                getLastInfoLocked(i).clear();
            }
            this.mOwnerPackageList.clear();
            this.mHotKeyMap.clear();
        }
    }

    public final void updateUserIdIfNeeded() {
        long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            int currentUser = ActivityManager.getCurrentUser();
            if (this.mUserId != currentUser) {
                Slog.d("KeyCustomizationInfoManager", "saveSettingsLocked, userId(" + this.mUserId + ") is no matched with newId(" + currentUser + ")");
                this.mUserId = currentUser;
            }
        } finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }

    public final boolean checkHomeLongPressInfo() {
        int i;
        SparseArray sparseArray = (SparseArray) getInfoMapLocked(4).get(3);
        boolean z = false;
        if (sparseArray == null) {
            Log.d("KeyCustomizationInfoManager", "There is no home key long press info.");
            return false;
        }
        ArrayList<Integer> arrayList = new ArrayList();
        for (int i2 = 0; i2 < sparseArray.size(); i2++) {
            SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.valueAt(i2);
            if (keyCustomizationInfo != null && (i = keyCustomizationInfo.id) != 10 && i != 30 && i != 50) {
                Log.d("KeyCustomizationInfoManager", "checkHomeLongPressInfo, id=" + i + " added");
                arrayList.add(Integer.valueOf(keyCustomizationInfo.id));
            }
        }
        if (arrayList.size() == 0) {
            Log.d("KeyCustomizationInfoManager", "checkHomeLongPressInfo, toRemove size is zero");
            return false;
        }
        for (Integer num : arrayList) {
            SemWindowManager.KeyCustomizationInfo keyCustomizationInfo2 = (SemWindowManager.KeyCustomizationInfo) sparseArray.get(num.intValue());
            Log.d("KeyCustomizationInfoManager", "checkHomeLongPressInfo, remove " + keyCustomizationInfo2);
            if (keyCustomizationInfo2 != null) {
                sparseArray.remove(num.intValue());
                if (num.intValue() == 2003) {
                    String str = keyCustomizationInfo2.ownerPackage;
                    removeOwnerPackageList(str);
                    Log.d("KeyCustomizationInfoManager", "Remove home key long press info, ID(" + num + "), ownerPackage=" + str);
                } else {
                    Log.d("KeyCustomizationInfoManager", "Remove home key long press info, ID(" + num + ")");
                }
                z = true;
            }
        }
        return z;
    }

    public void dump(String str, PrintWriter printWriter) {
        synchronized (this.mLock) {
            printWriter.println(this.mXmlUtils.getXmlVersion());
            printWriter.print(str);
            printWriter.println("All KeyCustomizationInfo");
            for (int i : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL) {
                SparseArray infoMapLocked = getInfoMapLocked(i);
                if (infoMapLocked.size() != 0) {
                    printWriter.print(str);
                    printWriter.print(KeyCustomizationManager.pressToString(i));
                    printWriter.println(" ---");
                    dumpKeyCustomizationInfoPressMap(str, printWriter, infoMapLocked);
                }
            }
            printWriter.println();
            printWriter.print(str);
            printWriter.println("Last KeyCustomizationInfo");
            for (int i2 : KeyCustomizationConstants.SUPPORT_PRESS_TYPE_ALL) {
                SparseArray lastInfoLocked = getLastInfoLocked(i2);
                if (lastInfoLocked.size() != 0) {
                    printWriter.print(str);
                    printWriter.print(KeyCustomizationManager.pressToString(i2));
                    printWriter.println(" ---");
                    dumpKeyCustomizationInfoKeyCodeMap(str, printWriter, lastInfoLocked);
                }
            }
            SparseArray hotKeyMapLocked = getHotKeyMapLocked();
            if (hotKeyMapLocked.size() != 0) {
                printWriter.println();
                printWriter.print(str);
                printWriter.println("HotKeys=");
                for (int i3 = 0; i3 < hotKeyMapLocked.size(); i3++) {
                    int keyAt = hotKeyMapLocked.keyAt(i3);
                    ComponentName componentName = (ComponentName) hotKeyMapLocked.get(keyAt);
                    if (componentName != null) {
                        printWriter.print(str);
                        printWriter.print(" KeyCode ");
                        printWriter.print(keyAt);
                        printWriter.print(", componentName: ");
                        printWriter.println(componentName);
                    }
                }
            }
            if (this.mOwnerPackageList.size() != 0) {
                printWriter.println();
                printWriter.print(str);
                printWriter.println("ownerPackageList:");
                Iterator it = this.mOwnerPackageList.iterator();
                while (it.hasNext()) {
                    String str2 = (String) it.next();
                    printWriter.print(str);
                    printWriter.println("    " + str2);
                }
            }
            printWriter.print(str);
            printWriter.print("UserId:");
            printWriter.println(this.mUserId);
        }
        this.mXmlUtils.dump(str, printWriter);
    }

    public final void dumpKeyCustomizationInfoPressMap(String str, PrintWriter printWriter, SparseArray sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            SparseArray sparseArray2 = (SparseArray) sparseArray.valueAt(i);
            if (sparseArray2.size() != 0) {
                printWriter.print(str);
                printWriter.println("    KEY_CODE(" + sparseArray.keyAt(i) + ") :");
                dumpKeyCustomizationInfoKeyCodeMap(str, printWriter, sparseArray2);
            }
        }
    }

    public final void dumpKeyCustomizationInfoKeyCodeMap(String str, PrintWriter printWriter, SparseArray sparseArray) {
        for (int i = 0; i < sparseArray.size(); i++) {
            SemWindowManager.KeyCustomizationInfo keyCustomizationInfo = (SemWindowManager.KeyCustomizationInfo) sparseArray.valueAt(i);
            if (keyCustomizationInfo != null) {
                printWriter.print(str);
                printWriter.print("      ");
                printWriter.print(KeyCustomizationManager.idToString(keyCustomizationInfo.id));
                printWriter.print(", keyCode: ");
                printWriter.print(keyCustomizationInfo.keyCode);
                printWriter.print(", ");
                printWriter.print(KeyCustomizationManager.actionToString(keyCustomizationInfo.action));
                int i2 = keyCustomizationInfo.dispatching;
                if (i2 == -1) {
                    printWriter.print(", dispatching: ");
                    printWriter.print(i2);
                }
                int i3 = keyCustomizationInfo.userId;
                if (i3 != -2) {
                    printWriter.print(", userId: ");
                    printWriter.print(i3);
                }
                long j = keyCustomizationInfo.longPressTimeout;
                if (j != 0) {
                    printWriter.print(", longPressTimeout: ");
                    printWriter.print(j);
                }
                long j2 = keyCustomizationInfo.multiPressTimeout;
                if (j2 != 0) {
                    printWriter.print(", multiPressTimeout: ");
                    printWriter.print(j2);
                }
                String str2 = keyCustomizationInfo.ownerPackage;
                if (!TextUtils.isEmpty(str2)) {
                    printWriter.print(", ownerPackage: ");
                    printWriter.println(str2);
                    printWriter.print(str);
                    printWriter.print("        ");
                }
                if (keyCustomizationInfo.intent != null) {
                    printWriter.print(", ");
                    printWriter.println(keyCustomizationInfo.intent);
                } else {
                    printWriter.println(", intent is null.");
                }
            }
        }
    }
}
