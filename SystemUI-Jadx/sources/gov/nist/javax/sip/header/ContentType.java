package gov.nist.javax.sip.header;

import gov.nist.core.NameValueList;
import javax.sip.header.ContentTypeHeader;

/* compiled from: qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f */
/* loaded from: classes3.dex */
public class ContentType extends ParametersHeader implements ContentTypeHeader {
    private static final long serialVersionUID = 8475682204373446610L;
    protected MediaRange mediaRange;

    public ContentType() {
        super("Content-Type");
    }

    @Override // gov.nist.javax.sip.header.ParametersHeader, gov.nist.core.GenericObject
    public final Object clone() {
        ContentType contentType = (ContentType) super.clone();
        MediaRange mediaRange = this.mediaRange;
        if (mediaRange != null) {
            contentType.mediaRange = (MediaRange) mediaRange.clone();
        }
        return contentType;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final String encodeBody() {
        StringBuffer stringBuffer = new StringBuffer();
        encodeBody(stringBuffer);
        return stringBuffer.toString();
    }

    @Override // gov.nist.javax.sip.header.SIPObject, gov.nist.core.GenericObject
    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        if (obj instanceof ContentTypeHeader) {
            ContentTypeHeader contentTypeHeader = (ContentTypeHeader) obj;
            MediaRange mediaRange = this.mediaRange;
            String str4 = null;
            if (mediaRange == null) {
                str = null;
            } else {
                str = mediaRange.type;
            }
            ContentType contentType = (ContentType) contentTypeHeader;
            MediaRange mediaRange2 = contentType.mediaRange;
            if (mediaRange2 == null) {
                str2 = null;
            } else {
                str2 = mediaRange2.type;
            }
            if (str.equalsIgnoreCase(str2)) {
                MediaRange mediaRange3 = this.mediaRange;
                if (mediaRange3 == null) {
                    str3 = null;
                } else {
                    str3 = mediaRange3.subtype;
                }
                MediaRange mediaRange4 = contentType.mediaRange;
                if (mediaRange4 != null) {
                    str4 = mediaRange4.subtype;
                }
                if (str3.equalsIgnoreCase(str4) && equalParameters(contentType)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final void setContentSubType(String str) {
        if (str != null) {
            if (this.mediaRange == null) {
                this.mediaRange = new MediaRange();
            }
            this.mediaRange.subtype = str;
            return;
        }
        throw new NullPointerException("null arg");
    }

    public final void setContentType(String str) {
        if (str != null) {
            if (this.mediaRange == null) {
                this.mediaRange = new MediaRange();
            }
            this.mediaRange.type = str;
            return;
        }
        throw new NullPointerException("null arg");
    }

    public ContentType(String str, String str2) {
        this();
        if (this.mediaRange == null) {
            this.mediaRange = new MediaRange();
        }
        MediaRange mediaRange = this.mediaRange;
        mediaRange.type = str;
        mediaRange.subtype = str2;
    }

    @Override // gov.nist.javax.sip.header.SIPHeader
    public final void encodeBody(StringBuffer stringBuffer) {
        this.mediaRange.encode(stringBuffer);
        NameValueList nameValueList = this.parameters;
        if ((nameValueList == null || nameValueList.isEmpty()) ? false : true) {
            stringBuffer.append(";");
            this.parameters.encode(stringBuffer);
        }
    }
}
