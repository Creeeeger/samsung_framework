package com.sec.internal.helper.os;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.SemSystemProperties;
import android.telephony.CellInfo;
import android.telephony.ServiceState;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;
import android.telephony.emergency.EmergencyNumber;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.samsung.android.cmcsetting.CmcSettingManager;
import com.samsung.android.cmcsetting.CmcSettingManagerConstants;
import com.sec.ims.extensions.Extensions;
import com.sec.internal.constants.ims.os.PhoneConstants;
import com.sec.internal.helper.OmcCode;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.log.IMSLog;
import java.net.URI;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class TelephonyManagerWrapper implements ITelephonyManager {
    public static final int DEFAULT_ID = -1;
    private static final String LOG_TAG = "TelephonyManagerWrapper";
    private static volatile TelephonyManagerWrapper mInstance;
    private Context mContext;
    private SparseArray<String> mImei = new SparseArray<>();
    private SparseArray<String> mImsi = new SparseArray<>();
    public SparseArray<String> mImpi = new SparseArray<>();
    public SparseArray<String[]> mImpus = new SparseArray<>();
    public SparseArray<String> mHomeDomain = new SparseArray<>();
    private SparseArray<String> mOperatorCode = new SparseArray<>();
    private SparseArray<String> mGid1 = new SparseArray<>();
    private SparseArray<String> mGid2 = new SparseArray<>();
    private String mDeviceType = "";
    private Map<TelephonyCallback, Integer> mTelephonyCallbackCache = new HashMap();

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void setCallState(int i) {
    }

    public static synchronized ITelephonyManager getInstance(Context context) {
        TelephonyManagerWrapper telephonyManagerWrapper;
        synchronized (TelephonyManagerWrapper.class) {
            if (mInstance == null) {
                synchronized (TelephonyManagerWrapper.class) {
                    if (mInstance == null) {
                        mInstance = new TelephonyManagerWrapper(context);
                    }
                }
            }
            telephonyManagerWrapper = mInstance;
        }
        return telephonyManagerWrapper;
    }

    public TelephonyManagerWrapper(Context context) {
        this.mContext = context;
    }

    private TelephonyManager getTelephonyManager() {
        return (TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY);
    }

    private TelephonyManager getTelephonyManager(int i) {
        return ((TelephonyManager) this.mContext.getSystemService(PhoneConstants.PHONE_KEY)).createForSubscriptionId(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void registerTelephonyCallback(Executor executor, TelephonyCallback telephonyCallback) {
        registerTelephonyCallbackForSlot(SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultSubscriptionId()), executor, telephonyCallback);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void registerTelephonyCallbackForSlot(int i, Executor executor, TelephonyCallback telephonyCallback) {
        int subscriptionId = SubscriptionManager.getSubscriptionId(i);
        if (((Integer) Optional.ofNullable(this.mTelephonyCallbackCache.get(telephonyCallback)).orElse(-1)).intValue() != -1) {
            this.mTelephonyCallbackCache.remove(telephonyCallback);
            unregisterTelephonyCallbackForSlot(i, telephonyCallback);
        }
        this.mTelephonyCallbackCache.put(telephonyCallback, Integer.valueOf(subscriptionId));
        getTelephonyManager(subscriptionId).registerTelephonyCallback(executor, telephonyCallback);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void unregisterTelephonyCallback(TelephonyCallback telephonyCallback) {
        unregisterTelephonyCallbackForSlot(SubscriptionManager.getSlotIndex(SubscriptionManager.getDefaultSubscriptionId()), telephonyCallback);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void unregisterTelephonyCallbackForSlot(int i, TelephonyCallback telephonyCallback) {
        getTelephonyManager(SubscriptionManager.getSubscriptionId(i)).unregisterTelephonyCallback(telephonyCallback);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean getEmcAttachAuth(int i) {
        byte[] bArr = new byte[1];
        int invokeOemRilRequestRaw = getTelephonyManager(i).invokeOemRilRequestRaw(new byte[]{2, -111, 0, 4}, bArr);
        if (invokeOemRilRequestRaw == 1) {
            return bArr[0] == 1;
        }
        IMSLog.e(LOG_TAG, "getEmcAttachAuth: get wrong response: " + invokeOemRilRequestRaw);
        return false;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void sendRawRequestToTelephony(Context context, byte[] bArr) {
        getTelephonyManager().invokeOemRilRequestRaw(bArr, new byte[4]);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getMsisdn(int i) {
        return getTelephonyManager().getMsisdn(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean isNetworkRoaming() {
        return getTelephonyManager().isNetworkRoaming();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean isNetworkRoaming(int i) {
        return getTelephonyManager(i).isNetworkRoaming();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getNetworkOperator(int i) {
        return getTelephonyManager(i).getNetworkOperator();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getNetworkOperatorForPhone(int i) {
        return getTelephonyManager().getNetworkOperatorForPhone(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getNetworkCountryIso() {
        return getTelephonyManager().getNetworkCountryIso();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getNetworkCountryIso(int i) {
        return getTelephonyManager(i).getNetworkCountryIso();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getVoiceNetworkType() {
        return getTelephonyManager().getVoiceNetworkType();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getVoiceNetworkType(int i) {
        return getTelephonyManager(i).getVoiceNetworkType();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void clearCache() {
        this.mImei.clear();
        this.mImsi.clear();
        this.mImpi.clear();
        this.mImpus.clear();
        this.mHomeDomain.clear();
        this.mOperatorCode.clear();
        this.mGid1.clear();
        this.mGid2.clear();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public ServiceState getServiceState(int i) {
        return getTelephonyManager(i).getServiceStateForSubscriber(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getServiceState() {
        ServiceState serviceState = getTelephonyManager().getServiceState();
        if (serviceState != null) {
            return serviceState.getState();
        }
        return -1;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getServiceStateForSubscriber(int i) {
        ServiceState serviceState = getTelephonyManager(i).getServiceState();
        if (serviceState != null) {
            return serviceState.getState();
        }
        return -1;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getDataNetworkType() {
        return getTelephonyManager().getDataNetworkType();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getDataNetworkType(int i) {
        return getTelephonyManager(i).getDataNetworkType();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getNetworkType() {
        return getTelephonyManager().getNetworkType();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getPhoneCount() {
        int phoneCount = getTelephonyManager().getPhoneCount();
        if (phoneCount == 0 && isCmcSecondaryDevice()) {
            return 1;
        }
        return phoneCount;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getSimState() {
        return getTelephonyManager().getSimState();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getSimState(int i) {
        return getTelephonyManager().getSimState(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean isGbaSupported() {
        return getTelephonyManager().isGbaSupported();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean isGbaSupported(int i) {
        return getTelephonyManager().isGbaSupported(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getIccAuthentication(int i, int i2, int i3, String str) {
        return getTelephonyManager(i).getIccAuthentication(i2, i3, str);
    }

    public String getApnOperatorCode(String str, int i) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String nWCode = OmcCode.getNWCode(i);
        if ("LRA".equalsIgnoreCase(nWCode) || "ACG".equalsIgnoreCase(nWCode)) {
            String str2 = SemSystemProperties.get("gsm.apn.sim.operator.numeric", "");
            if (!TextUtils.isEmpty(str2)) {
                String[] split = str2.split(",");
                if (i >= 0 && i < split.length && split[i] != null) {
                    Log.e(LOG_TAG, "for " + nWCode + " use apnOperatorCode " + split[i]);
                    return split[i];
                }
            }
        }
        return str;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimOperator() {
        String simOperator = getTelephonyManager().getSimOperator();
        if (!TextUtils.isEmpty(simOperator)) {
            this.mOperatorCode.put(-1, simOperator);
        } else {
            Log.e(LOG_TAG, "backup operatorCode : " + IMSLog.checker(simOperator));
        }
        return getApnOperatorCode(this.mOperatorCode.get(-1), SimUtil.getActiveDataPhoneIdFromTelephony());
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimOperator(int i) {
        String simOperator = getTelephonyManager(i).getSimOperator(i);
        if (!TextUtils.isEmpty(simOperator)) {
            this.mOperatorCode.put(i, simOperator);
        } else {
            Log.e(LOG_TAG, "backup operatorCode : " + IMSLog.checker(simOperator));
        }
        int slotId = Extensions.SubscriptionManager.getSlotId(i);
        String str = this.mOperatorCode.get(i);
        if (slotId == -1) {
            slotId = SimUtil.getActiveDataPhoneIdFromTelephony();
        }
        return getApnOperatorCode(str, slotId);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getIsimImpi(int i) {
        String isimImpi = getTelephonyManager(i).getIsimImpi();
        if (!TextUtils.isEmpty(isimImpi)) {
            this.mImpi.put(i, filterOutInverted(getSimOperator(i), isimImpi));
        } else {
            Log.e(LOG_TAG, "backup impi: " + IMSLog.checker(this.mImpi.get(i)));
        }
        return this.mImpi.get(i);
    }

    private String filterOutInverted(String str, String str2) {
        return (TextUtils.equals("73603", str) && hasInvertedDomainFormat(str2)) ? "" : str2;
    }

    protected boolean hasInvertedDomainFormat(String str) {
        return Pattern.compile("ims\\.mcc\\d+\\.mnc\\d+\\.3gppnetwork\\.org").matcher(str).find();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getIsimDomain(int i) {
        String isimDomain = getTelephonyManager(i).getIsimDomain();
        if (!TextUtils.isEmpty(isimDomain)) {
            this.mHomeDomain.put(i, filterOutInverted(getSimOperator(i), isimDomain));
        } else {
            Log.e(LOG_TAG, "backup domain: " + IMSLog.checker(this.mHomeDomain.get(i)));
        }
        return this.mHomeDomain.get(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getIsimImpuAtIndex(int i, int i2) {
        String[] isimImpu = getIsimImpu(i);
        if (isimImpu == null || isimImpu.length <= i2) {
            return null;
        }
        return isimImpu[i2];
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String[] getIsimImpu(int i) {
        String[] isimImpu = getTelephonyManager(i).getIsimImpu();
        if (isimImpu != null && isimImpu.length > 0) {
            this.mImpus.put(i, filterOutInvertedImpu(getSimOperator(i), isimImpu));
        } else {
            Log.e(LOG_TAG, "backup impu: " + IMSLog.checker(Arrays.toString(this.mImpus.get(i))));
        }
        return this.mImpus.get(i);
    }

    private String[] filterOutInvertedImpu(String str, String[] strArr) {
        if (!TextUtils.equals("73603", str)) {
            return strArr;
        }
        final List asList = Arrays.asList(strArr);
        ((List) asList.stream().filter(new Predicate() { // from class: com.sec.internal.helper.os.TelephonyManagerWrapper$$ExternalSyntheticLambda0
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                boolean lambda$filterOutInvertedImpu$0;
                lambda$filterOutInvertedImpu$0 = TelephonyManagerWrapper.this.lambda$filterOutInvertedImpu$0((String) obj);
                return lambda$filterOutInvertedImpu$0;
            }
        }).collect(Collectors.toList())).forEach(new Consumer() { // from class: com.sec.internal.helper.os.TelephonyManagerWrapper$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TelephonyManagerWrapper.lambda$filterOutInvertedImpu$1(asList, (String) obj);
            }
        });
        return (String[]) asList.toArray(new IntFunction() { // from class: com.sec.internal.helper.os.TelephonyManagerWrapper$$ExternalSyntheticLambda2
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                String[] lambda$filterOutInvertedImpu$2;
                lambda$filterOutInvertedImpu$2 = TelephonyManagerWrapper.lambda$filterOutInvertedImpu$2(i);
                return lambda$filterOutInvertedImpu$2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$filterOutInvertedImpu$0(String str) {
        return !TextUtils.isEmpty(str) && hasInvertedDomainFormat(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$filterOutInvertedImpu$1(List list, String str) {
        list.set(list.indexOf(str), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String[] lambda$filterOutInvertedImpu$2(int i) {
        return new String[i];
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getLine1Number() {
        return getTelephonyManager().getLine1Number();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getLine1Number(int i) {
        return getTelephonyManager(i).getLine1Number();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    @SuppressLint({"HardwareIds"})
    public String getSubscriberId(int i) {
        if (getTelephonyProperty(Extensions.SubscriptionManager.getSlotId(i), "ril.simoperator", "ETC").contains("CTC")) {
            String subscriberIdForUiccAppType = getSubscriberIdForUiccAppType(i, 2);
            if (!TextUtils.isEmpty(subscriberIdForUiccAppType)) {
                return subscriberIdForUiccAppType;
            }
        }
        String subscriberId = getTelephonyManager(i).getSubscriberId();
        if (!TextUtils.isEmpty(subscriberId)) {
            this.mImsi.put(i, subscriberId);
        } else {
            Log.e(LOG_TAG, "backup imsi : " + IMSLog.checker(this.mImsi.get(i)));
        }
        return this.mImsi.get(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSubscriberIdForUiccAppType(int i, int i2) {
        String subscriberIdForUiccAppType = getTelephonyManager(i).getSubscriberIdForUiccAppType(i, i2);
        if (!TextUtils.isEmpty(subscriberIdForUiccAppType)) {
            this.mImsi.put(i, subscriberIdForUiccAppType);
        } else {
            Log.e(LOG_TAG, "backup imsi : " + IMSLog.checker(this.mImsi.get(i)));
        }
        return this.mImsi.get(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimSerialNumber() {
        return getTelephonyManager().getSimSerialNumber();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimSerialNumber(int i) {
        return getTelephonyManager(i).getSimSerialNumber();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean validateMsisdn(int i) {
        if (TextUtils.isEmpty(getMsisdn(i))) {
            Log.e(LOG_TAG, "empty msisdn");
            return false;
        }
        if ("0000000000".equals(getCdmaMdn(i))) {
            Log.e(LOG_TAG, "empty mdn");
            return false;
        }
        if (isValidIsimMsisdn(i)) {
            return true;
        }
        Log.e(LOG_TAG, "empty iSimMsisdn");
        return false;
    }

    private boolean isValidIsimMsisdn(int i) {
        String[] isimImpu = getIsimImpu(i);
        String str = "";
        if (isimImpu != null && isimImpu.length != 0) {
            for (String str2 : isimImpu) {
                if (str2 != null && (str2.contains("+") || str2.startsWith("tel"))) {
                    str = extractNumber(str2);
                }
            }
        }
        return !"+8200000000000".equals(str);
    }

    private String extractNumber(String str) {
        String lowerCase = URI.create(str.trim()).getSchemeSpecificPart().toLowerCase();
        int indexOf = lowerCase.indexOf("@");
        return indexOf != -1 ? lowerCase.substring(0, indexOf) : lowerCase;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getCallState() {
        return getTelephonyManager().getCallState();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getCallState(int i) {
        try {
            int[] subId = SubscriptionManager.getSubId(i);
            if (subId != null && subId.length != 0) {
                return getTelephonyManager().getCallState(subId[0]);
            }
        } catch (NullPointerException unused) {
        }
        return 0;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getCurrentPhoneTypeForSlot(int i) {
        return getTelephonyManager().getCurrentPhoneTypeForSlot(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getGroupIdLevel1() {
        String groupIdLevel1 = getTelephonyManager().getGroupIdLevel1();
        if (!TextUtils.isEmpty(groupIdLevel1)) {
            this.mGid1.put(-1, groupIdLevel1);
        } else {
            Log.e(LOG_TAG, "backup gid1: " + IMSLog.checker(this.mGid1.get(-1)));
        }
        return this.mGid1.get(-1);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getGroupIdLevel1(int i) {
        String groupIdLevel1 = getTelephonyManager().getGroupIdLevel1(i);
        if (!TextUtils.isEmpty(groupIdLevel1)) {
            this.mGid1.put(i, groupIdLevel1);
        } else {
            Log.e(LOG_TAG, "backup gid: " + IMSLog.checker(this.mGid1.get(i)));
        }
        return this.mGid1.get(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getGid2(int i) {
        String groupIdLevel2 = getTelephonyManager().getGroupIdLevel2(i);
        if (!TextUtils.isEmpty(groupIdLevel2)) {
            this.mGid2.put(i, groupIdLevel2);
        } else {
            Log.e(LOG_TAG, "backup gid2 : " + IMSLog.checker(this.mGid2.get(i)));
        }
        return this.mGid2.get(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String[] getIsimPcscf() {
        return getTelephonyManager().getIsimPcscf();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getDataServiceState(int i) {
        return getTelephonyManager().semGetDataServiceState(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getDeviceSoftwareVersion(int i) {
        return getTelephonyManager(i).getDeviceSoftwareVersion();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void setGbaBootstrappingParams(byte[] bArr, String str, String str2) {
        getTelephonyManager().setGbaBootstrappingParams(bArr, str, str2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void setGbaBootstrappingParams(int i, byte[] bArr, String str, String str2) {
        getTelephonyManager(i).setGbaBootstrappingParams(bArr, str, str2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getAidForAppType(int i) {
        return getTelephonyManager().getAidForAppType(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getAidForAppType(int i, int i2) {
        return getTelephonyManager().getAidForAppType(i, i2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public byte[] getRand(int i) {
        return getTelephonyManager(i).getRand();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getBtid(int i) {
        return getTelephonyManager(i).getBtid();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getKeyLifetime(int i) {
        return getTelephonyManager(i).getKeyLifetime();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public List<CellInfo> getAllCellInfo() {
        return getTelephonyManager().getAllCellInfo();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public List<CellInfo> getAllCellInfoBySubId(int i) {
        return getTelephonyManager().getAllCellInfoBySubId(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimCountryIso() {
        return getTelephonyManager().getSimCountryIso();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimCountryIsoForSubId(int i) {
        return getTelephonyManager(i).getSimCountryIso();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimCountryIsoForPhone(int i) {
        getTelephonyManager();
        return TelephonyManager.getSimCountryIsoForPhone(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean setPreferredNetworkType(int i, int i2) {
        return getTelephonyManager().setPreferredNetworkType(i, i2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int getPreferredNetworkType(int i) {
        return getTelephonyManager().getPreferredNetworkType(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getMsisdn() {
        return getTelephonyManager().getMsisdn();
    }

    private String getCdmaMdn(int i) {
        return getTelephonyManager().getCdmaMdn(i);
    }

    private String getCdmaMdn() {
        return getTelephonyManager().getCdmaMdn();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getImei() {
        return getTelephonyManager().getImei();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getImei(int i) {
        return getTelephonyManager().getImei(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getPrimaryImei() {
        try {
            return getTelephonyManager().getPrimaryImei();
        } catch (IllegalStateException | UnsupportedOperationException e) {
            Log.e(LOG_TAG, "getPrimaryImei: Failed. " + e);
            return "";
        }
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getMeid(int i) {
        return getTelephonyManager().getMeid(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getIsimDomain() {
        String isimDomain = getTelephonyManager().getIsimDomain();
        if (!TextUtils.isEmpty(isimDomain)) {
            this.mHomeDomain.put(-1, filterOutInverted(getSimOperator(), isimDomain));
        } else {
            Log.e(LOG_TAG, "backup domain : " + IMSLog.checker(this.mHomeDomain.get(-1)));
        }
        return this.mHomeDomain.get(-1);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void setRadioPower(boolean z) {
        getTelephonyManager().setRadioPower(z);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getTelephonyProperty(int i, String str, String str2) {
        getTelephonyManager();
        return TelephonyManager.getTelephonyProperty(i, str, str2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getRilSimOperator(int i) {
        getTelephonyManager();
        String telephonyProperty = TelephonyManager.getTelephonyProperty(i, "ril.simoperator", "ETC");
        IMSLog.i(LOG_TAG, i, "getRilSimOperator: " + telephonyProperty);
        return telephonyProperty;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String getSimOperatorName(int i) {
        return getTelephonyManager(i).getSimOperatorName();
    }

    private boolean isCmcSecondaryDevice() {
        if (!TextUtils.isEmpty(this.mDeviceType)) {
            IMSLog.d(LOG_TAG, "getPhoneCount: isCmcSecondaryDevice: cache " + this.mDeviceType);
            return "sd".equalsIgnoreCase(this.mDeviceType);
        }
        CmcSettingManager cmcSettingManager = new CmcSettingManager();
        cmcSettingManager.init(this.mContext);
        CmcSettingManagerConstants.DeviceType ownDeviceType = cmcSettingManager.getOwnDeviceType();
        cmcSettingManager.deInit();
        IMSLog.d(LOG_TAG, "getPhoneCount: isCmcSecondaryDevice: api: " + ownDeviceType);
        if (ownDeviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_SD) {
            this.mDeviceType = "sd";
            return true;
        }
        if (ownDeviceType == CmcSettingManagerConstants.DeviceType.DEVICE_TYPE_PD) {
            this.mDeviceType = "pd";
            return false;
        }
        if (TextUtils.isEmpty(this.mDeviceType)) {
            String str = SemSystemProperties.get(CmcConstants.SystemProperties.CMC_DEVICE_TYPE_PROP, "");
            if (!TextUtils.isEmpty(str)) {
                this.mDeviceType = str;
                IMSLog.d(LOG_TAG, "getPhoneCount: isCmcSecondaryDevice: prop " + this.mDeviceType);
                return "sd".equalsIgnoreCase(str);
            }
            this.mDeviceType = "unknown";
        }
        return false;
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean isVoiceCapable() {
        return getTelephonyManager().isVoiceCapable();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean hasCall(String str) {
        return getTelephonyManager().hasCall(str);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int iccOpenLogicalChannelAndGetChannel(int i, String str) {
        return getTelephonyManager().iccOpenLogicalChannel(i, str, 4).getChannel();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String iccTransmitApduLogicalChannel(int i, int i2, int i3, int i4, int i5, int i6, int i7, String str) {
        return getTelephonyManager().iccTransmitApduLogicalChannel(i, i2, i3, i4, i5, i6, i7, str);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean iccCloseLogicalChannel(int i, int i2) {
        return getTelephonyManager().iccCloseLogicalChannel(i, i2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public Map<Integer, List<EmergencyNumber>> getEmergencyNumberList() {
        return getTelephonyManager().getEmergencyNumberList();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String checkCallControl(String str, int i) {
        int[] subId = SubscriptionManager.getSubId(i);
        return (subId == null || subId.length <= 0) ? str : getTelephonyManager(subId[0]).checkCallControl(str);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int semGetDataState(int i) {
        return getTelephonyManager().semGetDataState(i);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public void semSetNrMode(int i, int i2) {
        IMSLog.d(LOG_TAG, "semSetNrMode: phoneId :" + i + " ,mode :" + i2);
        getTelephonyManager().semSetNrMode(i, i2, false);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public int semGetNrMode(int i) {
        IMSLog.d(LOG_TAG, "semGetNrMode: phoneId :" + i);
        return getTelephonyManager(SubscriptionManager.getSubId(i)[0]).semGetNrMode();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public String semGetTelephonyProperty(int i, String str, String str2) {
        getTelephonyManager();
        return TelephonyManager.semGetTelephonyProperty(i, str, str2);
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public long getNextRetryTime() {
        return getTelephonyManager().getNextRetryTime();
    }

    @Override // com.sec.internal.helper.os.ITelephonyManager
    public boolean semIsVoNrEnabled(int i) {
        IMSLog.d(LOG_TAG, "semIsVoNrEnabled: phoneId :" + i);
        return getTelephonyManager(SubscriptionManager.getSubId(i)[0]).semIsVoNrEnabled();
    }
}
