package java.com.android.server.am.mars.database;

import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
import com.android.server.WallpaperUpdateReceiver$$ExternalSyntheticOutline0;
import com.android.server.alarm.GmsAlarmManager$$ExternalSyntheticOutline0;
import com.android.server.am.mars.MARsDebugConfig;
import com.android.server.am.mars.database.MARsVersionManager;
import java.io.File;
import java.io.FileInputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
/* loaded from: classes2.dex */
public final class MARsListManager {
    public final ArrayList mAdjustRestrictionDefault;
    public final Set mCalmModeDefaultList;
    public final Set mCalmModeFilterList;
    public final Set mCtsGtsList;
    public final ArrayList mExcludePackageDefault;
    public final Set mFastOlafUfzList;
    public final Set mFgsExemptionPackages;
    public final Set mFilterList;
    public final Set mFreezeExcludeList;
    public final Set mGoogleFreezerExemptionList;
    public final File mListFile;
    public final Set mLocationPackages;
    public final Set mOLAFAllowPackageGlobal;
    public final Set mOLAFAllowPackages;
    public final Set mOlafUfzList;
    public final ArrayList mPendingBlocklistForGPS;
    public final ArrayList mPendingIntentIdleList;
    public final ArrayList mPendingIntentList;
    public final Set mSsrmAllowPackages;

    /* compiled from: qb/89523975 b19e8d3036bb0bb04c0b123e55579fdc5d41bbd9c06260ba21f1b25f8ce00bef */
    public abstract class ListManagerHolder {
        public static final MARsListManager INSTANCE = new MARsListManager();
    }

    public MARsListManager() {
        HashSet hashSet = new HashSet();
        this.mFgsExemptionPackages = hashSet;
        HashSet hashSet2 = new HashSet();
        this.mSsrmAllowPackages = hashSet2;
        HashSet hashSet3 = new HashSet();
        this.mOLAFAllowPackages = hashSet3;
        HashSet hashSet4 = new HashSet();
        this.mOLAFAllowPackageGlobal = hashSet4;
        HashSet hashSet5 = new HashSet();
        this.mFreezeExcludeList = hashSet5;
        HashSet hashSet6 = new HashSet();
        this.mFilterList = hashSet6;
        HashSet hashSet7 = new HashSet();
        this.mOlafUfzList = hashSet7;
        HashSet hashSet8 = new HashSet();
        this.mFastOlafUfzList = hashSet8;
        HashSet hashSet9 = new HashSet();
        this.mCalmModeFilterList = hashSet9;
        HashSet hashSet10 = new HashSet();
        this.mCalmModeDefaultList = hashSet10;
        HashSet hashSet11 = new HashSet();
        this.mLocationPackages = hashSet11;
        HashSet hashSet12 = new HashSet();
        this.mCtsGtsList = hashSet12;
        this.mPendingIntentList = new ArrayList();
        this.mPendingIntentIdleList = new ArrayList();
        this.mPendingBlocklistForGPS = new ArrayList();
        ArrayList arrayList = new ArrayList();
        this.mExcludePackageDefault = arrayList;
        ArrayList arrayList2 = new ArrayList();
        this.mAdjustRestrictionDefault = arrayList2;
        this.mGoogleFreezerExemptionList = new HashSet();
        File file = new File("/system/etc/mars/mars_list.xml");
        this.mListFile = file;
        if (!file.exists()) {
            Slog.d("MARsListManager", "No xml file exists.");
            return;
        }
        if (MARsDebugConfig.DEBUG_MARs) {
            Slog.d("MARsListManager", "Reading config from " + file.getAbsoluteFile());
        }
        hashSet.clear();
        hashSet2.clear();
        hashSet3.clear();
        hashSet4.clear();
        hashSet5.clear();
        hashSet6.clear();
        hashSet7.clear();
        hashSet8.clear();
        hashSet9.clear();
        hashSet10.clear();
        hashSet11.clear();
        arrayList.clear();
        arrayList2.clear();
        hashSet12.clear();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(fileInputStream, StandardCharsets.UTF_8.name());
                readConfigFileLocked(newPullParser);
                fileInputStream.close();
            } finally {
            }
        } catch (Exception e) {
            WallpaperUpdateReceiver$$ExternalSyntheticOutline0.m(e, "parsing config file error", "MARsListManager");
        }
    }

    public static void parseAttributeValue(XmlPullParser xmlPullParser, String str, String str2, Set set) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            set.add(attributeValue);
            if (MARsDebugConfig.DEBUG_MARs) {
                GmsAlarmManager$$ExternalSyntheticOutline0.m("<", str2, "> ", attributeValue, "MARsListManager");
            }
            XmlUtils.skipCurrentTag(xmlPullParser);
        }
    }

    public final void readConfigFileLocked(XmlPullParser xmlPullParser) {
        int next;
        String name;
        int i = 4;
        int i2 = 3;
        int i3 = 1;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (!xmlPullParser.getName().equals("mars-list")) {
            throw new XmlPullParserException("Unexpected start tag in " + this.mListFile + ": found " + xmlPullParser.getName() + ", expected 'mars-list'");
        }
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next2 = xmlPullParser.next();
            if (next2 == i3) {
                return;
            }
            if (next2 == i2 && xmlPullParser.getDepth() >= depth) {
                return;
            }
            if (next2 != i2 && next2 != i) {
                name = xmlPullParser.getName();
                name.getClass();
                switch (name) {
                    case "olaf-allow-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mOLAFAllowPackages);
                        break;
                    case "block-alarm-wakeup-app":
                    case "allow-essential-intent":
                    case "allow-async-binder":
                    case "block-top-activity":
                    case "allow-asyncbinder-fgs-app":
                    case "block-foregroundservice-app":
                    case "allow-async-binder-callee":
                    case "block-deepsleep-app":
                    case "allow-foreground-app":
                    case "block-faketop-app":
                    case "block-alarm-app":
                    case "force-block-chinese-app":
                    case "allow-bgaudio-app":
                    case "allow-alarm-wakeup-app":
                    case "block-china-app":
                    case "allow-alarm-app":
                    case "allow-setwindow-alarm-app":
                    case "block-instrument-app":
                    case "allow-china-app":
                    case "block-associated-activity":
                        String[][] strArr = MARsVersionManager.mMARsSettingsInfoDefault;
                        Objects.requireNonNull(MARsVersionManager.MARsVersionManagerHolder.INSTANCE);
                        MARsVersionManager.AdjustRestriction adjustRestriction = new MARsVersionManager.AdjustRestriction(xmlPullParser.getAttributeValue(null, "isAllowed"), xmlPullParser.getAttributeValue(null, "callee"), xmlPullParser.getAttributeValue(null, "caller"), xmlPullParser.getAttributeValue(null, "matchType"), xmlPullParser.getAttributeValue(null, "action"), Integer.parseInt(xmlPullParser.getAttributeValue(null, "restrictionType")));
                        this.mAdjustRestrictionDefault.add(adjustRestriction);
                        if (MARsDebugConfig.DEBUG_MARs) {
                            Slog.d("MARsListManager", "<" + name + "> " + adjustRestriction);
                        }
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        break;
                    case "pending-broadcast":
                        String attributeValue = xmlPullParser.getAttributeValue(null, "isAllowed");
                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "action");
                        if ("idle".equals(attributeValue)) {
                            this.mPendingIntentIdleList.add(attributeValue2);
                        } else {
                            this.mPendingIntentList.add(attributeValue2);
                        }
                        if (MARsDebugConfig.DEBUG_MARs) {
                            GmsAlarmManager$$ExternalSyntheticOutline0.m("<", name, "> ", attributeValue2, "MARsListManager");
                        }
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        break;
                    case "calm-mode-filter-list":
                        parseAttributeValue(xmlPullParser, "filter", name, this.mCalmModeFilterList);
                        break;
                    case "calm-mode-default-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mCalmModeDefaultList);
                        break;
                    case "filter-list":
                        parseAttributeValue(xmlPullParser, "filter", name, this.mFilterList);
                        break;
                    case "freeze-exclude-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mFreezeExcludeList);
                        break;
                    case "olaf-ufz-list":
                        parseAttributeValue(xmlPullParser, "filter", name, this.mOlafUfzList);
                        break;
                    case "pending-gps-app":
                        String attributeValue3 = xmlPullParser.getAttributeValue(null, "callee");
                        this.mPendingBlocklistForGPS.add(attributeValue3);
                        if (MARsDebugConfig.DEBUG_MARs) {
                            GmsAlarmManager$$ExternalSyntheticOutline0.m("<", name, "> ", attributeValue3, "MARsListManager");
                        }
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        break;
                    case "cts-gts-app-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mCtsGtsList);
                        break;
                    case "except-mars-policy":
                        int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "policynum"));
                        int parseInt2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "condition"));
                        String attributeValue4 = xmlPullParser.getAttributeValue(null, "matchType");
                        String attributeValue5 = xmlPullParser.getAttributeValue(null, "package");
                        if (attributeValue5 != null) {
                            String[][] strArr2 = MARsVersionManager.mMARsSettingsInfoDefault;
                            Objects.requireNonNull(MARsVersionManager.MARsVersionManagerHolder.INSTANCE);
                            MARsVersionManager.AdjustTargetExcludePackage adjustTargetExcludePackage = new MARsVersionManager.AdjustTargetExcludePackage(parseInt, parseInt2, attributeValue4, attributeValue5);
                            this.mExcludePackageDefault.add(adjustTargetExcludePackage);
                            if (MARsDebugConfig.DEBUG_MARs) {
                                Slog.d("MARsListManager", "<" + name + "> " + adjustTargetExcludePackage);
                            }
                        }
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        break;
                    case "ssrm-allow-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mSsrmAllowPackages);
                        break;
                    case "freezer-exemption-list":
                        parseAttributeValue(xmlPullParser, "process", name, this.mGoogleFreezerExemptionList);
                        break;
                    case "location-app-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mLocationPackages);
                        break;
                    case "allow-in-fgs":
                        parseAttributeValue(xmlPullParser, "package", name, this.mFgsExemptionPackages);
                        break;
                    case "fast-olaf-ufz-list":
                        parseAttributeValue(xmlPullParser, "filter", name, this.mFastOlafUfzList);
                        break;
                    case "olaf-allow-global-list":
                        parseAttributeValue(xmlPullParser, "package", name, this.mOLAFAllowPackageGlobal);
                        break;
                    default:
                        Slog.w("MARsListManager", "Unknown element under <config>: ".concat(name));
                        XmlUtils.skipCurrentTag(xmlPullParser);
                        break;
                }
                i = 4;
                i2 = 3;
                i3 = 1;
            }
        }
    }
}
