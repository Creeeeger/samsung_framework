package com.sec.internal.helper.header;

import android.text.TextUtils;
import com.sec.internal.helper.httpclient.DigestAuth;
import com.sec.internal.ims.core.cmc.CmcConstants;

/* loaded from: classes.dex */
public class AuthorizationHeader extends AuthenticationHeaders {
    private String userName = null;
    private String realm = null;
    private String nonce = null;
    private String algorithm = null;
    private String uri = "/";
    private String qop = null;
    private String opaque = null;
    private String cnonce = null;
    private String nonceCount = null;
    private String response = null;

    public final String getParamValue(String str) {
        return str == null ? "" : str;
    }

    public String getUserName() {
        return this.userName;
    }

    public String getRealm() {
        return this.realm;
    }

    public String getNonce() {
        return this.nonce;
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getQop() {
        return this.qop;
    }

    public String getCnonce() {
        return this.cnonce;
    }

    public void setCnonce(String str) {
        this.cnonce = str;
    }

    public String getNonceCount() {
        return this.nonceCount;
    }

    public String getResponse() {
        return this.response;
    }

    public String toString() {
        return "AuthorizationHeader [username=" + getParamValue(this.userName) + ", realm=" + getParamValue(this.realm) + ", nonce=" + getParamValue(this.nonce) + ", algorithm=" + getParamValue(this.algorithm) + ", uri=" + getParamValue(this.uri) + ", qop=" + getParamValue(this.qop) + ", opaque=" + getParamValue(this.opaque) + ", cnonce=" + getParamValue(this.cnonce) + ", nonceCount=" + getParamValue(this.nonceCount) + ", response=" + getParamValue(this.response) + "]";
    }

    public static String getAuthorizationHeader(DigestAuth digestAuth, WwwAuthenticateHeader wwwAuthenticateHeader) {
        StringBuilder sb = new StringBuilder();
        sb.append(getAuthorizationHeader(digestAuth.getUsername(), digestAuth.getRealm(), digestAuth.getDigestUri(), digestAuth.getNonce(), digestAuth.getResp()));
        sb.append(", algorithm=");
        sb.append(digestAuth.getAlgorithm());
        if (!TextUtils.isEmpty(digestAuth.getQop())) {
            sb.append(", nc=");
            sb.append(digestAuth.getNC());
            sb.append(", qop=");
            sb.append(digestAuth.getQop());
        }
        if (!TextUtils.isEmpty(digestAuth.getCnonce())) {
            sb.append(", cnonce=\"");
            sb.append(digestAuth.getCnonce());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        if (!TextUtils.isEmpty(wwwAuthenticateHeader.getOpaque())) {
            sb.append(", opaque=\"");
            sb.append(wwwAuthenticateHeader.getOpaque());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        return sb.toString();
    }

    public static String getAuthorizationHeader(String str, String str2, String str3, String str4, String str5, WwwAuthenticateHeader wwwAuthenticateHeader) {
        DigestAuth digestAuth = new DigestAuth(str, str2, str3, wwwAuthenticateHeader.getNonce(), str4, str5, wwwAuthenticateHeader.getAlgorithm(), wwwAuthenticateHeader.getQop().split(",")[0]);
        StringBuilder sb = new StringBuilder();
        sb.append(getAuthorizationHeader(digestAuth.getUsername(), digestAuth.getRealm(), digestAuth.getDigestUri(), digestAuth.getNonce(), digestAuth.getResp()));
        if (!TextUtils.isEmpty(digestAuth.getAlgorithm())) {
            sb.append(", algorithm=");
            sb.append(digestAuth.getAlgorithm());
        }
        if (!TextUtils.isEmpty(digestAuth.getQop())) {
            sb.append(", nc=");
            sb.append(digestAuth.getNC());
            sb.append(", qop=");
            sb.append(digestAuth.getQop());
        }
        if (!TextUtils.isEmpty(digestAuth.getCnonce())) {
            sb.append(", cnonce=\"");
            sb.append(digestAuth.getCnonce());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        if (!TextUtils.isEmpty(wwwAuthenticateHeader.getOpaque())) {
            sb.append(", opaque=\"");
            sb.append(wwwAuthenticateHeader.getOpaque());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        return sb.toString();
    }

    public static String getAuthorizationHeader(String str, String str2, String str3, String str4, String str5, String str6, WwwAuthenticateHeader wwwAuthenticateHeader) {
        DigestAuth digestAuth = new DigestAuth(str, str2, str3, wwwAuthenticateHeader.getNonce(), str4, str5, wwwAuthenticateHeader.getAlgorithm(), wwwAuthenticateHeader.getQop().split(",")[0]);
        StringBuilder sb = new StringBuilder();
        sb.append(getAuthorizationHeader(digestAuth.getUsername(), digestAuth.getRealm(), digestAuth.getDigestUri(), digestAuth.getNonce(), digestAuth.getResp()));
        sb.append(", algorithm=");
        sb.append(digestAuth.getAlgorithm());
        sb.append(", auts=\"");
        sb.append(str6);
        sb.append(CmcConstants.E_NUM_STR_QUOTE);
        if (!TextUtils.isEmpty(digestAuth.getQop())) {
            sb.append(", nc=");
            sb.append(digestAuth.getNC());
            sb.append(", qop=");
            sb.append(digestAuth.getQop());
        }
        if (!TextUtils.isEmpty(digestAuth.getCnonce())) {
            sb.append(", cnonce=\"");
            sb.append(digestAuth.getCnonce());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        if (!TextUtils.isEmpty(wwwAuthenticateHeader.getOpaque())) {
            sb.append(", opaque=\"");
            sb.append(wwwAuthenticateHeader.getOpaque());
            sb.append(CmcConstants.E_NUM_STR_QUOTE);
        }
        return sb.toString();
    }

    public static String getAuthorizationHeader(String str, String str2, String str3, String str4, String str5) {
        return "Digest username=\"" + str + "\", realm=\"" + str2 + "\", uri=\"" + str3 + "\", nonce=\"" + str4 + "\", response=\"" + str5 + CmcConstants.E_NUM_STR_QUOTE;
    }
}
