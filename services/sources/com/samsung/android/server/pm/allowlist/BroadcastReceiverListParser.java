package com.samsung.android.server.pm.allowlist;

import android.content.IntentFilter;
import android.os.Environment;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Xml;
import com.samsung.android.knox.custom.KnoxCustomManagerService;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.function.BiConsumer;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public class BroadcastReceiverListParser {
    public static boolean FW_BR_ALLOW_LIST_WITH_SCPM = true;
    public final List mRestrictedIntents = new ArrayList();
    public final Set mAllowedPkgNames = new HashSet();
    public final List mAllowedPkgPrefixNames = new ArrayList();
    public final Set mRestrictedPkgNames = new HashSet();
    public final List mRestrictedPkgPrefixNames = new ArrayList();
    public final Map mIntentMap = new ArrayMap();
    public boolean mIsWorkCompChangedEnabled = true;

    public Map getPackageMap() {
        final ArrayMap arrayMap = new ArrayMap();
        this.mIntentMap.forEach(new BiConsumer() { // from class: com.samsung.android.server.pm.allowlist.BroadcastReceiverListParser$$ExternalSyntheticLambda0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                BroadcastReceiverListParser.lambda$getPackageMap$0(arrayMap, (String) obj, (Set) obj2);
            }
        });
        return arrayMap;
    }

    public static /* synthetic */ void lambda$getPackageMap$0(Map map, String str, Set set) {
        if (set == null || set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            Set set2 = (Set) map.get(str2);
            if (set2 == null) {
                set2 = new HashSet();
            }
            if (!set2.contains(str)) {
                set2.add(str);
            }
            map.put(str2, set2);
        }
    }

    public List getRestricedIntent() {
        return this.mRestrictedIntents;
    }

    public Set getAllowedPackageNames() {
        return this.mAllowedPkgNames;
    }

    public List getAllowedPackagePrefixNames() {
        return this.mAllowedPkgPrefixNames;
    }

    public Set getRestrictedPackageNames() {
        return this.mRestrictedPkgNames;
    }

    public List getRestrictedPackagePrefixNames() {
        return this.mRestrictedPkgPrefixNames;
    }

    public boolean isWorkCompChangedEnabled() {
        return this.mIsWorkCompChangedEnabled;
    }

    public boolean isInAllowList(String str, String str2, IntentFilter intentFilter) {
        if (isAllowedPackage(str2) || isAllowedIntentOfPackage(str, str2)) {
            return true;
        }
        if (isPackageXXXIntent(str) && hasPackageSSP(intentFilter)) {
            return true;
        }
        Log.e("BRListParser", "isInAllowList() Intent=" + str + " Package=" + str2 + " is not in allowlist!");
        return false;
    }

    public boolean isInRestrictedPackageList(String str) {
        if (this.mRestrictedPkgNames.contains(str)) {
            return true;
        }
        Iterator it = this.mRestrictedPkgPrefixNames.iterator();
        while (it.hasNext()) {
            if (str.startsWith((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isAllowedPackage(String str) {
        if (this.mAllowedPkgNames.contains(str)) {
            return true;
        }
        Iterator it = this.mAllowedPkgPrefixNames.iterator();
        while (it.hasNext()) {
            if (str.startsWith((String) it.next())) {
                return true;
            }
        }
        return false;
    }

    public final boolean isAllowedIntentOfPackage(String str, String str2) {
        return this.mIntentMap.containsKey(str) && ((Set) this.mIntentMap.get(str)).contains(str2);
    }

    public void parseAllowList() {
        parseAllowList(null);
    }

    public void parseAllowList(String str) {
        parseAllowListInternal(str);
    }

    public final void parseAllowListInternal(String str) {
        if (TextUtils.isEmpty(str)) {
            str = Environment.getRootDirectory() + "/etc/broadcast_allowlist.xml";
        }
        File file = new File(str);
        if (!file.exists()) {
            Log.d("BRListParser", "No xml file exists.");
        }
        XmlPullParser newPullParser = Xml.newPullParser();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                newPullParser.setInput(fileInputStream, null);
                parseAllowListElement(newPullParser);
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (FileNotFoundException e) {
            Log.e("BRListParser", "Failed to parse allowlist. FileNotFoundException " + e);
        } catch (IOException e2) {
            Log.d("BRListParser", "Failed to parse allowlist. IOException " + e2);
        } catch (XmlPullParserException e3) {
            Log.e("BRListParser", "Failed to parse allowlist. XmlPullParserException " + e3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0063, code lost:
    
        if (r1.equals(com.samsung.android.knox.custom.LauncherConfigurationInternal.KEY_FEATURE_INT) == false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void parseAllowListElement(org.xmlpull.v1.XmlPullParser r8) {
        /*
            Method dump skipped, instructions count: 342
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.samsung.android.server.pm.allowlist.BroadcastReceiverListParser.parseAllowListElement(org.xmlpull.v1.XmlPullParser):void");
    }

    public List parsePackages(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && xmlPullParser.getName().equals("package")) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                if (!TextUtils.isEmpty(attributeValue) && !arrayList.contains(attributeValue)) {
                    arrayList.add(attributeValue);
                }
            }
        }
        return arrayList;
    }

    public final List parseIntents(XmlPullParser xmlPullParser) {
        int depth = xmlPullParser.getDepth();
        ArrayList arrayList = new ArrayList();
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || (next == 3 && xmlPullParser.getDepth() <= depth)) {
                break;
            }
            if (next != 3 && next != 4 && xmlPullParser.getName().equals(KnoxCustomManagerService.INTENT)) {
                String attributeValue = xmlPullParser.getAttributeValue(null, "action");
                if (!TextUtils.isEmpty(attributeValue) && !arrayList.contains(attributeValue)) {
                    arrayList.add(attributeValue);
                }
            }
        }
        return arrayList;
    }

    public static boolean isPackageXXXIntent(String str) {
        return str != null && str.startsWith("android.intent.action.PACKAGE_");
    }

    public static boolean hasPackageSSP(IntentFilter intentFilter) {
        return intentFilter != null && intentFilter.hasDataScheme("package") && intentFilter.countDataSchemeSpecificParts() > 0;
    }
}
