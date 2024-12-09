package com.sec.internal.ims.cmstore.strategy;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.cmstore.McsConstants;
import com.sec.internal.constants.ims.cmstore.data.AttributeNames;
import com.sec.internal.constants.ims.cmstore.data.MessageContextValues;
import com.sec.internal.constants.ims.cmstore.omanetapi.OMASyncEventType;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.constants.ims.entitilement.SoftphoneNamespaces;
import com.sec.internal.constants.ims.servicemodules.im.ImConstants;
import com.sec.internal.helper.StrUtil;
import com.sec.internal.helper.httpclient.HttpResponseParams;
import com.sec.internal.helper.os.DeviceUtil;
import com.sec.internal.ims.cmstore.MessageStoreClient;
import com.sec.internal.ims.cmstore.ambs.globalsetting.AmbsUtils;
import com.sec.internal.ims.cmstore.callHandling.errorHandling.OmaErrorKey;
import com.sec.internal.ims.cmstore.omanetapi.clouddatasynchandler.BaseDataChangeHandler;
import com.sec.internal.ims.cmstore.omanetapi.devicedataupdateHandler.BaseDeviceDataUpdateHandler;
import com.sec.internal.ims.cmstore.omanetapi.gcm.ChannelScheduler;
import com.sec.internal.ims.cmstore.omanetapi.polling.OMAPollingScheduler;
import com.sec.internal.ims.cmstore.omanetapi.synchandler.BaseSyncHandler;
import com.sec.internal.ims.cmstore.params.BufferDBChangeParam;
import com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy;
import com.sec.internal.ims.cmstore.utils.CmsUtil;
import com.sec.internal.ims.cmstore.utils.Util;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.servicemodules.im.data.event.ImSessionEvent;
import com.sec.internal.ims.util.HttpAuthGenerator;
import com.sec.internal.ims.util.ImsUtil;
import com.sec.internal.interfaces.ims.cmstore.IAPICallFlowListener;
import com.sec.internal.interfaces.ims.cmstore.IControllerCommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IHttpAPICommonInterface;
import com.sec.internal.interfaces.ims.cmstore.IMessageAttributeInterface;
import com.sec.internal.interfaces.ims.cmstore.INetAPIEventListener;
import com.sec.internal.log.IMSLog;
import com.sec.internal.omanetapi.nms.BaseNMSRequest;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class KorCmStrategy extends DefaultCloudMessageStrategy {
    public static final int SYNC_MAX_BULK_OPTION = 20;
    private final String KOR_STORE_NAME;
    private String LOG_TAG;
    private final String SKT_BASIC_AUTH_DEV_CLIENT_ID;
    private final String SKT_BASIC_AUTH_DEV_CLIENT_SECRET;
    private final String SKT_BASIC_AUTH_DEV_DE_PARAM;
    private final String SKT_BASIC_AUTH_PRD_CLIENT_ID;
    private final String SKT_BASIC_AUTH_PRD_CLIENT_SECRET;
    private final String SKT_BASIC_AUTH_PRD_DE_PARAM;
    private final String SKT_BASIC_AUTH_STG_CLIENT_ID;
    private final String SKT_BASIC_AUTH_STG_CLIENT_SECRET;
    private final String SKT_BASIC_AUTH_STG_DE_PARAM;
    private int mApiFailCount;
    private IControllerCommonInterface mControllerOfLastFailedAPI;
    private Class<? extends IHttpAPICommonInterface> mLastFailedAPI;
    private Mno mMno;

    public static class KorAttributeNames extends AttributeNames {
        public static String conversation_id = "Conversation-ID";
        public static String extended_rcs = "ExtendedRCS";
        public static String p_asserted_service = "P-Asserted-Service";
        public static String safety = "Safety";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getClientVersion() {
        return "1.0.0";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getOMAApiVersion() {
        return "v1";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getStoreName() {
        return "os";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public boolean isEncrypted() {
        return false;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public boolean isErrorCodeSupported(int i, IHttpAPICommonInterface iHttpAPICommonInterface) {
        return i == 401 || i == 429 || i == 404 || (i >= 500 && i < 600);
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public boolean shouldStopSendingAPIwhenNetworklost() {
        return true;
    }

    static {
        HashMap hashMap = new HashMap();
        DefaultCloudMessageStrategy.mMessageTypeMapping = hashMap;
        hashMap.put(Integer.valueOf(McsConstants.TP_MessageType.MULTIMEDIA.getId()), Integer.valueOf(McsConstants.RCSMessageType.MULTIMEDIA.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_USER_LEFT.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_USER_LEFT.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_USER_INVITED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_USER_INVITED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_USER_JOINED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_USER_JOINED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_CONTINUE_ON_ANOTHER_DEVICE.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_CONTINUE_ON_ANOTHER_DEVICE.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.TEXT.getId()), Integer.valueOf(McsConstants.RCSMessageType.TEXT.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.LOCATION.getId()), Integer.valueOf(McsConstants.RCSMessageType.LOCATION.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_LEADER_CHANGED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_LEADER_CHANGED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_GROUP_INVITE.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_GROUP_INVITE.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_GROUP_INVITE_FAIL.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_GROUP_INVITE_FAIL.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_GROUP_REINVITE.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_GROUP_REINVITE.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_LEADER_INFORMED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_LEADER_INFORMED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_DISMISS_CHAT.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_DISMISS_CHAT.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_KICKED_OUT_BY_LEADER.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_KICKED_OUT_BY_LEADER.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_RENAME_BY_LEADER.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_RENAME_BY_LEADER.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_LEFT_CHAT.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_LEFT_CHAT.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_ALL_LEFT_CHAT.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_ALL_LEFT_CHAT.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_GROUPCHAT_CLOSED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_GROUPCHAT_CLOSED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_IS_INVITED.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_IS_INVITED.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SYSTEM_ALL_LEFT_CHAT_NO_ADD.getId()), Integer.valueOf(McsConstants.RCSMessageType.SYSTEM_ALL_LEFT_CHAT_NO_ADD.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.SINGLE.getId()), Integer.valueOf(McsConstants.RCSMessageType.SINGLE.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping.put(Integer.valueOf(McsConstants.TP_MessageType.GROUP.getId()), Integer.valueOf(McsConstants.RCSMessageType.GROUP.getId()));
        DefaultCloudMessageStrategy.mMessageTypeMapping = Collections.unmodifiableMap(DefaultCloudMessageStrategy.mMessageTypeMapping);
    }

    KorCmStrategy(MessageStoreClient messageStoreClient) {
        super(messageStoreClient);
        this.LOG_TAG = KorCmStrategy.class.getSimpleName();
        this.mMno = Mno.DEFAULT;
        this.KOR_STORE_NAME = "os";
        this.SKT_BASIC_AUTH_DEV_CLIENT_ID = "fa2d462e-6733-438b-9ce6-ece340219487";
        this.SKT_BASIC_AUTH_DEV_CLIENT_SECRET = "e621e4301820d2f50ef93f4a73113aca";
        this.SKT_BASIC_AUTH_STG_CLIENT_ID = "49a34e35-7c00-469a-a93a-b518c2f2f2d9";
        this.SKT_BASIC_AUTH_STG_CLIENT_SECRET = "f8d195801bca4fb9359fe1db56ebac59";
        this.SKT_BASIC_AUTH_PRD_CLIENT_ID = "d11108fc-dac7-4b3c-bc81-5601c789a6f6";
        this.SKT_BASIC_AUTH_PRD_CLIENT_SECRET = "c896cf0606d7cf46b5944ebe8f71d55b";
        this.SKT_BASIC_AUTH_DEV_DE_PARAM = "ZGV2X21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=";
        this.SKT_BASIC_AUTH_STG_DE_PARAM = "c3RnX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=";
        this.SKT_BASIC_AUTH_PRD_DE_PARAM = "cHJkX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=";
        this.mApiFailCount = 0;
        this.mLastFailedAPI = null;
        this.mControllerOfLastFailedAPI = null;
        String str = this.LOG_TAG + "[" + messageStoreClient.getClientID() + "]";
        this.LOG_TAG = str;
        Log.d(str, "KorCmStrategy");
        this.mStrategyType = DefaultCloudMessageStrategy.CmStrategyType.KOR;
        this.mContentType = "application/json";
        this.mMno = this.mStoreClient.getSimManager().getSimMno();
        this.mProtocol = OMAGlobalVariables.HTTPS;
        this.mDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSSXXX", Locale.getDefault());
        this.mMaxBulkOption = 20;
        onOmaFlowInitStart();
        initOMASuccessfulCallFlowTranslator();
        initOMAFailedCallFlowTranslator();
        onOmaFlowInitComplete();
        initStandardRetrySchedule();
        initMessageAttributeRegistration();
        initOmaRetryVariables();
    }

    private void initOMAFailedCallFlowTranslator() {
        initOmaFailureCommonFlow();
    }

    public String getBasicPassword(String str, String str2) {
        return Base64.encodeToString((str + ":" + str2).getBytes(StandardCharsets.UTF_8), 2);
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getAuthorizationBasic() {
        String oasisAuthRoot = this.mStoreClient.getPrerenceManager().getOasisAuthRoot();
        if (oasisAuthRoot.contains("dev")) {
            return HttpAuthGenerator.generateBasicAuthHeader("fa2d462e-6733-438b-9ce6-ece340219487", getBasicPassword("fa2d462e-6733-438b-9ce6-ece340219487", "e621e4301820d2f50ef93f4a73113aca"));
        }
        if (oasisAuthRoot.contains("stg")) {
            return HttpAuthGenerator.generateBasicAuthHeader("49a34e35-7c00-469a-a93a-b518c2f2f2d9", getBasicPassword("49a34e35-7c00-469a-a93a-b518c2f2f2d9", "f8d195801bca4fb9359fe1db56ebac59"));
        }
        return oasisAuthRoot.contains(McsConstants.Auth.ROOT) ? HttpAuthGenerator.generateBasicAuthHeader("d11108fc-dac7-4b3c-bc81-5601c789a6f6", getBasicPassword("d11108fc-dac7-4b3c-bc81-5601c789a6f6", "c896cf0606d7cf46b5944ebe8f71d55b")) : "";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getAuthorizationBearer() {
        String mcsAccessToken = this.mStoreClient.getPrerenceManager().getMcsAccessToken();
        if (TextUtils.isEmpty(mcsAccessToken)) {
            return "";
        }
        return "Bearer " + mcsAccessToken;
    }

    private String getDecryptPasswordBasic() {
        String oasisAuthRoot = this.mStoreClient.getPrerenceManager().getOasisAuthRoot();
        if (oasisAuthRoot.contains("dev")) {
            return Util.decodeBase64("ZGV2X21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=");
        }
        if (oasisAuthRoot.contains("stg")) {
            return Util.decodeBase64("c3RnX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=");
        }
        return oasisAuthRoot.contains(McsConstants.Auth.ROOT) ? Util.decodeBase64("cHJkX21lc3NhZ2luZ19vYXNpc19mb3JldmVyXzEyIUA=") : "";
    }

    private String getDecryptPasswordBearer(Context context) {
        try {
            return CmsUtil.getMcsClientId(context).substring(0, 6) + getDecryptPasswordBasic().substring(0, 26);
        } catch (NullPointerException | StringIndexOutOfBoundsException e) {
            IMSLog.e(this.LOG_TAG, e.getMessage());
            return "";
        }
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String decrypt(String str, boolean z) {
        String decryptPasswordBasic;
        try {
            String string = new JSONObject(str).getString(McsConstants.Decryption.ENCRYPTED_DATA);
            String substring = string.substring(0, string.length() - 24);
            String substring2 = string.substring(string.length() - 24);
            byte[] hexStringToBytes = StrUtil.hexStringToBytes(substring);
            byte[] hexStringToBytes2 = StrUtil.hexStringToBytes(substring2);
            if (z) {
                decryptPasswordBasic = getDecryptPasswordBearer(this.mStoreClient.getContext());
            } else {
                decryptPasswordBasic = getDecryptPasswordBasic();
            }
            if (TextUtils.isEmpty(decryptPasswordBasic)) {
                return "";
            }
            SecretKeySpec secretKeySpec = new SecretKeySpec(decryptPasswordBasic.getBytes(StandardCharsets.UTF_8), SoftphoneNamespaces.SoftphoneSettings.ENCRYPTION_ALGORITHM);
            GCMParameterSpec gCMParameterSpec = new GCMParameterSpec(128, hexStringToBytes2);
            Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
            cipher.init(2, secretKeySpec, gCMParameterSpec);
            String replace = new String(cipher.doFinal(hexStringToBytes), StandardCharsets.UTF_8).replace("\\\"", CmcConstants.E_NUM_STR_QUOTE).replace("\\\\", "\\");
            return replace.substring(1, replace.length() - 1);
        } catch (Exception e) {
            IMSLog.e(this.LOG_TAG, e.getMessage());
            return "";
        }
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getDeviceType() {
        return DeviceUtil.isTablet() ? ImConstants.MessageCreatorTag.SD : "PD";
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public int getTypeUsingMessageContext(String str) {
        if (str.equals(MessageContextValues.pagerMessage)) {
            return 3;
        }
        if (str.equals("multimedia-message")) {
            return 4;
        }
        if (str.equals("chat-message") || str.equals(McsConstants.McsMessageContextValues.geolocationMessage) || str.equals(McsConstants.McsMessageContextValues.botMessage) || str.equals(McsConstants.McsMessageContextValues.responseMessage)) {
            return 11;
        }
        if (str.equals("file-message")) {
            return 12;
        }
        if (str.equals("standalone-message")) {
            return 14;
        }
        if (str.equals("imdn-message")) {
            return 13;
        }
        if (str.equals(MessageContextValues.voiceMessage)) {
            return 17;
        }
        return str.equals(McsConstants.McsMessageContextValues.conferenceMessage) ? 38 : 0;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getNcHost() {
        return this.mStoreClient.getPrerenceManager().getOasisServerRoot();
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getSmsHashTagOrCorrelationTag(String str, int i, String str2) {
        return AmbsUtils.generateSmsHashCode(str, i, str2, new String[]{"::", ":", ":::"}, true);
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public String getNmsHost() {
        return this.mStoreClient.getPrerenceManager().getOasisServerRoot();
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public boolean shouldCareAfterPreProcess(IAPICallFlowListener iAPICallFlowListener, IHttpAPICommonInterface iHttpAPICommonInterface, HttpResponseParams httpResponseParams, Object obj, BufferDBChangeParam bufferDBChangeParam, int i) {
        int statusCode = httpResponseParams.getStatusCode();
        String str = iHttpAPICommonInterface instanceof BaseNMSRequest ? "NMS" : "NC";
        Log.i(this.LOG_TAG, str + "[" + iHttpAPICommonInterface.getClass().getSimpleName() + "], res code[" + statusCode + "]");
        if (isOmaErrorRuleMatch(statusCode, iHttpAPICommonInterface, iAPICallFlowListener, obj, i)) {
            this.mStoreClient.getMcsRetryMapAdapter().remove(iHttpAPICommonInterface);
            Log.i(this.LOG_TAG, str + "[" + iHttpAPICommonInterface.getClass().getSimpleName() + "], isOmaErrorRuleMatch");
            return false;
        }
        if (!shouldCareAfterProcessOMACommonCase(iAPICallFlowListener, iHttpAPICommonInterface, httpResponseParams, bufferDBChangeParam)) {
            Log.i(this.LOG_TAG, str + "[" + iHttpAPICommonInterface.getClass().getSimpleName() + "], match common cases");
            return false;
        }
        Log.i(this.LOG_TAG, str + "[" + iHttpAPICommonInterface.getClass().getSimpleName() + "], [" + statusCode + "] catch call, return");
        return true;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy
    protected boolean isOmaErrorRuleMatch(int i, IHttpAPICommonInterface iHttpAPICommonInterface, IAPICallFlowListener iAPICallFlowListener, Object obj, int i2) {
        int intValue;
        OmaErrorKey omaErrorKey = new OmaErrorKey(i, iHttpAPICommonInterface.getClass().getSimpleName(), getHandlerClassName(iAPICallFlowListener));
        OmaErrorKey omaErrorKey2 = new OmaErrorKey(i, iHttpAPICommonInterface.getClass().getSimpleName(), Handler.class.getSimpleName());
        if (this.mOmaCallFlowTranslator.containsKey(omaErrorKey)) {
            intValue = this.mOmaCallFlowTranslator.get(omaErrorKey).intValue();
        } else {
            intValue = this.mOmaCallFlowTranslator.containsKey(omaErrorKey2) ? this.mOmaCallFlowTranslator.get(omaErrorKey2).intValue() : Integer.MIN_VALUE;
        }
        if (i2 == Integer.MIN_VALUE) {
            i2 = intValue;
        }
        if (i2 == Integer.MIN_VALUE) {
            return false;
        }
        OMASyncEventType valueOf = OMASyncEventType.valueOf(i2);
        String name = valueOf == null ? null : valueOf.name();
        Log.i(this.LOG_TAG, "API[" + iHttpAPICommonInterface.getClass().getSimpleName() + "], match rule[" + name + "]");
        if (i >= 200 && i < 300) {
            iAPICallFlowListener.onSuccessfulEvent(iHttpAPICommonInterface, i2, obj);
            return true;
        }
        iAPICallFlowListener.onFailedEvent(i2, obj);
        return true;
    }

    private void initOmaRetryVariables() {
        this.mApiFailCount = this.mStoreClient.getPrerenceManager().getOmaRetryCounter();
        this.mMaxRetryCounter = 1;
        Log.i(this.LOG_TAG, "OMA fail count is: " + this.mApiFailCount);
    }

    private String getHandlerClassName(IAPICallFlowListener iAPICallFlowListener) {
        String simpleName = iAPICallFlowListener.getClass().getSimpleName();
        if (iAPICallFlowListener instanceof BaseDataChangeHandler) {
            return BaseDataChangeHandler.class.getSimpleName();
        }
        if (iAPICallFlowListener instanceof BaseDeviceDataUpdateHandler) {
            return BaseDeviceDataUpdateHandler.class.getSimpleName();
        }
        if (iAPICallFlowListener instanceof BaseSyncHandler) {
            return BaseSyncHandler.class.getSimpleName();
        }
        return ((iAPICallFlowListener instanceof OMAPollingScheduler) || (iAPICallFlowListener instanceof ChannelScheduler)) ? OMAPollingScheduler.class.getSimpleName() : simpleName;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy
    protected boolean shouldCareAfterProcessOMACommonCase(IAPICallFlowListener iAPICallFlowListener, IHttpAPICommonInterface iHttpAPICommonInterface, HttpResponseParams httpResponseParams, BufferDBChangeParam bufferDBChangeParam) {
        int statusCode = httpResponseParams.getStatusCode();
        if ((statusCode >= 500 && statusCode < 600) || statusCode == 429) {
            return retryIfAvailable(iAPICallFlowListener, iHttpAPICommonInterface, statusCode);
        }
        if (statusCode != 401) {
            return true;
        }
        if (this.mApiFailCount >= getMaxRetryCounter()) {
            Log.i(this.LOG_TAG, "OMA API failed " + this.mApiFailCount + " times before, OMA API retired more than " + getMaxRetryCounter() + " times");
            clearOmaRetryVariables();
            return true;
        }
        this.mLastFailedAPI = iHttpAPICommonInterface.getClass();
        iAPICallFlowListener.onFailedCall(iHttpAPICommonInterface, bufferDBChangeParam);
        return false;
    }

    private void initStandardRetrySchedule() {
        HashMap hashMap = new HashMap();
        this.mStandardRetrySchedule = hashMap;
        hashMap.put(0, 25000);
        this.mStandardRetrySchedule.put(1, 125000);
        this.mStandardRetrySchedule.put(2, 625000);
        this.mStandardRetrySchedule = Collections.unmodifiableMap(this.mStandardRetrySchedule);
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public void onOmaApiCredentialFailed(IControllerCommonInterface iControllerCommonInterface, INetAPIEventListener iNetAPIEventListener, IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        iControllerCommonInterface.setOnApiSucceedOnceListener(null);
        if (this.mApiFailCount >= getMaxRetryCounter()) {
            Log.i(this.LOG_TAG, "OMA API failed " + this.mApiFailCount + " times before, OMA API retired more than " + getMaxRetryCounter() + " times, pop up error screen");
            clearOmaRetryVariables();
            iNetAPIEventListener.onOmaFailExceedMaxCount();
            return;
        }
        long adaptedRetrySchedule = getAdaptedRetrySchedule(this.mApiFailCount);
        if (i > 0) {
            adaptedRetrySchedule = Math.max(adaptedRetrySchedule, i * 1000);
        }
        Log.i(this.LOG_TAG, "OMA API failed " + this.mApiFailCount + " times beforeGo ahead fallback to SessionGen after " + (adaptedRetrySchedule / 1000) + " seconds");
        Message message = new Message();
        message.what = OMASyncEventType.CREDENTIAL_EXPIRED.getId();
        message.obj = Long.valueOf(adaptedRetrySchedule);
        iControllerCommonInterface.updateMessage(message);
        increaseFailedCount(iHttpAPICommonInterface, iControllerCommonInterface);
    }

    private void increaseFailedCount(IHttpAPICommonInterface iHttpAPICommonInterface, IControllerCommonInterface iControllerCommonInterface) {
        if (iHttpAPICommonInterface.getClass().equals(this.mLastFailedAPI)) {
            this.mApiFailCount++;
            Log.i(this.LOG_TAG, "failed count increment 1, failed count: " + this.mApiFailCount);
            this.mStoreClient.getPrerenceManager().saveOmaRetryCounter(this.mApiFailCount);
            return;
        }
        this.mLastFailedAPI = iHttpAPICommonInterface.getClass();
        this.mControllerOfLastFailedAPI = iControllerCommonInterface;
        Log.i(this.LOG_TAG, "fail count keep same[" + this.mApiFailCount + "], lastFailedAPI: " + this.mLastFailedAPI.getSimpleName() + ", currentFailedAPI: " + iHttpAPICommonInterface.getClass().getSimpleName());
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public void onOmaSuccess(IHttpAPICommonInterface iHttpAPICommonInterface) {
        if (iHttpAPICommonInterface.getClass().equals(this.mLastFailedAPI)) {
            clearOmaRetryVariables();
        }
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public IControllerCommonInterface getControllerOfLastFailedApi() {
        return this.mControllerOfLastFailedAPI;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public Class<? extends IHttpAPICommonInterface> getLastFailedApi() {
        return this.mLastFailedAPI;
    }

    private void clearOmaRetryVariables() {
        Log.i(this.LOG_TAG, "clear oma retry variables");
        this.mLastFailedAPI = null;
        this.mControllerOfLastFailedAPI = null;
        this.mApiFailCount = 0;
        this.mStoreClient.getPrerenceManager().saveOmaRetryCounter(this.mApiFailCount);
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public void clearOmaRetryData() {
        clearOmaRetryVariables();
    }

    private void initMessageAttributeRegistration() {
        HashMap hashMap = new HashMap();
        this.mMessageAttributeRegistration = hashMap;
        hashMap.put(IMessageAttributeInterface.P_ASSERTED_SERVICE, KorAttributeNames.p_asserted_service);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.MESSAGE_CONTEXT, AttributeNames.message_context);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.DIRECTION, "Direction");
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.FROM, AttributeNames.from);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.TO, AttributeNames.to);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.DATE, "Date");
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.CONTENT_TYPE, "Content-Type");
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.TEXT_CONTENT, AttributeNames.textcontent);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.CONVERSATION_ID, KorAttributeNames.conversation_id);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.SUBJECT, AttributeNames.subject);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.EXTENDED_RCS, KorAttributeNames.extended_rcs);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.MESSAGEBODY, AttributeNames.message_body);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.CHIPLIST, AttributeNames.chip_list);
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.TRAFFICTYPE, "Traffic-Type");
        this.mMessageAttributeRegistration.put(IMessageAttributeInterface.SAFETY, KorAttributeNames.safety);
        this.mMessageAttributeRegistration = Collections.unmodifiableMap(this.mMessageAttributeRegistration);
    }

    public static int getRCSMessageType(int i) {
        if (DefaultCloudMessageStrategy.mMessageTypeMapping.containsKey(Integer.valueOf(i))) {
            return DefaultCloudMessageStrategy.mMessageTypeMapping.get(Integer.valueOf(i)).intValue();
        }
        return -1;
    }

    private void initOMASuccessfulCallFlowTranslator() {
        initOmaSuccessCommonFlow();
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public boolean handleNCCommonError(IAPICallFlowListener iAPICallFlowListener, IHttpAPICommonInterface iHttpAPICommonInterface, int i, int i2) {
        Log.d(this.LOG_TAG, " handleNCCommonError api : " + iHttpAPICommonInterface.getClass().getSimpleName() + " statusCode: " + i + " retryAfter " + i2);
        if ((i < 500 || i >= 600) && i != 429) {
            if (i != 401) {
                return true;
            }
            iAPICallFlowListener.onFailedCall(iHttpAPICommonInterface);
            return true;
        }
        if (!this.mStoreClient.getMcsRetryMapAdapter().checkAndIncreaseRetry(iHttpAPICommonInterface, i)) {
            return false;
        }
        if (i == 429) {
            i2 = ImsUtil.getRandom().nextInt(ImSessionEvent.ADD_PARTICIPANTS) + 1000;
        }
        iAPICallFlowListener.onOverRequest(iHttpAPICommonInterface, String.valueOf(i), i2);
        return true;
    }

    protected boolean retryIfAvailable(IAPICallFlowListener iAPICallFlowListener, IHttpAPICommonInterface iHttpAPICommonInterface, int i) {
        IMSLog.i(this.LOG_TAG, " retryIfAvailable : request " + iHttpAPICommonInterface.getClass().getSimpleName() + "  error code " + i);
        int retryCount = this.mStoreClient.getMcsRetryMapAdapter().getRetryCount(iHttpAPICommonInterface.getClass().getSimpleName());
        if (!this.mStoreClient.getMcsRetryMapAdapter().checkAndIncreaseRetry(iHttpAPICommonInterface, i)) {
            return true;
        }
        if (i == 429) {
            iAPICallFlowListener.onOverRequest(iHttpAPICommonInterface, String.valueOf(i), ImsUtil.getRandom().nextInt(ImSessionEvent.ADD_PARTICIPANTS) + 1000);
            return false;
        }
        int adaptedRetrySchedule = getAdaptedRetrySchedule(retryCount);
        Log.d(this.LOG_TAG, " retry " + iHttpAPICommonInterface.getClass().getSimpleName() + " after " + adaptedRetrySchedule);
        iAPICallFlowListener.onOverRequest(iHttpAPICommonInterface, String.valueOf(i), adaptedRetrySchedule);
        return false;
    }

    @Override // com.sec.internal.ims.cmstore.strategy.DefaultCloudMessageStrategy, com.sec.internal.interfaces.ims.cmstore.ICloudMessageStrategy
    public int getAdaptedRetrySchedule(int i) {
        Map<Integer, Integer> map = this.mStandardRetrySchedule;
        if (map == null || !map.containsKey(Integer.valueOf(i))) {
            return 0;
        }
        return this.mStandardRetrySchedule.get(Integer.valueOf(i)).intValue();
    }
}
