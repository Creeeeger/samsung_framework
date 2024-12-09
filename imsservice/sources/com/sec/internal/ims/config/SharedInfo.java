package com.sec.internal.ims.config;

import android.content.Context;
import android.util.Log;
import com.sec.internal.constants.Mno;
import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.helper.httpclient.HttpController;
import com.sec.internal.ims.config.ConfigContract;
import com.sec.internal.ims.core.cmc.CmcConstants;
import com.sec.internal.ims.util.ConfigUtil;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.interfaces.ims.core.ISimManager;
import com.sec.internal.log.IMSLog;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class SharedInfo {
    private final String LOG_TAG;
    private HashMap<String, String> mAKAParams;
    private String mClientPlatform;
    private String mClientVersion;
    private Map<String, List<String>> mHttpHeader;
    private Map<String, String> mHttpParam;
    private String mHttpPort;
    private IHttpAdapter.Response mHttpResponse;
    private String mHttpUrl;
    private String mHttpsPort;
    private int mInternal403ErrRetryCount;
    private int mInternal404ErrRetryCount;
    private int mInternal503ErrRetryCount;
    private int mInternal511ErrRetryCount;
    private int mInternalErrRetryCount;
    private boolean mIsRcsByUser;
    private HashMap<String, String> mOidcParams;
    private String mOtp;
    private Map<String, String> mParsedXml;
    private String mRcsEnabledByUser;
    private String mRcsProfile;
    private String mRcsVersion;
    private ISimManager mSm;
    private int mUnknownErrRetryCount;
    private String mUserImsi;
    private String mUserMethod;
    private String mUserMsisdn;
    private String mXml;

    public SharedInfo(Context context, ISimManager iSimManager, String str, String str2, String str3, String str4, String str5) {
        String simpleName = SharedInfo.class.getSimpleName();
        this.LOG_TAG = simpleName;
        this.mHttpUrl = null;
        this.mHttpHeader = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        this.mHttpParam = new HashMap();
        this.mHttpResponse = null;
        this.mOtp = null;
        this.mUserMsisdn = "";
        this.mUserMethod = "GET";
        this.mXml = null;
        this.mParsedXml = null;
        this.mUserImsi = "";
        this.mRcsProfile = "";
        this.mRcsVersion = "";
        this.mClientPlatform = "";
        this.mClientVersion = "";
        this.mRcsEnabledByUser = "";
        this.mInternalErrRetryCount = 0;
        this.mIsRcsByUser = false;
        this.mInternal403ErrRetryCount = 0;
        this.mInternal404ErrRetryCount = 0;
        this.mInternal503ErrRetryCount = 0;
        this.mInternal511ErrRetryCount = 0;
        this.mUnknownErrRetryCount = 0;
        this.mOidcParams = new HashMap<>();
        this.mAKAParams = new HashMap<>();
        this.mHttpPort = "80";
        this.mHttpsPort = "443";
        this.mSm = iSimManager;
        this.mRcsProfile = str;
        this.mRcsVersion = str2;
        this.mClientPlatform = str3;
        this.mClientVersion = str4;
        this.mRcsEnabledByUser = str5;
        Log.i(simpleName, "rcsProfile: " + str + " rcsVersion: " + str2 + " clientVersion: " + str4 + " rcsEnabledByUser: " + str5);
    }

    public void setHttpClean() {
        this.mHttpHeader = getInitHttpHeaders();
        this.mHttpParam = getInitHttpParams();
    }

    public void setHttpDefault() {
        if (getUrl() != null && getUrl().contains("https://")) {
            Log.i(this.LOG_TAG, "change https -> http");
            setUrl(getUrl().replace("https://", "http://"));
        }
        this.mHttpHeader = getInitHttpHeaders();
        this.mHttpParam = getInitHttpParams();
    }

    public void setHttpCHN() {
        if (getUrl() != null && getUrl().contains("https://")) {
            Log.i(this.LOG_TAG, "change https -> http");
            setUrl(getUrl().replace("https://", "http://"));
        }
        if (getUrl() != null) {
            String[] split = getUrl().replaceFirst("https?://", "").split(":");
            if (split.length > 2) {
                this.mHttpPort = split[1];
                this.mHttpsPort = split[2];
                setUrl(getUrl().replace(":" + split[2], ""));
            }
        }
        if (getUrl() != null && getUrl().contains(":443")) {
            Log.i(this.LOG_TAG, "change port 443 -> 80");
            setUrl(getUrl().replace(":443", ":80"));
        }
        this.mHttpHeader = getCHNInitHttpHeaders();
        this.mHttpParam = getInitHttpParams();
    }

    public void setHttpSPR() {
        if (getUrl() != null && getUrl().contains("https://")) {
            Log.i(this.LOG_TAG, "change https -> http");
            setUrl(getUrl().replace("https://", "http://"));
        }
        if (getUrl() != null && getUrl().contains("http://")) {
            Log.i(this.LOG_TAG, "change http -> enriched header");
            setUrl(getUrl().replace("http://", "http://oap7.sprintpcs.com/http://"));
        }
        this.mHttpHeader = getInitHttpHeaders();
        this.mHttpParam = getInitHttpParams();
    }

    public void resetHttpSPR() {
        if (getUrl() != null && getUrl().contains("https://")) {
            Log.i(this.LOG_TAG, "change https -> http");
            setUrl(getUrl().replace("https://", "http://"));
        }
        if (getUrl() != null && getUrl().contains("http://")) {
            Log.i(this.LOG_TAG, "change enriched header -> http");
            setUrl(getUrl().replace("http://oap7.sprintpcs.com/http://", "http://"));
        }
        this.mHttpHeader = getInitHttpHeaders();
        this.mHttpParam = getInitHttpParams();
    }

    public void setHttpsDefault() {
        if (getUrl() != null && getUrl().contains("http://")) {
            Log.i(this.LOG_TAG, "change http -> https");
            setUrl(getUrl().replace("http://", "https://"));
        }
        this.mHttpHeader = getInitHttpsHeaders();
        this.mHttpParam = getInitHttpsParams();
    }

    public void setHttpsWithPreviousCookies() {
        List<String> list = getHttpHeaders().get(HttpController.HEADER_COOKIE);
        setHttpsDefault();
        if (list != null) {
            addHttpHeader(HttpController.HEADER_COOKIE, list);
        }
    }

    public void setHttpsCHN() {
        if (getUrl() != null) {
            String[] split = getUrl().replaceFirst("https?://", "").split(":");
            if (split.length > 2) {
                this.mHttpPort = split[1];
                this.mHttpsPort = split[2];
                setUrl(getUrl().replace(":" + split[1], ""));
            } else if (split.length == 2) {
                setUrl(getUrl().replace(":" + split[1], ":" + this.mHttpsPort));
            }
        }
        if (getUrl() != null && getUrl().contains("http://")) {
            Log.i(this.LOG_TAG, "change http -> https");
            setUrl(getUrl().replace("http://", "https://"));
        }
        this.mHttpHeader = getCHNInitHttpsHeaders();
        this.mHttpParam = getInitHttpsParams();
    }

    public void setHttpsSPR() {
        if (getUrl() != null && getUrl().contains("http://")) {
            Log.i(this.LOG_TAG, "change http -> https");
            setUrl(getUrl().replace("http://", "https://"));
        }
        if (getUrl() != null && getUrl().contains("https://oap7.sprintpcs.com/https://")) {
            Log.i(this.LOG_TAG, "change enriched header -> https");
            setUrl(getUrl().replace("https://oap7.sprintpcs.com/https://", "https://"));
        }
        this.mHttpHeader = getInitHttpsHeaders();
        this.mHttpParam = getInitHttpsParamsSPR();
    }

    public void changeConfigProxyUriForHttp() {
        if (getUrl() == null || !getUrl().contains("/cookie/")) {
            return;
        }
        Log.i(this.LOG_TAG, "ConfigProxyUri: change cookie -> conf");
        setUrl(getUrl().replace("cookie", "conf"));
    }

    public void setHttpProxyDefault() {
        if (getUrl() != null && getUrl().contains("https://")) {
            Log.i(this.LOG_TAG, "change https -> http");
            setUrl(getUrl().replace("https://", "http://"));
        }
        this.mHttpHeader = getInitHttpsHeaders();
        this.mHttpParam = getInitHttpsParams();
    }

    public String getUrl() {
        return this.mHttpUrl;
    }

    public void setUrl(String str) {
        this.mHttpUrl = str;
    }

    public Map<String, List<String>> getHttpHeaders() {
        return this.mHttpHeader;
    }

    public void addHttpHeader(String str, List<String> list) {
        this.mHttpHeader.put(str, list);
    }

    public Map<String, String> getHttpParams() {
        return this.mHttpParam;
    }

    public void addHttpParam(String str, String str2) {
        this.mHttpParam.put(str, str2);
    }

    public IHttpAdapter.Response getHttpResponse() {
        return this.mHttpResponse;
    }

    public void setHttpResponse(IHttpAdapter.Response response) {
        this.mHttpResponse = response;
    }

    public String getXml() {
        return this.mXml;
    }

    public void setXml(String str) {
        this.mXml = str;
    }

    public Map<String, String> getParsedXml() {
        return this.mParsedXml;
    }

    public void setParsedXml(Map<String, String> map) {
        this.mParsedXml = map;
    }

    public String getOtp() {
        return this.mOtp;
    }

    public void setOtp(String str) {
        this.mOtp = str;
    }

    public String getUserMsisdn() {
        return this.mUserMsisdn;
    }

    public void setUserMsisdn(String str) {
        this.mUserMsisdn = str;
    }

    public String getUserMethod() {
        return this.mUserMethod;
    }

    public void setUserMethod(String str) {
        this.mUserMethod = str;
    }

    public void setUserImsi(String str) {
        this.mUserImsi = str;
        Log.i(this.LOG_TAG, "setUserImsi:" + IMSLog.checker(this.mUserImsi));
    }

    private Map<String, List<String>> getInitHttpHeaders() {
        Locale locale = Locale.getDefault();
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, Arrays.asList(getHost(getUrl())));
        hashMap.put("User-Agent", Arrays.asList(getUserAgent()));
        hashMap.put("Connection", Arrays.asList("Keep-Alive"));
        if (locale != null) {
            hashMap.put("Accept-Language", Arrays.asList(locale.getLanguage().concat(CmcConstants.E_NUM_SLOT_SPLIT).concat(locale.getCountry())));
        }
        hashMap.put(HttpController.HEADER_CACHE_CONTROL, Arrays.asList("max-age=0"));
        return hashMap;
    }

    private Map<String, List<String>> getCHNInitHttpHeaders() {
        Locale locale = Locale.getDefault();
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, Arrays.asList(getHost(getUrl())));
        hashMap.put("User-Agent", Arrays.asList(getUserAgent()));
        hashMap.put("Connection", Arrays.asList("Keep-Alive"));
        if (locale != null) {
            hashMap.put("Accept-Language", Arrays.asList(locale.getLanguage().concat(CmcConstants.E_NUM_SLOT_SPLIT).concat(locale.getCountry())));
        }
        hashMap.put(HttpController.HEADER_CACHE_CONTROL, Arrays.asList("max-age=0"));
        return hashMap;
    }

    private Map<String, String> getInitHttpParams() {
        return new HashMap();
    }

    private Map<String, List<String>> getInitHttpsHeaders() {
        Locale locale = Locale.getDefault();
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, Arrays.asList(getHost(getUrl())));
        hashMap.put("User-Agent", Arrays.asList(getUserAgent()));
        hashMap.put("Connection", Arrays.asList("Keep-Alive"));
        if (locale != null) {
            hashMap.put("Accept-Language", Arrays.asList(locale.getLanguage().concat(CmcConstants.E_NUM_SLOT_SPLIT).concat(locale.getCountry())));
        }
        hashMap.put(HttpController.HEADER_CACHE_CONTROL, Arrays.asList("max-age=0"));
        return hashMap;
    }

    private Map<String, List<String>> getCHNInitHttpsHeaders() {
        Locale locale = Locale.getDefault();
        HashMap hashMap = new HashMap();
        hashMap.put(HttpController.HEADER_HOST, Arrays.asList(getHost(getUrl())));
        hashMap.put("User-Agent", Arrays.asList(getUserAgent()));
        hashMap.put("Connection", Arrays.asList("Keep-Alive"));
        if (locale != null) {
            hashMap.put("Accept-Language", Arrays.asList(locale.getLanguage().concat(CmcConstants.E_NUM_SLOT_SPLIT).concat(locale.getCountry())));
        }
        return hashMap;
    }

    private Map<String, String> getInitHttpsParams() {
        HashMap hashMap = new HashMap();
        hashMap.put("vers", "0");
        hashMap.put("rcs_version", this.mRcsVersion);
        hashMap.put(ConfigConstants.PNAME.RCS_PROFILE, this.mRcsProfile);
        hashMap.put("client_vendor", "SEC");
        hashMap.put("client_version", this.mClientPlatform + this.mClientVersion);
        return hashMap;
    }

    private Map<String, String> getInitHttpsParamsSPR() {
        return new HashMap();
    }

    private String getHost(String str) {
        if (str == null) {
            return "";
        }
        String replaceFirst = str.replaceFirst("https?://", "");
        int indexOf = replaceFirst.indexOf(47);
        return indexOf > 0 ? replaceFirst.substring(0, indexOf) : replaceFirst;
    }

    String getUserAgent() {
        String terminalModel = ConfigContract.BUILD.getTerminalModel();
        String terminalSwVersion = ConfigContract.BUILD.getTerminalSwVersion();
        ISimManager iSimManager = this.mSm;
        if (iSimManager == null) {
            Log.i(this.LOG_TAG, "getUserAgent: ISimManager is null, return");
            return "";
        }
        Mno simMno = iSimManager.getSimMno();
        if (Mno.TMOBILE.equals(simMno) || Mno.SFR.equals(simMno) || Mno.TMOBILE_CZ.equals(simMno)) {
            if (terminalSwVersion.length() > 8) {
                terminalSwVersion = terminalSwVersion.substring(terminalSwVersion.length() - 8, terminalSwVersion.length());
            }
        } else if (terminalSwVersion.length() > 3) {
            terminalSwVersion = terminalSwVersion.substring(terminalSwVersion.length() - 3, terminalSwVersion.length());
        }
        return ConfigUtil.getFormattedUserAgent(simMno, terminalModel, terminalSwVersion, this.mClientVersion);
    }

    public void parseOidcParams(String str) {
        this.mOidcParams.clear();
        if (str != null) {
            String[] split = str.split("\\?")[1].split("&");
            for (int i = 0; i < split.length; i++) {
                this.mOidcParams.put(split[i].split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)[0], split[i].split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)[1]);
            }
        }
    }

    public void parseAkaParams(String str) {
        Log.d(this.LOG_TAG, "AKA (Digest) Params parsing");
        if (str != null) {
            for (String str2 : str.split("\\s+")[1].split(",")) {
                this.mAKAParams.put(str2.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)[0], str2.split(AuthenticationHeaders.HEADER_PRARAM_SPERATOR)[1]);
            }
        }
    }

    public HashMap<String, String> getOidcParams() {
        return this.mOidcParams;
    }

    public HashMap<String, String> getAKAParams() {
        return this.mAKAParams;
    }

    public int getInternalErrRetryCount() {
        return this.mInternalErrRetryCount;
    }

    public void setInternalErrRetryCount(int i) {
        this.mInternalErrRetryCount = i;
    }

    public boolean isRcsByUser() {
        return this.mIsRcsByUser;
    }

    public void setRcsByUser(boolean z) {
        this.mIsRcsByUser = z;
    }

    public int getInternal403ErrRetryCount() {
        return this.mInternal403ErrRetryCount;
    }

    public void setInternal403ErrRetryCount(int i) {
        this.mInternal403ErrRetryCount = i;
    }

    public int getInternal404ErrRetryCount() {
        return this.mInternal404ErrRetryCount;
    }

    public void setInternal404ErrRetryCount(int i) {
        this.mInternal404ErrRetryCount = i;
    }

    public int getInternal503ErrRetryCount() {
        return this.mInternal503ErrRetryCount;
    }

    public void setInternal503ErrRetryCount(int i) {
        this.mInternal503ErrRetryCount = i;
    }

    public int getInternal511ErrRetryCount() {
        return this.mInternal511ErrRetryCount;
    }

    public void setInternal511ErrRetryCount(int i) {
        this.mInternal511ErrRetryCount = i;
    }

    public int getUnknownErrRetryCount() {
        return this.mUnknownErrRetryCount;
    }

    public void setUnknownErrRetryCount(int i) {
        this.mUnknownErrRetryCount = i;
    }
}
