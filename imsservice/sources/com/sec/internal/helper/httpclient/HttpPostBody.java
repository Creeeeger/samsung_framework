package com.sec.internal.helper.httpclient;

import com.sec.internal.helper.header.AuthenticationHeaders;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class HttpPostBody {
    public static final String CONTENT_DISPOSITION_ATTACHMENT = "attachment";
    public static final String CONTENT_DISPOSITION_FORM_DATA = "form-data";
    public static final String CONTENT_DISPOSITION_ICON = "icon";
    public static final String CONTENT_TRANSFER_ENCODING_BASE64 = "base64";
    public static final String CONTENT_TRANSFER_ENCODING_BINARY = "binary";
    public static final String CONTENT_TYPE_APPLICATION_JSON = "application/json";
    public static final String CONTENT_TYPE_DEFAULT = "application/octet-stream";
    public static final String CONTENT_TYPE_MULTIPART = "multipart/";
    public static final String CONTENT_TYPE_MULTIPART_FORMDATA = "multipart/form-data";
    public static final String CONTENT_TYPE_MULTIPART_MIXED = "multipart/mixed";
    public static final String CONTENT_TYPE_MULTIPART_RELATED = "multipart/related";
    public static final String CONTENT_TYPE_X_WWW_FORM_URLENCODED = "application/x-www-form-urlencoded";
    private String mBody;
    private long mBodySize;
    private String mContentDisposition;
    private String mContentId;
    private String mContentTransferEncoding;
    private String mContentType;
    private byte[] mData;
    private File mFile;
    private String mFileIcon;
    private JSONObject mJSONBody;
    private List<HttpPostBody> mMultiparts;

    public HttpPostBody(String str) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mBody = str;
        this.mBodySize = getFieldSize(str);
    }

    public HttpPostBody(JSONObject jSONObject) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mBodySize = 0L;
        this.mJSONBody = jSONObject;
        if (jSONObject != null) {
            this.mBody = jSONObject.toString();
        }
        this.mBodySize = getFieldSize(this.mBody);
    }

    public HttpPostBody(File file) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mFile = file;
        if (file != null) {
            this.mBodySize = file.length();
        }
    }

    public HttpPostBody(byte[] bArr) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mData = bArr;
        if (bArr != null) {
            this.mBodySize = bArr.length;
        }
    }

    public HttpPostBody(List<HttpPostBody> list) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mMultiparts = list;
        if (list != null) {
            Iterator<HttpPostBody> it = list.iterator();
            while (it.hasNext()) {
                this.mBodySize += it.next().getBodySize();
            }
        }
    }

    public HttpPostBody(Map<String, String> map) {
        this.mContentDisposition = null;
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mBody = convertPrams(map);
        this.mBodySize = getFieldSize(r3);
    }

    public HttpPostBody(String str, String str2, String str3) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mBody = str3;
        this.mBodySize = fieldSize2 + getFieldSize(str3);
    }

    public HttpPostBody(String str, String str2, String str3, String str4) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mBody = str3;
        long fieldSize3 = fieldSize2 + getFieldSize(str3);
        this.mBodySize = fieldSize3;
        this.mContentId = str4;
        this.mBodySize = fieldSize3 + getFieldSize(str4);
    }

    public HttpPostBody(String str, String str2, byte[] bArr) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mData = bArr;
        if (bArr != null) {
            this.mBodySize = fieldSize2 + bArr.length;
        }
    }

    public HttpPostBody(String str, String str2, byte[] bArr, String str3) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mData = bArr;
        if (bArr != null) {
            this.mBodySize = fieldSize2 + bArr.length;
        }
        this.mContentId = str3;
        this.mBodySize += getFieldSize(str3);
    }

    public HttpPostBody(String str, String str2, byte[] bArr, String str3, String str4) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mData = bArr;
        if (bArr != null) {
            this.mBodySize = fieldSize2 + bArr.length;
        }
        this.mFileIcon = str3;
        long fieldSize3 = this.mBodySize + getFieldSize(str3);
        this.mBodySize = fieldSize3;
        this.mContentId = str4;
        this.mBodySize = fieldSize3 + getFieldSize(str4);
    }

    public HttpPostBody(String str, String str2, File file) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        long fieldSize2 = fieldSize + getFieldSize(str2);
        this.mBodySize = fieldSize2;
        this.mFile = file;
        if (file != null) {
            this.mBodySize = fieldSize2 + file.length();
        }
    }

    public HttpPostBody(String str, String str2, List<HttpPostBody> list) {
        this.mContentType = null;
        this.mContentTransferEncoding = null;
        this.mFileIcon = null;
        this.mContentId = null;
        this.mBody = null;
        this.mFile = null;
        this.mData = null;
        this.mMultiparts = null;
        this.mJSONBody = null;
        this.mBodySize = 0L;
        this.mContentDisposition = str;
        long fieldSize = getFieldSize(str);
        this.mBodySize = fieldSize;
        this.mContentType = str2;
        this.mBodySize = fieldSize + getFieldSize(str2);
        this.mMultiparts = list;
        Iterator<HttpPostBody> it = list.iterator();
        while (it.hasNext()) {
            this.mBodySize += it.next().getBodySize();
        }
    }

    public long getBodySize() {
        return this.mBodySize;
    }

    public String getContentDisposition() {
        return this.mContentDisposition;
    }

    public String getContentTransferEncoding() {
        return this.mContentTransferEncoding;
    }

    public String getContentType() {
        return this.mContentType;
    }

    public String getFileIcon() {
        return this.mFileIcon;
    }

    public String getContentId() {
        return this.mContentId;
    }

    public String getBody() {
        return this.mBody;
    }

    public JSONObject getJSONBody() {
        return this.mJSONBody;
    }

    public File getFile() {
        return this.mFile;
    }

    public byte[] getData() {
        return this.mData;
    }

    public List<HttpPostBody> getMultiparts() {
        return this.mMultiparts;
    }

    public void setContentTransferEncoding(String str) {
        this.mContentTransferEncoding = str;
    }

    private String convertPrams(Map<String, String> map) {
        try {
            return convertPrams(map, Charset.defaultCharset());
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    private String convertPrams(Map<String, String> map, Charset charset) throws UnsupportedEncodingException {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (z) {
                z = false;
            } else {
                stringBuffer.append("&");
            }
            stringBuffer.append(URLEncoder.encode(entry.getKey(), charset.name()));
            stringBuffer.append(AuthenticationHeaders.HEADER_PRARAM_SPERATOR);
            stringBuffer.append(URLEncoder.encode(entry.getValue(), charset.name()));
        }
        return stringBuffer.toString();
    }

    public String toString() {
        try {
            return toString(0);
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
            return "";
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.String] */
    private String toString(int i) {
        String makeIndent = makeIndent(i);
        String str = makeIndent + "    ";
        StringBuffer stringBuffer = new StringBuffer();
        List<HttpPostBody> list = this.mMultiparts;
        if (list == null) {
            stringBuffer.append("null");
        } else {
            Iterator<HttpPostBody> it = list.iterator();
            while (it.hasNext()) {
                stringBuffer.append(it.next().toString(i + 1));
            }
        }
        if (this.mBody != null) {
            return "\r\n" + makeIndent + "HttpPostBody(depth" + i + ")[\r\n" + str + "mContentDisposition: " + this.mContentDisposition + "\r\n" + str + "mContentTransferEncoding: " + this.mContentTransferEncoding + "\r\n" + str + "mContentType: " + this.mContentType + "\r\n" + str + "mBody: " + this.mBody + "\r\n" + str + "mFile: " + this.mFile + "\r\n" + str + "mMultiparts: " + ((Object) stringBuffer) + "\r\n" + makeIndent + "]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("\r\n");
        sb.append(makeIndent);
        sb.append("HttpPostBody(depth");
        sb.append(i);
        sb.append(")[\r\n");
        sb.append(str);
        sb.append("mContentDisposition: ");
        sb.append(this.mContentDisposition);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mContentType: ");
        sb.append(this.mContentType);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mFileIcon: ");
        sb.append(this.mFileIcon);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mContentId: ");
        sb.append(this.mContentId);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mContentTransferEncoding: ");
        sb.append(this.mContentTransferEncoding);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mData: length is ");
        byte[] bArr = this.mData;
        sb.append(bArr != null ? bArr.length : 0);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mData: ");
        byte[] bArr2 = this.mData;
        if (bArr2 != null && bArr2.length < 8192) {
            bArr2 = new String(bArr2);
        }
        sb.append(bArr2);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mFile: ");
        sb.append(this.mFile);
        sb.append("\r\n");
        sb.append(str);
        sb.append("mMultiparts: ");
        sb.append((Object) stringBuffer);
        sb.append("\r\n");
        sb.append(makeIndent);
        sb.append("]");
        return sb.toString();
    }

    private String makeIndent(int i) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i2 = 0; i2 < i * 2; i2++) {
            stringBuffer.append("    ");
        }
        return stringBuffer.toString();
    }

    private int getFieldSize(String str) {
        if (str != null) {
            return str.length();
        }
        return 0;
    }
}
