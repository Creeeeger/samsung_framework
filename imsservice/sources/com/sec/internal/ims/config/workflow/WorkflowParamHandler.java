package com.sec.internal.ims.config.workflow;

import android.net.Network;
import android.text.TextUtils;
import com.sec.ims.settings.ImsProfile;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.DiagnosisConstants;
import com.sec.internal.constants.ims.cmstore.utils.OMAGlobalVariables;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.constants.ims.settings.GlobalSettingsConstants;
import com.sec.internal.google.SecImsNotifier;
import com.sec.internal.helper.CollectionUtils;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.ims.config.exception.EmptyBodyAndCookieException;
import com.sec.internal.ims.config.exception.InvalidXmlException;
import com.sec.internal.ims.config.exception.NoInitialDataException;
import com.sec.internal.ims.config.workflow.WorkflowBase;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.rcs.util.RcsUtils;
import com.sec.internal.ims.servicemodules.ss.UtStateMachine;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.interfaces.ims.config.ITelephonyAdapter;
import com.sec.internal.log.IMSLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.InetAddress;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/* loaded from: classes.dex */
public class WorkflowParamHandler {
    protected static final String CHARSET = "utf-8";
    protected static final int CLIENT_VENDOR = 2;
    protected static final int CLIENT_VERSION = 3;
    protected static final String GC_ACS_URL = "http://rcs-acs-mccXXX.jibe.google.com";
    protected static final String LOG_TAG = "WorkflowParamHandler";
    protected static final int MAX_RETRY = 15;
    protected static final int RCS_ENABLED_BY_USER = 4;
    protected static final int RCS_PROFILE = 1;
    protected static final int RCS_VERSION = 0;
    protected String mClientVendor;
    protected String mClientVersion;
    protected int mPhoneId;
    protected String mRcsEnabledByUser;
    protected String mRcsProfile;
    protected String mRcsVersion;
    protected ITelephonyAdapter mTelephony;
    protected WorkflowBase mWorkflowBase;

    enum UserAccept {
        ACCEPT,
        REJECT,
        NON_DEFAULT_MSG_APP
    }

    public WorkflowParamHandler(WorkflowBase workflowBase, int i, ITelephonyAdapter iTelephonyAdapter) {
        this.mWorkflowBase = workflowBase;
        this.mPhoneId = i;
        this.mTelephony = iTelephonyAdapter;
    }

    protected String initUrl() throws NoInitialDataException {
        HashMap hashMap = new HashMap();
        getMccMncInfo(hashMap);
        return buildUrl(hashMap);
    }

    protected String initUrl(String str) throws NoInitialDataException {
        if (!CollectionUtils.isNullOrEmpty(str)) {
            return "http://" + str;
        }
        return initUrl();
    }

    protected void getMccMncInfo(Map<String, String> map) throws NoInitialDataException {
        String imsi;
        map.put(ConfigConstants.URL.MCC_PNAME, this.mTelephony.getMcc());
        map.put(ConfigConstants.URL.MNC_PNAME, this.mTelephony.getMnc());
        if (TextUtils.isEmpty(map.get(ConfigConstants.URL.MCC_PNAME)) || TextUtils.isEmpty(map.get(ConfigConstants.URL.MNC_PNAME))) {
            throw new NoInitialDataException("MCC or MNC is not prepared");
        }
        if (this.mWorkflowBase.mMno != Mno.SPRINT || (imsi = this.mTelephony.getImsi()) == null || imsi.length() < 6) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "mcc, mnc from imsi");
        map.put(ConfigConstants.URL.MCC_PNAME, imsi.substring(0, 3));
        map.put(ConfigConstants.URL.MNC_PNAME, imsi.substring(3, 6));
    }

    protected String buildUrl(Map<String, String> map) throws NoInitialDataException {
        String mcc = this.mTelephony.getMcc();
        String mnc = this.mTelephony.getMnc();
        if (mcc == null || mnc == null) {
            throw new NoInitialDataException("MCC or MNC is not prepared");
        }
        String acsCustomServerUrl = ConfigUtil.getAcsCustomServerUrl(this.mPhoneId);
        if (isConfigProxy()) {
            return ConfigConstants.URL.INTERNAL_CONFIG_PROXY_TEMPLATE.replace(ConfigConstants.URL.MCC_PVALUE, map.get(ConfigConstants.URL.MCC_PNAME)).replace(ConfigConstants.URL.MNC_PVALUE, map.get(ConfigConstants.URL.MNC_PNAME));
        }
        if (!TextUtils.isEmpty(acsCustomServerUrl)) {
            return acsCustomServerUrl.equals(GC_ACS_URL) ? GC_ACS_URL.replace("XXX", mcc) : acsCustomServerUrl;
        }
        String replace = ConfigConstants.URL.CONFIG_TEMPLATE.replace(ConfigConstants.URL.MCC_PVALUE, map.get(ConfigConstants.URL.MCC_PNAME)).replace(ConfigConstants.URL.MNC_PVALUE, map.get(ConfigConstants.URL.MNC_PNAME));
        checkUrlConnection(replace);
        return replace;
    }

    protected void checkUrlConnection(String str) throws NoInitialDataException {
        Network network;
        boolean isJibeAs = ConfigUtil.isJibeAs(this.mPhoneId);
        if (this.mWorkflowBase.mMno == Mno.ATT && !isJibeAs) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "skip to checkUrlConnection");
            return;
        }
        String str2 = LOG_TAG;
        IMSLog.i(str2, this.mPhoneId, "checkUrlConnection: url: " + str.replaceFirst("https?://", ""));
        try {
            WorkflowBase workflowBase = this.mWorkflowBase;
            InetAddress byName = (workflowBase.mMno != Mno.VZW || isJibeAs || (network = workflowBase.mNetwork) == null) ? InetAddress.getByName(str.replaceFirst("https?://", "")) : network.getByName(str.replaceFirst("https?://", ""));
            IMSLog.i(str2, this.mPhoneId, "addr: " + byName.toString());
        } catch (UnknownHostException e) {
            e.printStackTrace();
            throw new NoInitialDataException("connection is not prepared");
        }
    }

    protected boolean isConfigProxy() {
        int i = 0;
        if (ConfigUtil.getAutoconfigSourceWithFeature(this.mPhoneId, 0) != 1) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "config proxy is disabled.");
            return false;
        }
        while (i < 15) {
            try {
                HttpAdapter httpAdapter = new HttpAdapter(this.mPhoneId);
                httpAdapter.open(ConfigConstants.URL.INTERNAL_CONFIG_PROXY_AUTHORITY);
                IHttpAdapter.Response request = httpAdapter.request();
                httpAdapter.close();
                if (request != null && request.getStatusCode() == 200 && request.getBody() != null && new String(request.getBody(), CHARSET).compareToIgnoreCase(ConfigConstants.KEY.INTERNAL_CONFIG_PROXY_AUTHORITY) == 0) {
                    return true;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            this.mWorkflowBase.sleep(UtStateMachine.HTTP_READ_TIMEOUT_GCF);
            i++;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "config proxy is enabled and got exception (retry: " + i + ")");
        return true;
    }

    protected String getModelInfoFromBuildVersion(String str, String str2, int i, boolean z) {
        String str3;
        if (!TextUtils.isEmpty(str)) {
            String[] split = str.split(CmcConstants.E_NUM_SLOT_SPLIT);
            if (split.length == 2 && (str3 = split[1]) != null && !str3.isEmpty()) {
                String str4 = split[1];
                if (str2.startsWith(str4) && str2.length() > str4.length()) {
                    str2 = str2.substring(str4.length());
                }
            }
        }
        if (str2.length() <= i) {
            return str2;
        }
        if (z) {
            int length = str2.length();
            return str2.substring(length - i, length);
        }
        return str2.substring(0, i - 1);
    }

    protected boolean isSupportCarrierVersion() {
        return SimUtil.isSupportCarrierVersion(this.mPhoneId);
    }

    protected String getModelInfoFromCarrierVersion(String str, String str2, int i, boolean z) {
        String modelInfoFromBuildVersion = getModelInfoFromBuildVersion(str, str2, i, z);
        String rcsConfigMark = this.mWorkflowBase.mModule.getRcsConfigMark(this.mPhoneId);
        if (!TextUtils.isEmpty(rcsConfigMark)) {
            if (isSupportCarrierVersion()) {
                modelInfoFromBuildVersion = modelInfoFromBuildVersion + rcsConfigMark;
            } else {
                modelInfoFromBuildVersion = modelInfoFromBuildVersion + "om";
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "terminal version [" + modelInfoFromBuildVersion + "] : adds [" + rcsConfigMark + "] to terminal version");
        return modelInfoFromBuildVersion;
    }

    protected String encodeRFC3986(String str) {
        try {
            return URLEncoder.encode(str, CHARSET).replace("+", "%20").replace("*", "%2A").replace("%7E", "~");
        } catch (UnsupportedEncodingException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, e.toString());
            e.printStackTrace();
            return str;
        }
    }

    protected String encodeRFC7254(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return "urn%3agsma%3aimei%3a" + String.format("%s-%s-%s", str.substring(0, 8), str.substring(8, 14), str.length() > 14 ? str.substring(14) : "0");
    }

    protected Map<String, String> getParsedXmlFromBody() {
        byte[] body = this.mWorkflowBase.mSharedInfo.getHttpResponse().getBody();
        if (body == null) {
            body = new String("").getBytes();
        }
        try {
            try {
                return this.mWorkflowBase.mXmlParser.parse(new String(body, CHARSET));
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    protected boolean isRequiredAuthentication(Map<String, String> map) throws Exception {
        if (map == null) {
            throw new InvalidXmlException("no parsedXml data");
        }
        if (map.get("root/vers/version") != null && map.get("root/vers/validity") != null) {
            return false;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isRequiredAuthentication: parsedXml need to contain version or validity item");
        WorkflowBase workflowBase = this.mWorkflowBase;
        if (workflowBase.mCookieHandler.isCookie(workflowBase.mSharedInfo.getHttpResponse())) {
            return true;
        }
        throw new EmptyBodyAndCookieException("no body and no cookie, something wrong");
    }

    protected void parseParam(Map<String, String> map) {
        String encryptParam;
        String str = ConfigConstants.PATH.USERPWD;
        String str2 = map.get(ConfigConstants.PATH.USERPWD);
        if (TextUtils.isEmpty(str2)) {
            str = ConfigConstants.PATH.USERPWD_UP20;
            str2 = map.get(ConfigConstants.PATH.USERPWD_UP20);
        }
        if (str2 != null && !str2.isEmpty() && (encryptParam = ConfigUtil.encryptParam(str2)) != null) {
            map.put(str, encryptParam);
            IMSLog.s(LOG_TAG, this.mPhoneId, "encrypt data: " + encryptParam);
        }
        if (map.get(ConfigConstants.PATH.IM_MAX_SIZE) == null) {
            String str3 = map.get(ConfigConstants.PATH.IM_MAX_SIZE_1_TO_1);
            if (str3 != null) {
                IMSLog.i(LOG_TAG, this.mPhoneId, "maxsize is empty, use it as maxsize1to1 value: " + str3);
                map.put(ConfigConstants.PATH.IM_MAX_SIZE, str3);
            } else {
                map.put(ConfigConstants.PATH.IM_MAX_SIZE, "");
                map.put(ConfigConstants.PATH.IM_MAX_SIZE_1_TO_1, "");
            }
        }
        checkSetToGS(map);
    }

    protected void parseParamForAtt(Map<String, String> map) {
        Boolean valueOf = Boolean.valueOf(RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId) && ConfigUtil.isGoogDmaPackageInuse(this.mWorkflowBase.mContext, this.mPhoneId) && ImsProfile.isRcsUp2Profile(this.mWorkflowBase.mRcsProfile));
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "isRcsUp2ProfileForGoogle : " + valueOf);
        String str2 = valueOf.booleanValue() ? ConfigConstants.ConfigPath.FILETRANSFER_CHARACTERISTIC_PATH : ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH;
        String str3 = str2 + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI;
        Locale locale = Locale.US;
        String str4 = map.get(str3.toLowerCase(locale));
        if (valueOf.booleanValue() && TextUtils.isEmpty(str4)) {
            IMSLog.i(str, this.mPhoneId, "ftHTTPCSURI is null. Try to read with UP 1.0 path");
            str4 = map.get((ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI).toLowerCase(locale));
            str2 = ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH;
        }
        if (str4 != null && !str4.toLowerCase(locale).startsWith(OMAGlobalVariables.HTTP)) {
            IMSLog.i(str, this.mPhoneId, "handleFtHttpCsUriValue: FT_HTTP_CS_URI has invalid URL");
            map.put((str2 + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI).toLowerCase(locale), "");
        }
        ConfigUtil.encryptParams(map, str2 + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_USER, str2 + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_PWD, str2 + ConfigConstants.ConfigTable.IM_FT_HTTP_CS_URI, "root/application/1/serviceproviderext/nms_url", "root/application/1/serviceproviderext/nc_url", "root/token/token");
        try {
            map.put(ConfigConstants.PATH.RAW_CONFIG_XML_FILE, new String(this.mWorkflowBase.mSharedInfo.getHttpResponse().getBody(), CHARSET));
        } catch (UnsupportedEncodingException e) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "Failed to put xml!");
            e.printStackTrace();
        }
        Locale locale2 = Locale.US;
        String str5 = map.get("root/application/1/im/ext/att/slmMaxRecipients".toLowerCase(locale2));
        String str6 = LOG_TAG;
        IMSLog.i(str6, this.mPhoneId, "slmMaxRecipients: " + str5);
        StringBuilder sb = new StringBuilder();
        sb.append(valueOf.booleanValue() ? ConfigConstants.ConfigPath.CHAT_CHARACTERISTIC_PATH : ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH);
        sb.append("max_adhoc_group_size");
        String sb2 = sb.toString();
        if (TextUtils.isEmpty(str5)) {
            str5 = map.get(sb2.toLowerCase(locale2));
            if (TextUtils.isEmpty(str5) && valueOf.booleanValue()) {
                str5 = map.get(ConfigConstants.ConfigPath.IM_CHARACTERISTIC_PATH.toLowerCase(locale2));
            }
            IMSLog.i(str6, this.mPhoneId, "max_adhoc_group_size: " + str5);
        }
        if (TextUtils.isEmpty(str5)) {
            return;
        }
        map.put("root/application/1/im/ext/max_adhoc_closed_group_size".toLowerCase(locale2), str5);
    }

    protected void parseParamForLocalFile(Map<String, String> map) {
        map.put(ConfigConstants.PATH.RAW_CONFIG_XML_FILE, this.mWorkflowBase.mSharedInfo.getXml());
        Locale locale = Locale.US;
        String str = map.get("root/application/1/im/ext/att/slmMaxRecipients".toLowerCase(locale));
        if (!TextUtils.isEmpty(str)) {
            map.put("root/application/1/im/ext/max_adhoc_closed_group_size".toLowerCase(locale), str);
            IMSLog.i(LOG_TAG, this.mPhoneId, "Using slmMaxRecipients: " + str);
            return;
        }
        String str2 = map.get("root/application/1/im/max_adhoc_group_size".toLowerCase(locale));
        if (!TextUtils.isEmpty(str2)) {
            map.put("root/application/1/im/ext/max_adhoc_closed_group_size".toLowerCase(locale), str2);
            IMSLog.i(LOG_TAG, this.mPhoneId, "slmMaxRecipients is null. Using max_adhoc_group_size instead: " + str2);
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "slmMaxRecipients and max_adhoc_group_size is null");
    }

    protected void moveHttpParam(Map<String, String> map) {
        if (this.mWorkflowBase.mMno != Mno.TMOUS || ConfigUtil.isJibeAs(this.mPhoneId) || TextUtils.isEmpty(map.get("root/application/1/im/ext/max_adhoc_open_group_size"))) {
            return;
        }
        Locale locale = Locale.US;
        map.put("root/application/1/im/ext/ftMSRPftWarnSize".toLowerCase(locale), map.get("root/application/1/im/ftWarnSize".toLowerCase(locale)));
        map.put("root/application/1/im/ext/ftMSRPMaxSizeFileTr".toLowerCase(locale), map.get("root/application/1/im/MaxSizeFileTr".toLowerCase(locale)));
        map.put("root/application/1/im/ext/ftMSRPMaxSizeFileTrIncoming".toLowerCase(locale), map.get("root/application/1/im/MaxSizeFileTrIncoming".toLowerCase(locale)));
        map.put("root/application/1/im/ext/max_adhoc_closed_group_size".toLowerCase(locale), map.get("root/application/1/im/max_adhoc_group_size".toLowerCase(locale)));
        map.put("root/application/1/im/ftWarnSize".toLowerCase(locale), map.get("root/application/1/im/ext/fthttpftwarnsize"));
        map.put("root/application/1/im/MaxSizeFileTr".toLowerCase(locale), map.get("root/application/1/im/ext/fthttpmaxsizefiletr"));
        map.put("root/application/1/im/MaxSizeFileTrIncoming".toLowerCase(locale), map.get("root/application/1/im/ext/fthttpmaxsizefiletrincoming"));
        map.put("root/application/1/im/max_adhoc_group_size".toLowerCase(locale), map.get("root/application/1/im/ext/max_adhoc_open_group_size"));
        map.remove("root/application/1/im/ext/fthttpftwarnsize");
        map.remove("root/application/1/im/ext/fthttpmaxsizefiletr");
        map.remove("root/application/1/im/ext/fthttpmaxsizefiletrincoming");
        map.remove("root/application/1/im/ext/max_adhoc_open_group_size");
    }

    protected Map<String, String> getUserMessage(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry.getKey().startsWith(ConfigConstants.PATH.MSG)) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return hashMap;
    }

    UserAccept getUserAcceptDetailed(Map<String, String> map) {
        if (this.mWorkflowBase.mMno.isEur() && !ConfigUtil.isSecDmaPackageInuse(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return UserAccept.NON_DEFAULT_MSG_APP;
        }
        int version = this.mWorkflowBase.getVersion();
        int version2 = this.mWorkflowBase.getVersion(map);
        Map<String, String> userMessage = getUserMessage(map);
        boolean z = true;
        if (userMessage.size() == 4) {
            if (version <= ((this.mWorkflowBase.mMno != Mno.ATT || ConfigUtil.isJibeAs(this.mPhoneId)) ? 0 : 1) || version2 <= 0) {
                z = getUserAcceptWithDialog(userMessage);
            }
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getUserAccept: userAccept: " + z + " oldVersion: " + version + ", newVersion: " + version2);
        return z ? UserAccept.ACCEPT : UserAccept.REJECT;
    }

    protected boolean getUserAccept(Map<String, String> map) {
        return getUserAcceptDetailed(map) == UserAccept.ACCEPT;
    }

    protected boolean getUserAcceptWithDialog(Map<String, String> map) {
        String str = map.get(ConfigConstants.PATH.MSG_TITLE);
        String str2 = map.get(ConfigConstants.PATH.MSG_MESSAGE);
        String str3 = map.get(ConfigConstants.PATH.MSG_ACCEPT_BUTTON);
        String str4 = map.get(ConfigConstants.PATH.MSG_REJECT_BUTTON);
        this.mWorkflowBase.mPowerController.release();
        boolean acceptReject = this.mWorkflowBase.mDialog.getAcceptReject(str, str2, str3, str4, this.mPhoneId);
        IMSLog.i(LOG_TAG, this.mPhoneId, "getUserAcceptWithDialog: userAccept: " + acceptReject);
        this.mWorkflowBase.mPowerController.lock();
        return acceptReject;
    }

    protected void setOpModeWithUserAccept(boolean z, Map<String, String> map, WorkflowBase.OpMode opMode) {
        if (z) {
            WorkflowBase workflowBase = this.mWorkflowBase;
            workflowBase.setOpMode(workflowBase.getOpMode(map), map);
        } else {
            this.mWorkflowBase.setOpMode(opMode, null);
        }
    }

    protected void checkSetToGS(Map<String, String> map) {
        String str = LOG_TAG;
        IMSLog.i(str, this.mPhoneId, "checkSetToGS:");
        setChatSettings(map);
        setGroupChatSettings(map);
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.STANDALONE_MSG_AUTH, this.mPhoneId);
        if (!TextUtils.isEmpty(setting)) {
            IMSLog.i(str, this.mPhoneId, "SlmAuth set to " + setting);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/services/standaloneMsgAuth".toLowerCase(Locale.US), setting);
            } else {
                map.put("root/application/1/services/standaloneMsgAuth".toLowerCase(Locale.US), setting);
            }
        }
        String setting2 = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.GEOPUSH_AUTH, this.mPhoneId);
        if (!TextUtils.isEmpty(setting2)) {
            IMSLog.i(str, this.mPhoneId, "GeoPushAuth set to " + setting2);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/services/geolocPushAuth".toLowerCase(Locale.US), setting2);
            } else {
                map.put("root/application/1/services/geolocPushAuth".toLowerCase(Locale.US), setting2);
            }
        }
        setFtSettings(map);
        setUxSettings(map);
        setClientControlSettings(map);
        setCapabilitySettings(map);
    }

    protected boolean setRcsClientConfiguration(String str, String str2, String str3, String str4) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return false;
        }
        if (!isRcsClientConfigurationInfoChanged(str, str2, str3, str4)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsClientConfiguration: rcsClientConfigurationInfo is not changed");
            return false;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsClientConfiguration: rcsVersion: " + str + " rcsProfile: " + str2 + " clientVendor: " + str3 + " clientVersion: " + str4 + ": set this info in storage");
        this.mRcsVersion = str;
        this.mRcsProfile = str2;
        this.mClientVendor = str3;
        this.mClientVersion = str4;
        this.mWorkflowBase.mStorage.write(ConfigConstants.PATH.INFO_RCS_VERSION, TextUtils.isEmpty(str) ? "" : this.mRcsVersion);
        this.mWorkflowBase.mStorage.write(ConfigConstants.PATH.INFO_RCS_PROFILE, TextUtils.isEmpty(this.mRcsProfile) ? "" : this.mRcsProfile);
        this.mWorkflowBase.mStorage.write(ConfigConstants.PATH.INFO_CLIENT_VENDOR, TextUtils.isEmpty(this.mClientVendor) ? "" : this.mClientVendor);
        this.mWorkflowBase.mStorage.write(ConfigConstants.PATH.INFO_CLIENT_VERSION, TextUtils.isEmpty(this.mClientVersion) ? "" : this.mClientVersion);
        return true;
    }

    protected boolean setRcsSwitchValue(String str) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return false;
        }
        if (!isRcsEnabledByUserChanged(str)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsSwitchValue: RcsSwitchValue is not changed");
            return false;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "setRcsSwitchValue: rcsEnabledByUser: " + str);
        this.mRcsEnabledByUser = str;
        this.mWorkflowBase.mStorage.write(ConfigConstants.PATH.INFO_RCS_ENABLED_BY_USER, TextUtils.isEmpty(str) ? "" : this.mRcsEnabledByUser);
        return true;
    }

    protected String getRcsVersionFromStorage() {
        return this.mWorkflowBase.mStorage.read(ConfigConstants.PATH.INFO_RCS_VERSION);
    }

    protected String getRcsVersion(boolean z) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return "";
        }
        String rcsVersionFromStorage = getRcsVersionFromStorage();
        if (TextUtils.isEmpty(rcsVersionFromStorage)) {
            rcsVersionFromStorage = SecImsNotifier.getInstance().getRcsClientConfiguration(this.mPhoneId, 0);
        }
        if (TextUtils.isEmpty(rcsVersionFromStorage) && z) {
            rcsVersionFromStorage = ConfigConstants.PVALUE.GOOG_DEFAULT_RCS_VERSION;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getRcsVersion: " + rcsVersionFromStorage);
        return rcsVersionFromStorage;
    }

    protected String getRcsProfileFromStorage() {
        return this.mWorkflowBase.mStorage.read(ConfigConstants.PATH.INFO_RCS_PROFILE);
    }

    protected String getRcsProfile(boolean z) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return "";
        }
        String rcsProfileFromStorage = getRcsProfileFromStorage();
        if (TextUtils.isEmpty(rcsProfileFromStorage)) {
            rcsProfileFromStorage = SecImsNotifier.getInstance().getRcsClientConfiguration(this.mPhoneId, 1);
        }
        if (TextUtils.isEmpty(rcsProfileFromStorage) && z) {
            rcsProfileFromStorage = "UP_1.0";
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getRcsProfile: " + rcsProfileFromStorage);
        return rcsProfileFromStorage;
    }

    protected String getClientVendorFromStorage() {
        return this.mWorkflowBase.mStorage.read(ConfigConstants.PATH.INFO_CLIENT_VENDOR);
    }

    protected String getClientVendor(boolean z) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return "";
        }
        String clientVendorFromStorage = getClientVendorFromStorage();
        if (TextUtils.isEmpty(clientVendorFromStorage)) {
            clientVendorFromStorage = SecImsNotifier.getInstance().getRcsClientConfiguration(this.mPhoneId, 2);
        }
        if (TextUtils.isEmpty(clientVendorFromStorage) && z) {
            clientVendorFromStorage = ConfigConstants.PVALUE.GOOG_DEFAULT_CLIENT_VENDOR;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getClientVendor: " + clientVendorFromStorage);
        return clientVendorFromStorage;
    }

    protected String getClientVersionFromStorage() {
        return this.mWorkflowBase.mStorage.read(ConfigConstants.PATH.INFO_CLIENT_VERSION);
    }

    protected String getClientVersion(boolean z) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return "";
        }
        String clientVersionFromStorage = getClientVersionFromStorage();
        if (TextUtils.isEmpty(clientVersionFromStorage)) {
            clientVersionFromStorage = SecImsNotifier.getInstance().getRcsClientConfiguration(this.mPhoneId, 3);
        }
        if (TextUtils.isEmpty(clientVersionFromStorage) && z) {
            clientVersionFromStorage = ConfigConstants.PVALUE.GOOG_DEFAULT_CLIENT_VERSION;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "getClientVersion: " + clientVersionFromStorage);
        return clientVersionFromStorage;
    }

    protected String getRcsEnabledByUserFromStorage() {
        return this.mWorkflowBase.mStorage.read(ConfigConstants.PATH.INFO_RCS_ENABLED_BY_USER);
    }

    protected String isRcsEnabledByUser(boolean z) {
        if (!RcsUtils.isImsSingleRegiRequired(this.mWorkflowBase.mContext, this.mPhoneId)) {
            return "";
        }
        String rcsEnabledByUserFromStorage = getRcsEnabledByUserFromStorage();
        if (TextUtils.isEmpty(rcsEnabledByUserFromStorage)) {
            rcsEnabledByUserFromStorage = SecImsNotifier.getInstance().getRcsClientConfiguration(this.mPhoneId, 4);
        }
        if (TextUtils.isEmpty(rcsEnabledByUserFromStorage) && z) {
            rcsEnabledByUserFromStorage = "1";
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "isRcsEnabledByUser: " + rcsEnabledByUserFromStorage);
        return rcsEnabledByUserFromStorage;
    }

    public boolean isRcsVersionChanged(String str) {
        this.mRcsVersion = !TextUtils.isEmpty(this.mRcsVersion) ? this.mRcsVersion : getRcsVersionFromStorage();
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, this.mRcsVersion)) ? false : true;
    }

    public boolean isRcsProfileChanged(String str) {
        this.mRcsProfile = !TextUtils.isEmpty(this.mRcsProfile) ? this.mRcsProfile : getRcsProfileFromStorage();
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, this.mRcsProfile)) ? false : true;
    }

    public boolean isClientVendorChanged(String str) {
        this.mClientVendor = !TextUtils.isEmpty(this.mClientVendor) ? this.mClientVendor : getClientVendorFromStorage();
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, this.mClientVendor)) ? false : true;
    }

    public boolean isClientVersionChanged(String str) {
        this.mClientVersion = !TextUtils.isEmpty(this.mClientVersion) ? this.mClientVersion : getClientVersionFromStorage();
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, this.mClientVersion)) ? false : true;
    }

    public boolean isRcsEnabledByUserChanged(String str) {
        this.mRcsEnabledByUser = !TextUtils.isEmpty(this.mRcsEnabledByUser) ? this.mRcsEnabledByUser : getRcsEnabledByUserFromStorage();
        return (TextUtils.isEmpty(str) || TextUtils.equals(str, this.mRcsEnabledByUser)) ? false : true;
    }

    public boolean isRcsClientConfigurationInfoChanged(String str, String str2, String str3, String str4) {
        return isRcsVersionChanged(str) || isRcsProfileChanged(str2) || isClientVendorChanged(str3) || isClientVersionChanged(str4);
    }

    public boolean isRcsClientConfigurationInfoNotSet() {
        return TextUtils.isEmpty(getRcsVersion(false)) || TextUtils.isEmpty(getRcsProfile(false)) || TextUtils.isEmpty(getClientVendor(false)) || TextUtils.isEmpty(getClientVersion(false));
    }

    private void setChatSettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.CHAT_AUTH, this.mPhoneId);
        if (!TextUtils.isEmpty(setting)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "ChatAuth set to " + setting);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/services/ChatAuth".toLowerCase(Locale.US), setting);
            } else {
                map.put("root/application/1/services/ChatAuth".toLowerCase(Locale.US), setting);
            }
        }
        String setting2 = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.IM_SESSION_TIMER, this.mPhoneId);
        if (TextUtils.isEmpty(setting2)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "ImSessionTimer set to " + setting2);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/im/TimerIdle".toLowerCase(Locale.US), setting2);
        } else {
            map.put("root/application/1/im/TimerIdle".toLowerCase(Locale.US), setting2);
        }
    }

    private void setGroupChatSettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.GROUP_CHAT_AUTH, this.mPhoneId);
        if (!TextUtils.isEmpty(setting)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "GroupChatAuth set to " + setting);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/services/GroupChatAuth".toLowerCase(Locale.US), setting);
            } else {
                map.put("root/application/1/services/GroupChatAuth".toLowerCase(Locale.US), setting);
            }
        }
        String setting2 = ConfigUtil.getSetting("max_adhoc_group_size", this.mPhoneId);
        if (!TextUtils.isEmpty(setting2)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "MaxAdhocGroupSize set to " + setting2);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/im/max_adhoc_group_size".toLowerCase(Locale.US), setting2);
            } else {
                map.put("root/application/1/im/max_adhoc_group_size".toLowerCase(Locale.US), setting2);
            }
        }
        String setting3 = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.AUTO_ACCEPT_GROUP_CHAT, this.mPhoneId);
        if (TextUtils.isEmpty(setting3)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "AutoAcceptGroupChat set to " + setting3);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/im/autacceptgroupchat".toLowerCase(Locale.US), setting3);
        } else {
            map.put("root/application/1/im/autacceptgroupchat".toLowerCase(Locale.US), setting3);
        }
    }

    private void setFtSettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.FT_DEFAULT_MECH, this.mPhoneId);
        if (TextUtils.isEmpty(setting)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "FtDefaultMech set to " + setting);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/im/ftDefaultMech".toLowerCase(Locale.US), setting);
        } else {
            map.put("root/application/1/im/ftDefaultMech".toLowerCase(Locale.US), setting);
        }
    }

    private void setUxSettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.MESSAGING_UX, this.mPhoneId);
        if (!TextUtils.isEmpty(setting)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "MessagingUx set to " + setting);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/ux/messagingUX".toLowerCase(Locale.US), setting);
            } else {
                map.put("root/application/1/ux/messagingUX".toLowerCase(Locale.US), setting);
            }
        }
        String setting2 = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.USER_ALIAS_AUTH, this.mPhoneId);
        if (TextUtils.isEmpty(setting2)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "UserAliasAuth set to " + setting2);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/ux/userAliasAuth".toLowerCase(Locale.US), setting2);
        } else {
            map.put("root/application/1/ux/userAliasAuth".toLowerCase(Locale.US), setting2);
        }
    }

    private void setClientControlSettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.RECONNECT_GUARD_TIMER, this.mPhoneId);
        if (!TextUtils.isEmpty(setting)) {
            IMSLog.i(LOG_TAG, this.mPhoneId, "ReconGuardTimer set to " + setting);
            if (map == null) {
                this.mWorkflowBase.mStorage.write("root/application/1/clientControl/reconnectGuardTimer".toLowerCase(Locale.US), setting);
            } else {
                map.put("root/application/1/clientControl/reconnectGuardTimer".toLowerCase(Locale.US), setting);
            }
        }
        String setting2 = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.MAX_1TO_MANY_RECIPIENTS, this.mPhoneId);
        if (TextUtils.isEmpty(setting2)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "Max1ToManyRecipients set to " + setting2);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/clientControl/max1toManyRecipients".toLowerCase(Locale.US), setting2);
        } else {
            map.put("root/application/1/clientControl/max1toManyRecipients".toLowerCase(Locale.US), setting2);
        }
    }

    private void setCapabilitySettings(Map<String, String> map) {
        String setting = ConfigUtil.getSetting(GlobalSettingsConstants.RCS.CAPABILITY_DISCOVERY_MECH, this.mPhoneId);
        if (TextUtils.isEmpty(setting)) {
            return;
        }
        IMSLog.i(LOG_TAG, this.mPhoneId, "CapDiscMech set to " + setting);
        if (map == null) {
            this.mWorkflowBase.mStorage.write("root/application/1/capdiscovery/defaultdisc".toLowerCase(Locale.US), setting);
        } else {
            map.put("root/application/1/capdiscovery/defaultdisc".toLowerCase(Locale.US), setting);
        }
    }

    public byte[] getProvisioningXml(boolean z) {
        String str;
        RandomAccessFile randomAccessFile;
        WorkflowParamHandler workflowParamHandler;
        Iterator<Map.Entry<String, String>> it;
        String str2;
        Element element;
        String str3;
        NodeList nodeList;
        String str4;
        Element element2;
        String str5;
        String str6;
        Iterator<Map.Entry<String, String>> it2;
        Map.Entry<String, String> entry;
        boolean z2;
        int indexOf;
        WorkflowParamHandler workflowParamHandler2 = this;
        Map<String, String> readAll = workflowParamHandler2.mWorkflowBase.mStorage.readAll();
        String str7 = "";
        if (readAll == null) {
            IMSLog.d(LOG_TAG, "readData is null!");
            return "".getBytes();
        }
        try {
            try {
                Document newDocument = DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument();
                Element createElement = newDocument.createElement("wap-provisioningdoc");
                newDocument.appendChild(createElement);
                Attr createAttribute = newDocument.createAttribute("version");
                createAttribute.setValue("1.1");
                createElement.setAttributeNode(createAttribute);
                Iterator<Map.Entry<String, String>> it3 = readAll.entrySet().iterator();
                boolean z3 = false;
                while (it3.hasNext()) {
                    Map.Entry<String, String> next = it3.next();
                    String key = next.getKey();
                    if (!key.startsWith("root") || TextUtils.isEmpty(next.getValue())) {
                        workflowParamHandler = workflowParamHandler2;
                        it = it3;
                        str2 = str7;
                        element = createElement;
                    } else {
                        IMSLog.d(LOG_TAG, "Path: " + key);
                        int indexOf2 = key.indexOf(47);
                        String str8 = str7;
                        String str9 = str8;
                        int i = indexOf2;
                        int indexOf3 = key.indexOf(47, indexOf2 + 1);
                        while (true) {
                            str3 = "type";
                            if (indexOf3 <= 0) {
                                break;
                            }
                            int i2 = indexOf3 + 1;
                            if (isIndexTag(key.substring(i2))) {
                                break;
                            }
                            String substring = key.substring(i + 1, indexOf3);
                            if (isIndexTag(substring)) {
                                it2 = it3;
                                str = str7;
                                entry = next;
                            } else {
                                it2 = it3;
                                NodeList elementsByTagName = newDocument.getElementsByTagName("characteristic");
                                str = str7;
                                int i3 = 0;
                                while (i3 < elementsByTagName.getLength()) {
                                    try {
                                        try {
                                            Node item = elementsByTagName.item(i3);
                                            NodeList nodeList2 = elementsByTagName;
                                            entry = next;
                                            if (item.getNodeType() == 1) {
                                                Element element3 = (Element) item;
                                                if (element3.getAttribute("type").equalsIgnoreCase(substring)) {
                                                    if (isListTagName(substring)) {
                                                        String substring2 = key.substring(i2, indexOf3 + 2);
                                                        if (!substring2.isEmpty() && element3.getAttribute("id").equalsIgnoreCase(substring2)) {
                                                            z2 = true;
                                                            break;
                                                        }
                                                    } else if (((Element) element3.getParentNode()).getAttribute("type").equalsIgnoreCase(str8)) {
                                                        z2 = true;
                                                        break;
                                                    }
                                                } else {
                                                    continue;
                                                }
                                            }
                                            i3++;
                                            elementsByTagName = nodeList2;
                                            next = entry;
                                        } catch (IOException | ParserConfigurationException e) {
                                            e = e;
                                            e.printStackTrace();
                                            return str.getBytes();
                                        }
                                    } catch (TransformerException e2) {
                                        e = e2;
                                        e.printStackTrace();
                                        return str.getBytes();
                                    }
                                }
                                entry = next;
                                z2 = false;
                                if (!z2) {
                                    if (!str8.isEmpty()) {
                                        NodeList elementsByTagName2 = newDocument.getElementsByTagName("characteristic");
                                        int i4 = 0;
                                        while (i4 < elementsByTagName2.getLength()) {
                                            Node item2 = elementsByTagName2.item(i4);
                                            NodeList nodeList3 = elementsByTagName2;
                                            if (item2.getNodeType() == 1) {
                                                Element element4 = (Element) item2;
                                                if (element4.getAttribute("type").equalsIgnoreCase(str8)) {
                                                    String previousString = previousString(key, str8);
                                                    String attribute = ((Element) element4.getParentNode()).getAttribute("type");
                                                    if (attribute.isEmpty() || previousString.isEmpty() || attribute.equalsIgnoreCase(previousString)) {
                                                        if (isListTagName(str8)) {
                                                            String substring3 = key.substring(i - 1, i);
                                                            if (!substring3.isEmpty() && !element4.getAttribute("id").equalsIgnoreCase(substring3)) {
                                                            }
                                                        }
                                                        Element createElement2 = newDocument.createElement("characteristic");
                                                        element4.appendChild(createElement2);
                                                        if (isListTagName(substring) && (indexOf = key.indexOf(47, i2)) > 0) {
                                                            String substring4 = key.substring(i2, indexOf);
                                                            Attr createAttribute2 = newDocument.createAttribute("id");
                                                            createAttribute2.setValue(substring4);
                                                            createElement2.setAttributeNode(createAttribute2);
                                                        }
                                                        Attr createAttribute3 = newDocument.createAttribute("type");
                                                        createAttribute3.setValue(substring);
                                                        createElement2.setAttributeNode(createAttribute3);
                                                    }
                                                }
                                            }
                                            i4++;
                                            elementsByTagName2 = nodeList3;
                                        }
                                    } else {
                                        Element createElement3 = newDocument.createElement("characteristic");
                                        createElement.appendChild(createElement3);
                                        if (isListTagName(substring)) {
                                            String substring5 = key.substring(i2, key.indexOf(47, i2));
                                            Attr createAttribute4 = newDocument.createAttribute("id");
                                            createAttribute4.setValue(substring5);
                                            createElement3.setAttributeNode(createAttribute4);
                                        }
                                        Attr createAttribute5 = newDocument.createAttribute("type");
                                        createAttribute5.setValue(substring);
                                        createElement3.setAttributeNode(createAttribute5);
                                    }
                                }
                                str8 = substring;
                            }
                            str9 = str8;
                            i = indexOf3;
                            str7 = str;
                            next = entry;
                            indexOf3 = key.indexOf(47, i2);
                            it3 = it2;
                        }
                        it = it3;
                        str2 = str7;
                        Map.Entry<String, String> entry2 = next;
                        String substring6 = key.substring(key.lastIndexOf(47) + 1);
                        if (isIndexTag(substring6)) {
                            substring6 = key.substring(i + 1, indexOf3);
                        }
                        String str10 = "value";
                        if (str9.isEmpty()) {
                            Element createElement4 = newDocument.createElement("parm");
                            createElement.appendChild(createElement4);
                            Attr createAttribute6 = newDocument.createAttribute("name");
                            createAttribute6.setValue(substring6);
                            createElement4.setAttributeNode(createAttribute6);
                            Attr createAttribute7 = newDocument.createAttribute("value");
                            createAttribute7.setValue(entry2.getValue());
                            createElement4.setAttributeNode(createAttribute7);
                        } else {
                            NodeList elementsByTagName3 = newDocument.getElementsByTagName("characteristic");
                            int i5 = 0;
                            while (i5 < elementsByTagName3.getLength()) {
                                Node item3 = elementsByTagName3.item(i5);
                                if (item3.getNodeType() == 1) {
                                    Element element5 = (Element) item3;
                                    if (element5.getAttribute(str3).equalsIgnoreCase(str9)) {
                                        String attribute2 = element5.getAttribute("id");
                                        String attribute3 = ((Element) element5.getParentNode()).getAttribute(str3);
                                        nodeList = elementsByTagName3;
                                        String attribute4 = ((Element) element5.getParentNode()).getAttribute("id");
                                        element2 = createElement;
                                        if (attribute3.isEmpty()) {
                                            str5 = str3;
                                            str6 = str2;
                                        } else {
                                            str5 = str3;
                                            str6 = attribute3 + "/";
                                        }
                                        if (!attribute4.isEmpty()) {
                                            str6 = str6 + attribute4 + "/";
                                        }
                                        if (!attribute2.isEmpty()) {
                                            str6 = str6 + str9 + "/" + attribute2;
                                        }
                                        if (str6.isEmpty()) {
                                            str6 = str9 + "/";
                                        }
                                        if (key.contains(str6)) {
                                            String value = entry2.getValue();
                                            Element createElement5 = newDocument.createElement("parm");
                                            element5.appendChild(createElement5);
                                            Attr createAttribute8 = newDocument.createAttribute("name");
                                            createAttribute8.setValue(substring6);
                                            createElement5.setAttributeNode(createAttribute8);
                                            Attr createAttribute9 = newDocument.createAttribute(str10);
                                            str4 = str10;
                                            createAttribute9.setValue(ConfigUtil.decryptConfigParams(substring6, value, this.mWorkflowBase.mMno, z, this.mPhoneId));
                                            createElement5.setAttributeNode(createAttribute9);
                                            i5++;
                                            str3 = str5;
                                            elementsByTagName3 = nodeList;
                                            createElement = element2;
                                            str10 = str4;
                                        } else {
                                            str4 = str10;
                                            i5++;
                                            str3 = str5;
                                            elementsByTagName3 = nodeList;
                                            createElement = element2;
                                            str10 = str4;
                                        }
                                    }
                                }
                                nodeList = elementsByTagName3;
                                str4 = str10;
                                element2 = createElement;
                                str5 = str3;
                                i5++;
                                str3 = str5;
                                elementsByTagName3 = nodeList;
                                createElement = element2;
                                str10 = str4;
                            }
                        }
                        workflowParamHandler = this;
                        element = createElement;
                        z3 = true;
                    }
                    workflowParamHandler2 = workflowParamHandler;
                    it3 = it;
                    str7 = str2;
                    createElement = element;
                }
                WorkflowParamHandler workflowParamHandler3 = workflowParamHandler2;
                str = str7;
                if (z3) {
                    NodeList elementsByTagName4 = newDocument.getElementsByTagName("characteristic");
                    for (int i6 = 0; i6 < elementsByTagName4.getLength(); i6++) {
                        Node item4 = elementsByTagName4.item(i6);
                        if (item4.getNodeType() == 1) {
                            Element element6 = (Element) item4;
                            if (!TextUtils.isEmpty(element6.getAttribute("id"))) {
                                element6.removeAttribute("id");
                            }
                        }
                    }
                    Transformer newTransformer = TransformerFactory.newInstance().newTransformer();
                    newTransformer.setOutputProperty("indent", "yes");
                    newTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", DiagnosisConstants.RCSM_ORST_HTTP);
                    DOMSource dOMSource = new DOMSource(newDocument);
                    File file = new File(workflowParamHandler3.mWorkflowBase.mContext.getFilesDir(), "composedXmlFile");
                    newTransformer.transform(dOMSource, new StreamResult(file));
                    try {
                        randomAccessFile = new RandomAccessFile(file, "rw");
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    try {
                        long length = randomAccessFile.length();
                        if (length != 0) {
                            do {
                                length--;
                                randomAccessFile.seek(length);
                                if (randomAccessFile.readByte() == 10) {
                                    break;
                                }
                            } while (length > 0);
                            randomAccessFile.setLength(length);
                        }
                        randomAccessFile.close();
                        return Files.readAllBytes(file.toPath());
                    } finally {
                    }
                }
            } catch (TransformerException e4) {
                e = e4;
                str = str7;
            }
        } catch (IOException | ParserConfigurationException e5) {
            e = e5;
            str = str7;
        }
        return str.getBytes();
    }

    public static boolean isListTagName(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("application");
        arrayList.add("conref");
        arrayList.add("icsi");
        arrayList.add("icsi_resource_allocation_mode");
        arrayList.add("address");
        arrayList.add(ConfigConstants.ConfigTable.LBO_PCSCF_ADDRESS_TYPE);
        arrayList.add("phonecontext");
        arrayList.add(ConfigConstants.ConfigTable.PUBLIC_USER_IDENTITY);
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((String) it.next()).equalsIgnoreCase(str)) {
                z = true;
            }
        }
        return z;
    }

    public static boolean isIndexTag(String str) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("0");
        arrayList.add("1");
        arrayList.add("2");
        arrayList.add(DiagnosisConstants.RCSM_ORST_REGI);
        arrayList.add(DiagnosisConstants.RCSM_ORST_HTTP);
        arrayList.add(DiagnosisConstants.RCSM_ORST_ITER);
        arrayList.add("6");
        arrayList.add("7");
        arrayList.add("8");
        arrayList.add("9");
        Iterator it = arrayList.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (((String) it.next()).equalsIgnoreCase(str)) {
                z = true;
            }
        }
        return z;
    }

    public static String previousString(String str, String str2) {
        String[] split = str.split("/");
        for (int i = 0; i < split.length; i++) {
            if (split[i].equalsIgnoreCase(str2)) {
                int i2 = i - 1;
                if (isIndexTag(split[i2])) {
                    return split[i - 2];
                }
                return split[i2];
            }
        }
        return "";
    }
}
