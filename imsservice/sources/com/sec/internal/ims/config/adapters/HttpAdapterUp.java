package com.sec.internal.ims.config.adapters;

import com.sec.internal.constants.ims.config.ConfigConstants;
import com.sec.internal.helper.SimUtil;
import com.sec.internal.helper.header.AuthenticationHeaders;
import com.sec.internal.ims.config.adapters.HttpAdapter;
import com.sec.internal.interfaces.ims.config.IHttpAdapter;
import com.sec.internal.log.IMSLog;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class HttpAdapterUp extends HttpAdapter {
    protected static final String LOG_TAG = "HttpAdapterUp";

    public HttpAdapterUp(int i) {
        super(i);
        this.mState = new IdleState();
    }

    protected class IdleState extends HttpAdapter.IdleState {
        protected IdleState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.IdleState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean open(String str) {
            HttpAdapterUp httpAdapterUp = HttpAdapterUp.this;
            httpAdapterUp.mUrl = httpAdapterUp.createReqUrlWithMask(new StringBuffer(str), HttpAdapterUp.this.mParams, false);
            HttpAdapterUp httpAdapterUp2 = HttpAdapterUp.this;
            httpAdapterUp2.dumpAutoConfUrl(str, httpAdapterUp2.mUrl, httpAdapterUp2.mParams);
            if (!HttpAdapterUp.this.openUrlConnection()) {
                return false;
            }
            HttpAdapterUp.this.setUrlConnection();
            HttpAdapterUp httpAdapterUp3 = HttpAdapterUp.this;
            httpAdapterUp3.mHttpURLConn = (HttpURLConnection) httpAdapterUp3.mURLConn;
            httpAdapterUp3.mState = httpAdapterUp3.new ReadyState();
            return true;
        }
    }

    protected class ReadyState extends HttpAdapter.ReadyState {
        protected ReadyState() {
            super();
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public boolean close() {
            HttpAdapterUp.this.mHttpURLConn.disconnect();
            HttpAdapterUp httpAdapterUp = HttpAdapterUp.this;
            httpAdapterUp.mState = httpAdapterUp.new IdleState();
            return true;
        }

        @Override // com.sec.internal.ims.config.adapters.HttpAdapter.ReadyState, com.sec.internal.interfaces.ims.config.IHttpAdapter
        public IHttpAdapter.Response request() {
            HttpAdapterUp.this.tryToConnectHttpUrlConnection();
            String stringBuffer = HttpAdapterUp.this.mUrl.toString();
            HttpAdapterUp httpAdapterUp = HttpAdapterUp.this;
            int resStatusCode = httpAdapterUp.getResStatusCode(httpAdapterUp.mHttpURLConn);
            HttpAdapterUp httpAdapterUp2 = HttpAdapterUp.this;
            String resStatusMessage = httpAdapterUp2.getResStatusMessage(httpAdapterUp2.mHttpURLConn);
            HttpAdapterUp httpAdapterUp3 = HttpAdapterUp.this;
            Map<String, List<String>> resHeader = httpAdapterUp3.getResHeader(httpAdapterUp3.mHttpURLConn);
            HttpAdapterUp httpAdapterUp4 = HttpAdapterUp.this;
            return new IHttpAdapter.Response(stringBuffer, resStatusCode, resStatusMessage, resHeader, httpAdapterUp4.getResBody(httpAdapterUp4.mHttpURLConn));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StringBuffer createReqUrlWithMask(StringBuffer stringBuffer, Map<String, String> map, boolean z) {
        if (stringBuffer != null && map != null && map.size() > 0) {
            if (stringBuffer.charAt(stringBuffer.length() - 1) == '/') {
                stringBuffer.deleteCharAt(stringBuffer.length() - 1);
            }
            stringBuffer.append("?");
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (entry.getValue() == null) {
                    stringBuffer.append(key);
                    stringBuffer.append("=&");
                } else {
                    for (String str : entry.getValue().split("\\|\\|")) {
                        try {
                            stringBuffer.append(key);
                            stringBuffer.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
                            String encode = str.contains("%") ? str : URLEncoder.encode(str, "utf-8");
                            if (z) {
                                if (key.equals("IMSI") || key.equals("msisdn") || key.equals(ConfigConstants.PNAME.OTP)) {
                                    if (encode.contains("%")) {
                                        if (encode.length() > 8) {
                                            encode = encode.substring(0, 8) + "xxx";
                                        }
                                    } else if (encode.length() > 5) {
                                        encode = encode.substring(0, 5) + "xxx";
                                    }
                                }
                                encode = "xxx";
                            }
                            stringBuffer.append(encode);
                            stringBuffer.append("&");
                        } catch (UnsupportedEncodingException unused) {
                            IMSLog.i(LOG_TAG, this.mPhoneId, "UnsupportedEncodingException occur. use plain string");
                            stringBuffer.append(str);
                            stringBuffer.append("&");
                        }
                    }
                }
            }
            stringBuffer.deleteCharAt(stringBuffer.length() - 1);
        }
        return stringBuffer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dumpAutoConfUrl(String str, StringBuffer stringBuffer, Map<String, String> map) {
        String str2 = LOG_TAG;
        IMSLog.i(str2, this.mPhoneId, str);
        if (SimUtil.getSimMno(this.mPhoneId).isVodafone() && IMSLog.isShipBuild()) {
            IMSLog.i(str2, this.mPhoneId, createReqUrlWithMask(new StringBuffer(str), map, true).toString());
        } else {
            IMSLog.s(str2, this.mPhoneId, stringBuffer.toString());
        }
    }
}
