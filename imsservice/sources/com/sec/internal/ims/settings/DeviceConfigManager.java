package com.sec.internal.ims.settings;

import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MergeCursor;
import android.net.Uri;
import android.os.RemoteException;
import android.os.SemSystemProperties;
import android.os.ServiceManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.android.internal.telephony.ITelephony;
import com.sec.ims.configuration.DATA;
import com.sec.ims.settings.ImsProfile;
import com.sec.ims.settings.ImsSettings;
import com.sec.ims.settings.NvConfiguration;
import com.sec.ims.settings.UserConfiguration;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.ImsConstants;
import com.sec.internal.constants.ims.MIMEContentType;
import com.sec.internal.constants.ims.VowifiConfig;
import com.sec.internal.constants.ims.core.SimConstants;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.ImsSharedPrefHelper;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.SimpleEventLog;
import com.sec.internal.helper.UriUtil;
import com.sec.internal.helper.XmlUtils;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.config.adapters.StorageAdapter;
import com.sec.internal.ims.core.sim.SimManagerFactory;
import com.sec.internal.ims.rcs.RcsPolicyManager;
import com.sec.internal.ims.settings.ImsServiceSwitch;
import com.sec.internal.ims.settings.SettingsProviderUtility;
import com.sec.internal.ims.util.CscParser;
import com.sec.internal.imscr.LogClass;
import com.sec.internal.interfaces.ims.config.IStorageAdapter;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class DeviceConfigManager {
    private static final String CONFIG_URI = "content://com.samsung.rcs.dmconfigurationprovider/";
    public static final String DEFAULTMSGAPPINUSE = "defaultmsgappinuse";
    private static final String DEFAULT_DATABASE_NAME = "DEFAULT";
    private static final String DEFAULT_DMCONFIG_NAME = "default";
    public static final String IMS = "ims";
    private static final String IMS_TEST_MODE = "IMS_TEST_MODE";
    private static final Object LOCK = new Object();
    public static final String LOG_TAG = "DeviceConfigManager";
    public static final String NV_INIT_DONE = "nv_init_done";
    public static final String NV_VERSION_DEFAULT = "1";
    public static final String NV_VERSION_USC_NR_OOB = "2";
    private static final String OMADM_DB_NAME_PREFIX = "OMADM_";
    public static final String OMADM_PREFIX = "omadm/./3GPP_IMS/";
    private static final String OMC_CODE_PROPERTY = "ro.csc.sales_code";
    public static final String RCS = "rcs";
    public static final String RCS_SWITCH = "rcsswitch";
    public static final String VOLTE = "volte";
    private Context mContext;
    private DebugConfigStorage mDebugConfigStorage;
    protected IStorageAdapter mDmStorage;
    private SimpleEventLog mEventLog;
    private ImsServiceSwitch mImsServiceSwitch;
    private Mno mMno;
    private NvStorage mNvStorage;
    private int mPhoneId;
    private ImsProfileCache mProfileCache;
    private SmsSetting mSmsSetting;
    private UserConfigStorage mUserConfigStorage;
    private ArrayList<String> mNvList = new ArrayList<>();
    private String mMvnoName = "";
    private SimConstants.SIM_STATE mLastSimState = SimConstants.SIM_STATE.UNKNOWN;

    public DeviceConfigManager(Context context, int i) {
        boolean z = false;
        this.mPhoneId = 0;
        this.mNvStorage = null;
        this.mDmStorage = null;
        this.mMno = Mno.DEFAULT;
        this.mContext = context;
        this.mPhoneId = i;
        this.mEventLog = new SimpleEventLog(context, i, LOG_TAG, 300);
        this.mMno = Mno.DEFAULT;
        String previousMno = GlobalSettingsManager.getInstance(this.mContext, i).getGlobalSettings().getPreviousMno();
        if ("".equals(previousMno)) {
            this.mMno = Mno.fromSalesCode(OmcCode.getNWCode(i));
        } else {
            this.mMno = Mno.fromName(previousMno);
        }
        Mno mno = this.mMno;
        if (mno == Mno.GCF && !TextUtils.equals(mno.getName().toUpperCase(), previousMno.toUpperCase())) {
            z = true;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "needToRefreshGcf : " + z);
        ImsProfileCache imsProfileCache = new ImsProfileCache(this.mContext, this.mMno.getName(), i);
        this.mProfileCache = imsProfileCache;
        imsProfileCache.load(z);
        this.mSmsSetting = new SmsSetting(this.mContext, this.mPhoneId);
        updateNvList();
        if (!this.mNvList.isEmpty()) {
            this.mNvStorage = new NvStorage(this.mContext, this.mMno.getMatchedNetworkCode(OmcCode.getNWCode(this.mPhoneId)), this.mPhoneId);
        }
        this.mDmStorage = new StorageAdapter();
        this.mUserConfigStorage = new UserConfigStorage(this.mContext, previousMno, i);
        this.mDebugConfigStorage = new DebugConfigStorage(this.mContext);
        this.mImsServiceSwitch = new ImsServiceSwitch(this.mContext, this.mPhoneId);
        if (SettingsProviderUtility.getDbCreatState(this.mContext) == SettingsProviderUtility.DB_CREAT_STATE.DB_CREATING_FAIL && restoreDefaultImsProfile()) {
            SettingsProviderUtility.setDbCreated(this.mContext, true);
        }
    }

    void readInitialConfigFromXml(XmlPullParser xmlPullParser, List<String> list, SparseArray<String> sparseArray, ContentValues contentValues, Map<String, String> map) {
        boolean containsKey = contentValues.containsKey("omadm/./3GPP_IMS/nv_init_done");
        int i = -1;
        while (true) {
            try {
                int next = xmlPullParser.next();
                if (next == 1) {
                    return;
                }
                if (next == 2 && ImsConstants.Intents.EXTRA_UPDATED_ITEM.equalsIgnoreCase(xmlPullParser.getName())) {
                    i = Integer.parseInt(xmlPullParser.getAttributeValue(0));
                } else if (next == 3) {
                    if ("configuration".equalsIgnoreCase(xmlPullParser.getName())) {
                        return;
                    }
                } else if (next == 4 && xmlPullParser.getText().trim().length() > 0) {
                    String replace = ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(i)).getName().replace("./3GPP_IMS/", "");
                    if (this.mNvList.contains(replace) && containsKey) {
                        if (!contentValues.containsKey("omadm/./3GPP_IMS/" + replace)) {
                        }
                    }
                    if (!map.containsKey("omadm/./3GPP_IMS/" + replace)) {
                        String text = xmlPullParser.getText();
                        sparseArray.put(i, text);
                        this.mEventLog.logAndAdd(this.mPhoneId, "Found new item. Read from " + list + " - " + replace + " = [" + text + "]");
                    }
                }
            } catch (IOException | NumberFormatException | XmlPullParserException e) {
                e.printStackTrace();
                return;
            }
        }
    }

    GlobalSettingsRepo getGlobalSettingsRepo() {
        return GlobalSettingsManager.getInstance(this.mContext, this.mPhoneId).getGlobalSettings();
    }

    ImsProfileCache getProfileCache() {
        return this.mProfileCache;
    }

    SmsSetting getSmsSetting() {
        return this.mSmsSetting;
    }

    UserConfigStorage getUserConfigStorage() {
        return this.mUserConfigStorage;
    }

    DebugConfigStorage getDebugConfigStorage() {
        return this.mDebugConfigStorage;
    }

    ArrayList<String> getNvList() {
        return this.mNvList;
    }

    private void updateNvList() {
        this.mNvList.clear();
        ArrayList<String> nvList = getNvList(this.mMno.getMatchedNetworkCode(OmcCode.getNWCode(this.mPhoneId)));
        this.mNvList = nvList;
        if (!nvList.isEmpty()) {
            this.mNvList.add(NV_INIT_DONE);
        }
        this.mEventLog.logAndAdd(this.mPhoneId, "updateNvList(" + this.mMno.getMatchedNetworkCode(OmcCode.getNWCode(this.mPhoneId)) + ") : nv list : " + Arrays.toString(this.mNvList.toArray()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0218, code lost:
    
        initVoLTEFeature();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01cd A[Catch: all -> 0x0222, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000c, B:8:0x0055, B:10:0x0059, B:11:0x0070, B:14:0x009e, B:26:0x009b, B:30:0x0098, B:31:0x00a1, B:33:0x00c2, B:35:0x00c8, B:37:0x00d0, B:39:0x00da, B:40:0x0115, B:42:0x011b, B:44:0x0143, B:46:0x0150, B:48:0x0158, B:49:0x0163, B:54:0x01cd, B:55:0x01d0, B:57:0x01d8, B:59:0x01e0, B:61:0x01e6, B:63:0x01ec, B:66:0x01f3, B:68:0x01fb, B:70:0x0201, B:74:0x020d, B:76:0x0212, B:78:0x0218, B:80:0x021d, B:104:0x01c8, B:107:0x01c5, B:108:0x0220, B:16:0x007a, B:18:0x0080, B:103:0x01c0, B:25:0x0093, B:82:0x0178, B:84:0x017e, B:87:0x0186, B:89:0x0196, B:90:0x01b8, B:94:0x019d, B:96:0x01a5, B:97:0x01ac, B:99:0x01b4), top: B:3:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0212 A[Catch: all -> 0x0222, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000c, B:8:0x0055, B:10:0x0059, B:11:0x0070, B:14:0x009e, B:26:0x009b, B:30:0x0098, B:31:0x00a1, B:33:0x00c2, B:35:0x00c8, B:37:0x00d0, B:39:0x00da, B:40:0x0115, B:42:0x011b, B:44:0x0143, B:46:0x0150, B:48:0x0158, B:49:0x0163, B:54:0x01cd, B:55:0x01d0, B:57:0x01d8, B:59:0x01e0, B:61:0x01e6, B:63:0x01ec, B:66:0x01f3, B:68:0x01fb, B:70:0x0201, B:74:0x020d, B:76:0x0212, B:78:0x0218, B:80:0x021d, B:104:0x01c8, B:107:0x01c5, B:108:0x0220, B:16:0x007a, B:18:0x0080, B:103:0x01c0, B:25:0x0093, B:82:0x0178, B:84:0x017e, B:87:0x0186, B:89:0x0196, B:90:0x01b8, B:94:0x019d, B:96:0x01a5, B:97:0x01ac, B:99:0x01b4), top: B:3:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x021d A[Catch: all -> 0x0222, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x000c, B:8:0x0055, B:10:0x0059, B:11:0x0070, B:14:0x009e, B:26:0x009b, B:30:0x0098, B:31:0x00a1, B:33:0x00c2, B:35:0x00c8, B:37:0x00d0, B:39:0x00da, B:40:0x0115, B:42:0x011b, B:44:0x0143, B:46:0x0150, B:48:0x0158, B:49:0x0163, B:54:0x01cd, B:55:0x01d0, B:57:0x01d8, B:59:0x01e0, B:61:0x01e6, B:63:0x01ec, B:66:0x01f3, B:68:0x01fb, B:70:0x0201, B:74:0x020d, B:76:0x0212, B:78:0x0218, B:80:0x021d, B:104:0x01c8, B:107:0x01c5, B:108:0x0220, B:16:0x007a, B:18:0x0080, B:103:0x01c0, B:25:0x0093, B:82:0x0178, B:84:0x017e, B:87:0x0186, B:89:0x0196, B:90:0x01b8, B:94:0x019d, B:96:0x01a5, B:97:0x01ac, B:99:0x01b4), top: B:3:0x0003, inners: #0, #2, #3, #4 }] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean initStorage() {
        /*
            Method dump skipped, instructions count: 549
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.sec.internal.ims.settings.DeviceConfigManager.initStorage():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initStorage$0(Integer num, SparseArray sparseArray, String str) {
        this.mEventLog.logAndAdd(this.mPhoneId, String.format(Locale.US, "initStorage: %s = [0] by default for LRA hVoLTE!", ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(num.intValue())).getName().replace("./3GPP_IMS/", "")));
        sparseArray.put(num.intValue(), "0");
    }

    private Cursor readAllOfDm(Uri uri) {
        String[] strArr = new String[2];
        Map<String, String> readAll = this.mDmStorage.readAll(uri.toString().replaceFirst(CONFIG_URI, ""));
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"PATH", "VALUE"});
        try {
            if (readAll != null) {
                for (Map.Entry<String, String> entry : readAll.entrySet()) {
                    if (!this.mNvList.contains(entry.getKey().replace("omadm/./3GPP_IMS/", ""))) {
                        strArr[0] = entry.getKey();
                        strArr[1] = entry.getValue();
                        matrixCursor.addRow(strArr);
                    }
                }
            } else {
                IMSLog.e(LOG_TAG, this.mPhoneId, "readData is null");
            }
            if (!this.mNvList.isEmpty()) {
                Cursor query = this.mNvStorage.query(NvStorage.ID_OMADM, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            do {
                                if (this.mNvList.contains(query.getString(0).replace("omadm/./3GPP_IMS/", ""))) {
                                    strArr[0] = query.getString(0);
                                    strArr[1] = query.getString(1);
                                    matrixCursor.addRow(strArr);
                                }
                            } while (query.moveToNext());
                        }
                    } finally {
                    }
                }
                if (query != null) {
                    query.close();
                }
            }
        } catch (Throwable unused) {
        }
        return matrixCursor;
    }

    private Cursor readMultipleDm(String[] strArr, String str, String[] strArr2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str2 : strArr) {
            if (this.mNvList.contains(str2)) {
                arrayList2.add(str2);
            } else {
                if (!str2.contains("omadm/./3GPP_IMS/")) {
                    str2 = "omadm/./3GPP_IMS/" + str2;
                }
                arrayList.add(str2);
            }
        }
        if (arrayList.size() > 0 && arrayList2.size() > 0) {
            return new MergeCursor(new Cursor[]{this.mDmStorage.query((String[]) arrayList.toArray(new String[0])), this.mNvStorage.query(NvStorage.ID_OMADM, strArr)});
        }
        if (arrayList.size() > 0) {
            return this.mDmStorage.query((String[]) arrayList.toArray(new String[0]));
        }
        if (arrayList2.size() > 0) {
            return this.mNvStorage.query(NvStorage.ID_OMADM, strArr);
        }
        return null;
    }

    private Cursor readSingleDm(Uri uri, String str, String[] strArr) {
        String lastPathSegment = uri.getLastPathSegment();
        if (this.mNvList.contains(lastPathSegment)) {
            IMSLog.d(LOG_TAG, this.mPhoneId, "read from NV");
            return this.mNvStorage.query(NvStorage.ID_OMADM, new String[]{lastPathSegment});
        }
        String uri2 = uri.toString();
        IMSLog.d(LOG_TAG, this.mPhoneId, "read from DB : " + uri2);
        String read = this.mDmStorage.read(uri2.replaceFirst(CONFIG_URI, ""));
        MatrixCursor matrixCursor = new MatrixCursor(new String[]{"PATH", "VALUE"});
        matrixCursor.addRow(new String[]{uri2.replace(CONFIG_URI, "").toLowerCase(Locale.US), read});
        return matrixCursor;
    }

    public int deleteDm(Uri uri) {
        synchronized (LOCK) {
            if (!initStorage()) {
                return 0;
            }
            String uri2 = uri.toString();
            IMSLog.d(LOG_TAG, this.mPhoneId, "delete uri:" + IMSLog.checker(uri2));
            String replace = uri2.replace(CONFIG_URI, "").replace(NvStorage.ID_OMADM, "");
            if (this.mNvList.contains(replace)) {
                this.mNvStorage.delete(replace);
            }
            if (!uri2.matches("^content://com.samsung.rcs.dmconfigurationprovider/[\\.\\w-_/]*")) {
                throw new IllegalArgumentException(uri2 + " is not a correct DmConfigurationProvider Uri");
            }
            int delete = this.mDmStorage.delete(uri2.replaceFirst(CONFIG_URI, ""));
            this.mContext.getContentResolver().notifyChange(UriUtil.buildUri(CONFIG_URI, this.mPhoneId), null);
            return delete;
        }
    }

    public Uri insertDm(Uri uri, ContentValues contentValues) {
        synchronized (LOCK) {
            if (!initStorage()) {
                return null;
            }
            ContentValues contentValues2 = new ContentValues();
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                if (entry.getValue() instanceof String) {
                    String key = entry.getKey();
                    if (key.lastIndexOf("/") == key.length()) {
                        key = key.substring(0, key.length() - 1);
                    }
                    String substring = key.lastIndexOf("/") >= 0 ? key.substring(key.lastIndexOf("/") + 1) : key;
                    IMSLog.d(LOG_TAG, this.mPhoneId, "dmItem : " + substring);
                    if (this.mNvList.contains(substring)) {
                        contentValues2.put(substring, (String) entry.getValue());
                    } else {
                        if (!key.startsWith("omadm/./3GPP_IMS/")) {
                            key = key.startsWith("./3GPP_IMS/") ? DmConfigModule.DM_PATH + key : "omadm/./3GPP_IMS/" + substring;
                        }
                        hashMap.put(key, (String) entry.getValue());
                        if (entry.getKey().contains(IMS_TEST_MODE)) {
                            SemSystemProperties.set(ImsConstants.SystemProperties.IMS_TEST_MODE_PROP, (String) entry.getValue());
                            Mno mno = this.mMno;
                            if (mno == Mno.VZW || mno == Mno.GCF) {
                                sendRawRequest(Integer.valueOf((String) entry.getValue()).intValue());
                            }
                        }
                    }
                }
            }
            if (contentValues2.size() > 0) {
                this.mNvStorage.insert(NvStorage.ID_OMADM, contentValues2);
            }
            if (hashMap.size() > 0) {
                this.mDmStorage.writeAll(hashMap);
            }
            return uri;
        }
    }

    public int updateDm(Uri uri, ContentValues contentValues) {
        insertDm(uri, contentValues);
        return contentValues.size();
    }

    public Cursor queryDm(Uri uri, String[] strArr, String str, String[] strArr2, boolean z) {
        Cursor readSingleDm;
        synchronized (LOCK) {
            if (!initStorage()) {
                MatrixCursor matrixCursor = new MatrixCursor(new String[]{"NODATA"});
                try {
                    matrixCursor.addRow(new String[]{"NODATA"});
                    return matrixCursor;
                } catch (Throwable unused) {
                    return matrixCursor;
                }
            }
            if (z) {
                readSingleDm = readAllOfDm(uri);
            } else if (strArr != null) {
                readSingleDm = readMultipleDm(strArr, str, strArr2);
            } else {
                readSingleDm = readSingleDm(uri, str, strArr2);
            }
            return readSingleDm;
        }
    }

    private void sendRawRequest(int i) {
        ITelephony asInterface = ITelephony.Stub.asInterface(ServiceManager.getService(PhoneConstants.PHONE_KEY));
        if (asInterface == null) {
            return;
        }
        byte[] bArr = new byte[5];
        byte[] bArr2 = new byte[4];
        bArr[0] = 9;
        bArr[1] = 15;
        bArr[2] = 0;
        bArr[3] = 5;
        bArr[4] = (byte) (i == 1 ? 1 : 0);
        try {
            asInterface.invokeOemRilRequestRaw(bArr, bArr2);
            Log.d(LOG_TAG, "set testmode as " + i);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    protected void initVoLTEFeature() {
        String str = SemSystemProperties.get(Mno.MOCK_MNO_PROPERTY, "");
        if (TextUtils.isEmpty(str)) {
            str = ((TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY)).getSimOperator();
        }
        ContentValues cscImsSetting = CscParser.getCscImsSetting(str, this.mPhoneId);
        if (cscImsSetting == null || cscImsSetting.size() <= 0) {
            return;
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_VOLTE, false);
        boolean booleanValue2 = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.SUPPORT_VOWIFI, false);
        if (booleanValue || booleanValue2) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("VOLTE_ENABLED", "1");
            insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/VOLTE_ENABLED"), contentValues);
        }
    }

    protected void initSmsOverImsFeature() {
        boolean z = GlobalSettingsManager.getInstance(this.mContext, this.mPhoneId).getBoolean(GlobalSettingsConstants.Registration.SMS_OVER_IP_INDICATION, false);
        this.mEventLog.logAndAdd("[" + this.mPhoneId + "] initSmsOverImsFeature: isSmsOverIpNetworkIndication: " + z);
        NvConfiguration.setSmsIpNetworkIndi(this.mContext, z, this.mPhoneId);
    }

    protected void initIPsecFeature() {
        boolean z;
        List<ImsProfile> profileList = ImsProfileLoaderInternal.getProfileList(this.mContext, this.mPhoneId);
        if (profileList == null || profileList.size() == 0) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "initIPsecFeature: profileList null ");
            return;
        }
        if (profileList.size() > 0) {
            for (ImsProfile imsProfile : profileList) {
                if (imsProfile != null && (imsProfile.hasService("mmtel") || imsProfile.hasService("mmtel-video"))) {
                    z = imsProfile.isIpSecEnabled();
                    break;
                }
            }
        }
        z = false;
        this.mEventLog.logAndAdd("[" + this.mPhoneId + "] initIPsecFeature: isIPsecEnabled: " + z);
        ContentValues contentValues = new ContentValues();
        contentValues.put("IPSEC_ENABLED", z ? "1" : "0");
        insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/IPSEC_ENABLED"), contentValues);
    }

    protected void initH265Hd720Payload() {
        int i;
        List<ImsProfile> profileList = ImsProfileLoaderInternal.getProfileList(this.mContext, this.mPhoneId);
        if (profileList == null || profileList.size() == 0) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "initH265Hd720Payload: profileList null ");
            return;
        }
        if (profileList.size() > 0) {
            for (ImsProfile imsProfile : profileList) {
                if (imsProfile != null && (imsProfile.hasService("mmtel") || imsProfile.hasService("mmtel-video"))) {
                    i = imsProfile.getH265Hd720pPayload();
                    break;
                }
            }
        }
        i = 112;
        this.mEventLog.logAndAdd("[" + this.mPhoneId + "] initH265Hd720Payload: h265_hd720_payload: " + i);
        ContentValues contentValues = new ContentValues();
        contentValues.put("H265_720P", Integer.toString(i));
        insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/H265_720P"), contentValues);
    }

    protected void initEabFeature() {
        ContentValues cscImsSetting;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (simManagerFromSimSlot == null || (cscImsSetting = CscParser.getCscImsSetting(simManagerFromSimSlot.getNetworkNames(), this.mPhoneId)) == null || cscImsSetting.size() <= 0) {
            return;
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS, false);
        boolean booleanValue2 = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS_CHAT_SERVICE, false);
        if (booleanValue || booleanValue2) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("EAB_SETTING", "1");
            insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"), contentValues);
        }
    }

    protected void disableEabFeature() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("EAB_SETTING", "0");
        insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/EAB_SETTING"), contentValues);
    }

    protected void changePollListSubExp(int i) {
        ContentValues cscImsSetting;
        ISimManager simManagerFromSimSlot = SimManagerFactory.getSimManagerFromSimSlot(this.mPhoneId);
        if (simManagerFromSimSlot == null || (cscImsSetting = CscParser.getCscImsSetting(simManagerFromSimSlot.getNetworkNames(), this.mPhoneId)) == null || cscImsSetting.size() <= 0) {
            return;
        }
        boolean booleanValue = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS, false);
        boolean booleanValue2 = CollectionUtils.getBooleanValue(cscImsSetting, ImsConstants.CscParserConstants.ENABLE_RCS_CHAT_SERVICE, false);
        if (booleanValue || booleanValue2) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("POLL_LIST_SUB_EXP", String.valueOf(i));
            insertDm(Uri.parse("content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"), contentValues);
        }
    }

    private String getDbTableName(String str) {
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_DATABASE_NAME;
        } else {
            Mno mno = this.mMno;
            if (mno == Mno.SPRINT) {
                str = mno.getAllSalesCodes()[0];
            }
        }
        return OMADM_DB_NAME_PREFIX + str + "_" + this.mPhoneId;
    }

    protected void initDmConfig(SparseArray<String> sparseArray, ArrayList<String> arrayList) {
        HashMap hashMap = new HashMap();
        ContentValues contentValues = new ContentValues();
        for (int i = 0; i < sparseArray.size(); i++) {
            String replace = ((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(sparseArray.keyAt(i))).getName().replace("./3GPP_IMS/", "");
            String valueAt = sparseArray.valueAt(i);
            if (arrayList.contains(replace)) {
                this.mEventLog.logAndAdd(this.mPhoneId, "initDmConfig : Put into NV : " + replace + ", " + valueAt);
                contentValues.put(replace, valueAt);
            } else {
                if (!replace.contains("omadm/./3GPP_IMS/")) {
                    replace = "omadm/./3GPP_IMS/" + replace;
                }
                this.mEventLog.logAndAdd(this.mPhoneId, "initDmConfig : Put into DB : " + replace + ", " + valueAt);
                hashMap.put(replace, valueAt);
            }
        }
        if (hashMap.size() > 0) {
            this.mDmStorage.writeAll(hashMap);
        }
        if (contentValues.size() > 0) {
            this.mNvStorage.insert(NvStorage.ID_OMADM, contentValues);
        }
    }

    public synchronized void updateMno(ContentValues contentValues) {
        this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno");
        synchronized (LOCK) {
            String asString = contentValues.getAsString("mnoname");
            Optional ofNullable = Optional.ofNullable(contentValues.getAsBoolean(ISimManager.KEY_HAS_SIM));
            Boolean bool = Boolean.FALSE;
            boolean booleanValue = ((Boolean) ofNullable.orElse(bool)).booleanValue();
            Mno mno = this.mMno;
            this.mMno = Mno.fromName(asString);
            this.mMvnoName = contentValues.getAsString(ISimManager.KEY_MVNO_NAME);
            if (this.mLastSimState != SimConstants.SIM_STATE.UNKNOWN && !booleanValue && !this.mMno.isHkMo() && this.mMno != Mno.CTCMO) {
                this.mLastSimState = SimConstants.SIM_STATE.ABSENT;
                IMSLog.i(LOG_TAG, this.mPhoneId, "Skip updating config modules when SIM ejected");
                return;
            }
            this.mLastSimState = booleanValue ? SimConstants.SIM_STATE.LOADED : SimConstants.SIM_STATE.ABSENT;
            this.mProfileCache.updateMno(contentValues);
            this.mUserConfigStorage.reset(asString);
            GlobalSettingsRepo globalSettings = GlobalSettingsManager.getInstance(this.mContext, this.mPhoneId).getGlobalSettings();
            boolean updateMno = globalSettings.updateMno(contentValues);
            IMSLog.c(LogClass.DCM_NEED_UPDATE_MNO, this.mPhoneId + ",UPD MNO:" + updateMno);
            boolean z = true;
            if (updateMno) {
                IStorageAdapter iStorageAdapter = this.mDmStorage;
                if (iStorageAdapter != null) {
                    iStorageAdapter.close();
                } else {
                    this.mDmStorage = new StorageAdapter();
                }
                NvStorage nvStorage = this.mNvStorage;
                if (nvStorage != null) {
                    nvStorage.close();
                    this.mNvStorage = null;
                }
                initStorage();
                this.mImsServiceSwitch.unregisterObserver();
                this.mImsServiceSwitch.updateServiceSwitch(contentValues);
                boolean isImsSwitchEnabled = this.mImsServiceSwitch.isImsSwitchEnabled(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VOLTE);
                int intValue = ((Integer) Optional.ofNullable(contentValues.getAsInteger(ISimManager.KEY_IMSSWITCH_TYPE)).orElse(0)).intValue();
                if (intValue == 4 || intValue == 3 || intValue == 5) {
                    globalSettings.resetUserSettingAsDefault((!booleanValue || ImsConstants.SystemSettings.getVoiceCallType(this.mContext, -1, this.mPhoneId) == -1 || isImsSwitchEnabled) ? false : true, (!booleanValue || ImsConstants.SystemSettings.getVideoCallType(this.mContext, -1, this.mPhoneId) == -1 || this.mImsServiceSwitch.isImsSwitchEnabled(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_VIDEO_CALL)) ? false : true, false);
                    if (!isImsSwitchEnabled && !this.mImsServiceSwitch.isImsSwitchEnabled(ImsServiceSwitch.ImsSwitch.VoLTE.ENABLE_SMS_IP) && !this.mImsServiceSwitch.isImsSwitchEnabled(ImsServiceSwitch.ImsSwitch.DeviceManagement.ENABLE_VOWIFI)) {
                        ContentValues contentValues2 = new ContentValues();
                        contentValues2.put(GlobalSettingsConstants.Registration.SHOW_REGI_INFO_IN_SEC_SETTINGS, bool);
                        globalSettings.update(contentValues2);
                    }
                }
                if (this.mMno.isKor()) {
                    initSmsOverImsFeature();
                    initIPsecFeature();
                    if (this.mMno == Mno.KT) {
                        initH265Hd720Payload();
                    }
                }
            }
            boolean z2 = GlobalSettingsManager.getInstance(this.mContext, this.mPhoneId).getBoolean(GlobalSettingsConstants.SS.CALLWAITING_BY_NETWORK, true);
            if (this.mMno.isChn() && !mno.equals(this.mMno) && !z2) {
                if (Settings.System.getInt(this.mContext.getContentResolver(), this.mPhoneId != 1 ? "volte_call_waiting" : "volte_call_waiting_slot2", 1) != 1) {
                    z = false;
                }
                if (!z) {
                    UserConfiguration.setUserConfig(this.mContext, this.mPhoneId, "enable_call_wait", z);
                    IMSLog.d(LOG_TAG, this.mPhoneId, "TerminalBasedCallWaiting should follow DB, update to : " + z);
                }
            }
            boolean loadRcsSettings = RcsPolicyManager.loadRcsSettings(this.mPhoneId, updateMno);
            if (updateMno || loadRcsSettings) {
                this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: notifyUpdated: GlobalSettings(" + updateMno + "), RcsPolicy(" + loadRcsSettings + ")");
                this.mContext.getContentResolver().notifyChange(UriUtil.buildUri(GlobalSettingsConstants.CONTENT_URI.toString(), this.mPhoneId), null);
            }
            if (this.mSmsSetting.updateMno(contentValues, updateMno)) {
                this.mContext.getContentResolver().notifyChange(UriUtil.buildUri(ImsConstants.Uris.SMS_SETTING.toString(), this.mPhoneId), null);
            }
            if (this.mMno == Mno.GCF && TextUtils.isEmpty(getGcfInitRat())) {
                Log.d("DeviceConfigManager[" + this.mPhoneId + "]", "init rat : nr,lte,wifi");
                ContentValues contentValues3 = new ContentValues();
                contentValues3.put("rat", "nr,lte,wifi");
                updateGcfInitRat(contentValues3);
            }
            Mno mno2 = this.mMno;
            if (mno2 == Mno.VZW || mno2 == Mno.GCF) {
                int i = SemSystemProperties.getInt(ImsConstants.SystemProperties.IMS_TEST_MODE_PROP, 0);
                sendRawRequest(i);
                this.mEventLog.logAndAdd("simSlot[" + this.mPhoneId + "] updateMno: send IMS_TESTMODE(" + i + ")");
            }
        }
    }

    public synchronized String getMnoName() {
        String name;
        synchronized (LOCK) {
            name = this.mLastSimState != SimConstants.SIM_STATE.UNKNOWN ? this.mMno.getName() : "";
        }
        return name;
    }

    public synchronized String getMvnoName() {
        String str;
        synchronized (LOCK) {
            str = this.mLastSimState != SimConstants.SIM_STATE.UNKNOWN ? this.mMvnoName : "";
        }
        return str;
    }

    public synchronized boolean getHasSim() {
        boolean z;
        synchronized (LOCK) {
            z = this.mLastSimState == SimConstants.SIM_STATE.LOADED;
        }
        return z;
    }

    public boolean restoreDefaultImsProfile() {
        this.mProfileCache.resetToDefault();
        return true;
    }

    public void updateGcfConfig(ContentValues contentValues) {
        if (contentValues == null || contentValues.size() == 0) {
            return;
        }
        Boolean asBoolean = contentValues.getAsBoolean("GCF_CONFIG_ENABLE");
        if (asBoolean == null) {
            IMSLog.d(LOG_TAG, this.mPhoneId, "GCF_CONFIG_ENABLE is null");
        } else {
            DeviceUtil.setGcfMode(asBoolean.booleanValue());
        }
    }

    public void updateDnsBlock(ContentValues contentValues) {
        if (contentValues != null) {
            Boolean asBoolean = contentValues.getAsBoolean("DNS_BLOCK_ENABLE");
            if (asBoolean != null) {
                SemSystemProperties.set("net.tether.always", asBoolean.booleanValue() ? "1" : "");
            } else {
                IMSLog.d(LOG_TAG, this.mPhoneId, "DNS_BLOCK_ENABLE is null");
            }
        }
    }

    public Cursor queryGcfConfig() {
        Boolean valueOf = Boolean.valueOf(DeviceUtil.getGcfMode());
        MatrixCursor matrixCursor = new MatrixCursor(ImsSettings.ImsServiceSwitchTable.PROJECTION);
        matrixCursor.addRow(new Object[]{"GCF_CONFIG_ENABLE", String.valueOf(valueOf)});
        return matrixCursor;
    }

    public void setImsUserSetting(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        Mno simMno = SimUtil.getSimMno(this.mPhoneId);
        if (str.startsWith(ImsConstants.SystemSettings.VOLTE_SLOT1.getName())) {
            this.mImsServiceSwitch.setVoiceCallType(simMno.getName(), i);
        } else if (str.startsWith(ImsConstants.SystemSettings.VILTE_SLOT1.getName())) {
            this.mImsServiceSwitch.setVideoCallType(simMno.getName(), i);
        } else if (str.startsWith(ImsConstants.SystemSettings.RCS_USER_SETTING1.getName())) {
            this.mImsServiceSwitch.setRcsUserSetting(i);
        }
    }

    public void enableImsSwitch(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if ("volte".equalsIgnoreCase(str)) {
            this.mImsServiceSwitch.enableVoLte(z);
        } else if (RCS.equalsIgnoreCase(str)) {
            this.mImsServiceSwitch.enableRcs(z);
        } else {
            this.mImsServiceSwitch.enable(str, z);
        }
    }

    public void resetImsSwitch() {
        this.mImsServiceSwitch.doInit();
    }

    public void updateImsSwitchByDynamicUpdate() {
        if (DeviceUtil.getGcfMode() || "GCF".equalsIgnoreCase(OmcCode.get())) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Skip updateSwitchByDynamicUpdate during GCF");
        } else {
            this.mImsServiceSwitch.updateSwitchByDynamicUpdate();
        }
    }

    public Cursor queryImsUserSetting(String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(ImsSettings.ImsUserSettingTable.PROJECTION);
        String name = SimUtil.getSimMno(this.mPhoneId).getName();
        if (strArr != null) {
            for (String str : strArr) {
                IMSLog.d(LOG_TAG, this.mPhoneId, "queryImsUserSetting: name " + str);
                if (ImsConstants.SystemSettings.VOLTE_SLOT1.getName().equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.getVoiceCallType(name))});
                } else if (ImsConstants.SystemSettings.VILTE_SLOT1.getName().equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.getVideoCallType(name))});
                } else if (ImsConstants.SystemSettings.RCS_USER_SETTING1.getName().equalsIgnoreCase(str) && SimUtil.getSimMno(this.mPhoneId) != Mno.DEFAULT) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.getRcsUserSetting())});
                }
            }
        }
        return matrixCursor;
    }

    public Cursor queryImsSwitch(String[] strArr) {
        MatrixCursor matrixCursor = new MatrixCursor(ImsSettings.ImsServiceSwitchTable.PROJECTION);
        if (strArr != null) {
            for (String str : strArr) {
                IMSLog.d(LOG_TAG, this.mPhoneId, "queryImsSwitch: name " + str);
                if ("volte".equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isVoLteEnabled() ? 1 : 0)});
                } else if (RCS_SWITCH.equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isRcsSwitchEnabled() ? 1 : 0)});
                } else if (RCS.equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isRcsEnabled() ? 1 : 0)});
                } else if (IMS.equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isImsEnabled() ? 1 : 0)});
                } else if (DEFAULTMSGAPPINUSE.equalsIgnoreCase(str)) {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isDefaultMessageAppInUse() ? 1 : 0)});
                } else {
                    matrixCursor.addRow(new Object[]{str, Integer.valueOf(this.mImsServiceSwitch.isEnabled(str) ? 1 : 0)});
                }
            }
        }
        return matrixCursor;
    }

    public void updateProvisioningProperty(ContentValues contentValues) {
        Boolean asBoolean = contentValues.getAsBoolean("status");
        Log.d("DeviceConfigManager[" + this.mPhoneId + "]", "updateProvisioningProperty : " + asBoolean);
        if (asBoolean == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "status is null.");
        } else if (asBoolean.booleanValue()) {
            ImsConstants.SystemSettings.VOLTE_PROVISIONING.set(this.mContext, 1);
        } else {
            ImsConstants.SystemSettings.VOLTE_PROVISIONING.set(this.mContext, 0);
            VowifiConfig.setEnabled(this.mContext, 0, this.mPhoneId);
        }
    }

    public void updateWificallingProperty(ContentValues contentValues) {
        Boolean asBoolean = contentValues.getAsBoolean("status");
        if (asBoolean == null) {
            IMSLog.e(LOG_TAG, this.mPhoneId, "status is null.");
        } else if (asBoolean.booleanValue()) {
            ImsConstants.SystemSettings.VOLTE_PROVISIONING.set(this.mContext, 1);
            VowifiConfig.setEnabled(this.mContext, 1, this.mPhoneId);
        } else {
            VowifiConfig.setEnabled(this.mContext, 0, this.mPhoneId);
        }
    }

    public void updateGcfInitRat(ContentValues contentValues) {
        if (contentValues == null || contentValues.size() == 0) {
            return;
        }
        String asString = contentValues.getAsString("rat");
        if (TextUtils.isEmpty(asString)) {
            Log.d(LOG_TAG, "updateGcfInitRat is empty");
            asString = "";
        }
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(-1, this.mContext, "gcf_init_rat", 0, false).edit();
        edit.putString("rat", asString);
        edit.apply();
    }

    public void updateDtLocUserConsent(ContentValues contentValues) {
        if (contentValues == null || contentValues.size() == 0) {
            return;
        }
        Integer asInteger = contentValues.getAsInteger("dtlocation");
        int intValue = asInteger != null ? asInteger.intValue() : -1;
        SharedPreferences.Editor edit = ImsSharedPrefHelper.getSharedPref(-1, this.mContext, "dtlocuserconsent", 0, false).edit();
        edit.putInt("dtlocation", intValue);
        edit.apply();
    }

    public String getGcfInitRat() {
        String str = "";
        try {
            Cursor query = this.mContext.getContentResolver().query(Uri.parse("content://com.sec.ims.settings/gcfinitrat"), null, null, null, null);
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndex("rat"));
                    }
                } finally {
                }
            }
            if (query != null) {
                query.close();
            }
        } catch (Exception unused) {
            Log.e(LOG_TAG, "failed to get getGcfInitialRegistrationRat");
        }
        return str;
    }

    private XmlPullParser getDmConfigXmlParser() {
        return this.mContext.getResources().getXml(this.mContext.getResources().getIdentifier("dmconfig", MIMEContentType.XML, this.mContext.getPackageName()));
    }

    public ArrayList<String> getNvList(String str) {
        XmlPullParser dmConfigXmlParser = getDmConfigXmlParser();
        if (dmConfigXmlParser == null) {
            Log.e(LOG_TAG, "can not find matched dmConfig.xml");
            return new ArrayList<>();
        }
        try {
            XmlUtils.beginDocument(dmConfigXmlParser, "configurations");
            for (int eventType = dmConfigXmlParser.getEventType(); eventType != 1; eventType = dmConfigXmlParser.next()) {
                if (eventType == 2 && "configuration".equalsIgnoreCase(dmConfigXmlParser.getName())) {
                    if (matchConfigName(str, dmConfigXmlParser.getAttributeValue(0))) {
                        return parseNvList(dmConfigXmlParser);
                    }
                    XmlUtils.skipCurrentTag(dmConfigXmlParser);
                }
            }
            return new ArrayList<>();
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
            return new ArrayList<>();
        }
    }

    private ArrayList<String> parseNvList(XmlPullParser xmlPullParser) {
        ArrayList<String> arrayList = new ArrayList<>();
        while (true) {
            try {
                int next = xmlPullParser.next();
                if (next == 1) {
                    break;
                }
                if (next == 2 && ImsConstants.Intents.EXTRA_UPDATED_ITEM.equalsIgnoreCase(xmlPullParser.getName())) {
                    String attributeValue = xmlPullParser.getAttributeValue(0);
                    String attributeValue2 = xmlPullParser.getAttributeValue(null, "type");
                    if (!TextUtils.isEmpty(attributeValue2) && TextUtils.equals(attributeValue2.toUpperCase(), "NV")) {
                        arrayList.add(((DATA.DM_FIELD_INFO) DATA.DM_FIELD_LIST.get(Integer.parseInt(attributeValue))).getName().replace("./3GPP_IMS/", ""));
                    }
                } else if (next == 3 && "configuration".equalsIgnoreCase(xmlPullParser.getName())) {
                    break;
                }
            } catch (IOException | XmlPullParserException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    protected SparseArray<String> getDefaultDmConfig(String str, ContentValues contentValues, Map<String, String> map) {
        XmlPullParser dmConfigXmlParser = getDmConfigXmlParser();
        if (dmConfigXmlParser == null) {
            Log.e(LOG_TAG, "can not find matched dmConfig.xml");
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = DEFAULT_DMCONFIG_NAME;
        }
        SparseArray<String> sparseArray = new SparseArray<>();
        try {
            XmlUtils.beginDocument(dmConfigXmlParser, "configurations");
            for (int eventType = dmConfigXmlParser.getEventType(); eventType != 1; eventType = dmConfigXmlParser.next()) {
                if (eventType == 2 && "configuration".equalsIgnoreCase(dmConfigXmlParser.getName())) {
                    List<String> asList = Arrays.asList(dmConfigXmlParser.getAttributeValue(0).split(","));
                    if (asList.contains(DEFAULT_DMCONFIG_NAME)) {
                        readInitialConfigFromXml(dmConfigXmlParser, asList, sparseArray, contentValues, map);
                    } else {
                        if (asList.contains(str)) {
                            readInitialConfigFromXml(dmConfigXmlParser, asList, sparseArray, contentValues, map);
                            return sparseArray;
                        }
                        XmlUtils.skipCurrentTag(dmConfigXmlParser);
                    }
                }
            }
            return sparseArray;
        } catch (IOException | XmlPullParserException e) {
            e.printStackTrace();
            return null;
        }
    }

    private boolean matchConfigName(String str, String str2) {
        Log.d(LOG_TAG, "Configname : " + str2 + " name : " + str);
        String[] split = str2.split(",");
        int length = split.length;
        for (int i = 0; i < length; i++) {
            if (split[i].equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    public void dump() {
        synchronized (LOCK) {
            IMSLog.dump(LOG_TAG, "Dump of DeviceConfigManager:");
            this.mEventLog.dump();
            this.mProfileCache.dump();
            this.mSmsSetting.dump();
            NvStorage nvStorage = this.mNvStorage;
            if (nvStorage != null) {
                nvStorage.dump();
            }
            this.mImsServiceSwitch.dump();
            getGlobalSettingsRepo().dump();
            this.mUserConfigStorage.dump();
        }
    }
}
