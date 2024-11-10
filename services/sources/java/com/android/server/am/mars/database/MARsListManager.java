package java.com.android.server.am.mars.database;

import android.util.Slog;
import android.util.Xml;
import com.android.internal.util.XmlUtils;
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

/* loaded from: classes2.dex */
public class MARsListManager {
    public static final String TAG = "MARsListManager";
    public ArrayList mAdjustRestrictionDefault;
    public final Set mCalmModeDefaultList;
    public final Set mCalmModeFilterList;
    public ArrayList mExcludePackageDefault;
    public final Set mFgsExemptionPackages;
    public final Set mFilterList;
    public final Set mFreezeExcludeList;
    public File mListFile;
    public final Set mLocationPackages;
    public final Set mOLAFAllowPackages;
    public final Set mOlafUfzList;
    public final ArrayList mPendingBlocklistForGPS;
    public final ArrayList mPendingIntentIdleList;
    public final ArrayList mPendingIntentList;
    public final Set mSsrmAllowPackages;

    /* loaded from: classes2.dex */
    public abstract class ListManagerHolder {
        public static final MARsListManager INSTANCE = new MARsListManager();
    }

    public MARsListManager() {
        this.mFgsExemptionPackages = new HashSet();
        this.mSsrmAllowPackages = new HashSet();
        this.mOLAFAllowPackages = new HashSet();
        this.mFreezeExcludeList = new HashSet();
        this.mFilterList = new HashSet();
        this.mOlafUfzList = new HashSet();
        this.mCalmModeFilterList = new HashSet();
        this.mCalmModeDefaultList = new HashSet();
        this.mLocationPackages = new HashSet();
        this.mPendingIntentList = new ArrayList();
        this.mPendingIntentIdleList = new ArrayList();
        this.mPendingBlocklistForGPS = new ArrayList();
        this.mExcludePackageDefault = new ArrayList();
        this.mAdjustRestrictionDefault = new ArrayList();
        File file = new File("/system/etc/mars/mars_list.xml");
        this.mListFile = file;
        if (!file.exists()) {
            Slog.d(TAG, "No xml file exists.");
        } else {
            readConfigFileLocked();
        }
    }

    public static MARsListManager getInstance() {
        return ListManagerHolder.INSTANCE;
    }

    public void readConfigFileLocked() {
        if (MARsDebugConfig.DEBUG_MARs) {
            Slog.d(TAG, "Reading config from " + this.mListFile.getAbsoluteFile());
        }
        clearLists();
        try {
            FileInputStream fileInputStream = new FileInputStream(this.mListFile);
            try {
                XmlPullParser newPullParser = Xml.newPullParser();
                newPullParser.setInput(fileInputStream, StandardCharsets.UTF_8.name());
                readConfigFileLocked(newPullParser);
                fileInputStream.close();
            } finally {
            }
        } catch (Exception e) {
            Slog.w(TAG, "parsing config file error" + e);
        }
    }

    public final void readConfigFileLocked(XmlPullParser xmlPullParser) {
        int next;
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
            if (next2 == 1) {
                return;
            }
            if (next2 == 3 && xmlPullParser.getDepth() >= depth) {
                return;
            }
            if (next2 != 3 && next2 != 4) {
                parseTag(xmlPullParser, xmlPullParser.getName());
            }
        }
    }

    public final void parseTag(XmlPullParser xmlPullParser, String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1986544499:
                if (str.equals("olaf-allow-list")) {
                    c = 0;
                    break;
                }
                break;
            case -1852223281:
                if (str.equals("block-alarm-wakeup-app")) {
                    c = 1;
                    break;
                }
                break;
            case -1486702593:
                if (str.equals("allow-essential-intent")) {
                    c = 2;
                    break;
                }
                break;
            case -1398089185:
                if (str.equals("allow-async-binder")) {
                    c = 3;
                    break;
                }
                break;
            case -1169587189:
                if (str.equals("pending-broadcast")) {
                    c = 4;
                    break;
                }
                break;
            case -1085204905:
                if (str.equals("calm-mode-filter-list")) {
                    c = 5;
                    break;
                }
                break;
            case -1016223578:
                if (str.equals("calm-mode-default-list")) {
                    c = 6;
                    break;
                }
                break;
            case -1015787065:
                if (str.equals("block-top-activity")) {
                    c = 7;
                    break;
                }
                break;
            case -936349229:
                if (str.equals("filter-list")) {
                    c = '\b';
                    break;
                }
                break;
            case -722295769:
                if (str.equals("freeze-exclude-list")) {
                    c = '\t';
                    break;
                }
                break;
            case -661340805:
                if (str.equals("allow-asyncbinder-fgs-app")) {
                    c = '\n';
                    break;
                }
                break;
            case -634056051:
                if (str.equals("olaf-ufz-list")) {
                    c = 11;
                    break;
                }
                break;
            case -527987546:
                if (str.equals("block-foregroundservice-app")) {
                    c = '\f';
                    break;
                }
                break;
            case -338362296:
                if (str.equals("pending-gps-app")) {
                    c = '\r';
                    break;
                }
                break;
            case -276683028:
                if (str.equals("allow-async-binder-callee")) {
                    c = 14;
                    break;
                }
                break;
            case -229416577:
                if (str.equals("block-deepsleep-app")) {
                    c = 15;
                    break;
                }
                break;
            case -210244197:
                if (str.equals("allow-foreground-app")) {
                    c = 16;
                    break;
                }
                break;
            case -136865932:
                if (str.equals("block-faketop-app")) {
                    c = 17;
                    break;
                }
                break;
            case 42195062:
                if (str.equals("except-mars-policy")) {
                    c = 18;
                    break;
                }
                break;
            case 358216549:
                if (str.equals("block-alarm-app")) {
                    c = 19;
                    break;
                }
                break;
            case 395819423:
                if (str.equals("force-block-chinese-app")) {
                    c = 20;
                    break;
                }
                break;
            case 520269953:
                if (str.equals("allow-bgaudio-app")) {
                    c = 21;
                    break;
                }
                break;
            case 715447572:
                if (str.equals("ssrm-allow-list")) {
                    c = 22;
                    break;
                }
                break;
            case 788611475:
                if (str.equals("allow-alarm-wakeup-app")) {
                    c = 23;
                    break;
                }
                break;
            case 1041464171:
                if (str.equals("block-china-app")) {
                    c = 24;
                    break;
                }
                break;
            case 1067402210:
                if (str.equals("location-app-list")) {
                    c = 25;
                    break;
                }
                break;
            case 1191286561:
                if (str.equals("allow-alarm-app")) {
                    c = 26;
                    break;
                }
                break;
            case 1489630950:
                if (str.equals("allow-setwindow-alarm-app")) {
                    c = 27;
                    break;
                }
                break;
            case 1659381294:
                if (str.equals("allow-in-fgs")) {
                    c = 28;
                    break;
                }
                break;
            case 1692509307:
                if (str.equals("block-instrument-app")) {
                    c = 29;
                    break;
                }
                break;
            case 1874534183:
                if (str.equals("allow-china-app")) {
                    c = 30;
                    break;
                }
                break;
            case 1972998838:
                if (str.equals("block-associated-activity")) {
                    c = 31;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                parseAttributeValue(xmlPullParser, "package", str, this.mOLAFAllowPackages);
                return;
            case 1:
            case 2:
            case 3:
            case 7:
            case '\n':
            case '\f':
            case 14:
            case 15:
            case 16:
            case 17:
            case 19:
            case 20:
            case 21:
            case 23:
            case 24:
            case 26:
            case 27:
            case 29:
            case 30:
            case 31:
                MARsVersionManager.AdjustRestriction adjustRestrictionFromParser = getAdjustRestrictionFromParser(xmlPullParser);
                this.mAdjustRestrictionDefault.add(adjustRestrictionFromParser);
                if (MARsDebugConfig.DEBUG_MARs) {
                    Slog.d(TAG, "<" + str + "> " + adjustRestrictionFromParser);
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
            case 4:
                String attributeValue = xmlPullParser.getAttributeValue(null, "isAllowed");
                String attributeValue2 = xmlPullParser.getAttributeValue(null, "action");
                if ("idle".equals(attributeValue)) {
                    this.mPendingIntentIdleList.add(attributeValue2);
                } else {
                    this.mPendingIntentList.add(attributeValue2);
                }
                if (MARsDebugConfig.DEBUG_MARs) {
                    Slog.d(TAG, "<" + str + "> " + attributeValue2);
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
            case 5:
                parseAttributeValue(xmlPullParser, "filter", str, this.mCalmModeFilterList);
                return;
            case 6:
                parseAttributeValue(xmlPullParser, "package", str, this.mCalmModeDefaultList);
                return;
            case '\b':
                parseAttributeValue(xmlPullParser, "filter", str, this.mFilterList);
                return;
            case '\t':
                parseAttributeValue(xmlPullParser, "package", str, this.mFreezeExcludeList);
                return;
            case 11:
                parseAttributeValue(xmlPullParser, "filter", str, this.mOlafUfzList);
                return;
            case '\r':
                String attributeValue3 = xmlPullParser.getAttributeValue(null, "callee");
                this.mPendingBlocklistForGPS.add(attributeValue3);
                if (MARsDebugConfig.DEBUG_MARs) {
                    Slog.d(TAG, "<" + str + "> " + attributeValue3);
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
            case 18:
                int parseInt = Integer.parseInt(xmlPullParser.getAttributeValue(null, "policynum"));
                int parseInt2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "condition"));
                String attributeValue4 = xmlPullParser.getAttributeValue(null, "matchType");
                String attributeValue5 = xmlPullParser.getAttributeValue(null, "package");
                if (attributeValue5 != null) {
                    MARsVersionManager mARsVersionManager = MARsVersionManager.getInstance();
                    Objects.requireNonNull(mARsVersionManager);
                    MARsVersionManager.AdjustTargetExcludePackage adjustTargetExcludePackage = new MARsVersionManager.AdjustTargetExcludePackage(parseInt, parseInt2, attributeValue4, attributeValue5);
                    this.mExcludePackageDefault.add(adjustTargetExcludePackage);
                    if (MARsDebugConfig.DEBUG_MARs) {
                        Slog.d(TAG, "<" + str + "> " + adjustTargetExcludePackage);
                    }
                }
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
            case 22:
                parseAttributeValue(xmlPullParser, "package", str, this.mSsrmAllowPackages);
                return;
            case 25:
                parseAttributeValue(xmlPullParser, "package", str, this.mLocationPackages);
                return;
            case 28:
                parseAttributeValue(xmlPullParser, "package", str, this.mFgsExemptionPackages);
                return;
            default:
                Slog.w(TAG, "Unknown element under <config>: " + str);
                XmlUtils.skipCurrentTag(xmlPullParser);
                return;
        }
    }

    public void parseAttributeValue(XmlPullParser xmlPullParser, String str, String str2, Set set) {
        String attributeValue = xmlPullParser.getAttributeValue(null, str);
        if (attributeValue != null) {
            set.add(attributeValue);
            if (MARsDebugConfig.DEBUG_MARs) {
                Slog.d(TAG, "<" + str2 + "> " + attributeValue);
            }
            XmlUtils.skipCurrentTag(xmlPullParser);
        }
    }

    public MARsVersionManager.AdjustRestriction getAdjustRestrictionFromParser(XmlPullParser xmlPullParser) {
        MARsVersionManager mARsVersionManager = MARsVersionManager.getInstance();
        Objects.requireNonNull(mARsVersionManager);
        return new MARsVersionManager.AdjustRestriction(Integer.parseInt(xmlPullParser.getAttributeValue(null, "restrictionType")), xmlPullParser.getAttributeValue(null, "isAllowed"), xmlPullParser.getAttributeValue(null, "callee"), xmlPullParser.getAttributeValue(null, "caller"), xmlPullParser.getAttributeValue(null, "matchType"), xmlPullParser.getAttributeValue(null, "action"));
    }

    public void clearLists() {
        this.mFgsExemptionPackages.clear();
        this.mSsrmAllowPackages.clear();
        this.mOLAFAllowPackages.clear();
        this.mFreezeExcludeList.clear();
        this.mFilterList.clear();
        this.mOlafUfzList.clear();
        this.mCalmModeFilterList.clear();
        this.mCalmModeDefaultList.clear();
        this.mLocationPackages.clear();
        this.mExcludePackageDefault.clear();
        this.mAdjustRestrictionDefault.clear();
    }

    public Set getFgsExemptionPackages() {
        return this.mFgsExemptionPackages;
    }

    public Set getSsrmAllowPackages() {
        return this.mSsrmAllowPackages;
    }

    public Set getOLAFAllowPackages() {
        return this.mOLAFAllowPackages;
    }

    public Set getFreezeExcludePackages() {
        return this.mFreezeExcludeList;
    }

    public Set getFilterList() {
        return this.mFilterList;
    }

    public Set getOlafUfzList() {
        return this.mOlafUfzList;
    }

    public Set getCalmModefilterList() {
        return this.mCalmModeFilterList;
    }

    public Set getCalmModeDefaultList() {
        return this.mCalmModeDefaultList;
    }

    public Set getLocationAppPackages() {
        return this.mLocationPackages;
    }

    public ArrayList getPendingIntentList() {
        return this.mPendingIntentList;
    }

    public ArrayList getPendingIntentIdleList() {
        return this.mPendingIntentIdleList;
    }

    public ArrayList getPendingBlockListForGPS() {
        return this.mPendingBlocklistForGPS;
    }

    public ArrayList getExcludePackageDefault() {
        return this.mExcludePackageDefault;
    }

    public ArrayList getAdjustRestrictionDefault() {
        return this.mAdjustRestrictionDefault;
    }
}
